//
// Created by nfiege on 9/26/22.
//

#include "cmm.h"
#include "adder_graph.h"
#include <iostream>
#include <stdexcept>
#include <cmath>
#include <chrono>
#include <fstream>
#include <algorithm>
#include <numeric>
#include <sstream>

#define ADD_OPT_CLAUSES 1 // try out an "optimized" set of clauses for half/full adders => nfiege: it does not matter at all which one is used
#define RECONF_CONST 0	  // nfiege: placeholder until I figure out how to handle reconfigurability with bit-level optimization
#define OLD_ADDER_GRAPH_STR_FORMAT 0
#define DEACTIVATE_CONSTRAINT return
#define TRIVIAL_VECTOR_MAPPING 420+69+1337

cmm::cmm(const std::vector<std::vector<std::vector<int>>> &C, int timeout, verbosity_mode verbosity, int threads,
		 bool allow_negative_numbers, bool write_cnf, int fundamental_fractional_bits)
	: C(C), timeout(timeout), verbosity(verbosity), threads(threads), write_cnf(write_cnf), fundamental_fractional_bits(fundamental_fractional_bits)
{
	this->calc_twos_complement = allow_negative_numbers;
	// make it even and count shift
	for (size_t r = 0; r < this->c_num_configs(); r++)
	{
		for (auto &v : this->C[r])
		{
			// ignore 0 vector for non-reconfigurable circuits
			if (this->c_num_configs() < 2 && std::all_of(v.begin(), v.end(), [](int i)
							{ return i == 0; }))
				continue;
			auto original_vector = v;
			int shifted_bits = 0;
			// right shift non-zero vectors until odd
			while (
				std::any_of(v.begin(), v.end(), [](int i) { return i != 0; }) 
				and 
				std::all_of(v.begin(), v.end(), [](int i) { return ((i & 1) == 0); }))
			{
				for (auto &c : v)
				{
					if (c == 0)
						continue;
					c = c / 2; // do not use shift operation because it is not uniquely defined for negative numbers
				}
				shifted_bits++;
			}
			// store "requested vs. actual" info
			//this->requested_vectors[{r, original_vector}] = {v, shifted_bits};
			this->requested_vectors.emplace_back(std::make_pair(r, original_vector), std::make_pair(v, shifted_bits));
		}
	}

	// check if C and -C are requested
	std::map<std::pair<int, std::vector<int>>, bool> both_coeff_versions_requested;
	for (size_t r = 0; r < this->c_num_configs(); r++)
	{
		for (auto &it1 : this->C[r])
		{
			auto vec_1 = it1;
			both_coeff_versions_requested[{r, vec_1}] = false;
			for (auto &it2 : this->C[r])
			{
				auto vec_2 = it2;
				bool are_neg = true;
				for (size_t i = 0; i < vec_1.size(); i++)
				{
					auto eq = vec_1[i] == -vec_2[i];
					are_neg = eq and are_neg;
				}
				if (are_neg)
				{
					both_coeff_versions_requested[{r, vec_1}] = true;
				}
			}
		}
	}
	// set word sizes & track unique constants
	this->word_size = 1;
	std::map<int, std::vector<std::vector<int>>> non_one_unique_vectors;
	for (size_t r = 0; r < this->c_num_configs(); r++)
	{
		for (auto &v : this->C[r])
		{
			// nfiege: for pipelining we cannot ignore unit vectors (or 1's in the MCM case)
			// nfiege: for reconfiguration we cannot even ignore all-zero vectors (or 0's in the MCM case)
			// sort them out later, i.e., before solving, if pipelining/reconfiguration is not used
			non_one_unique_vectors[r].emplace_back(v);
			// calculate ceiling over all values to compute the internal word size
			for (auto &c : v)
			{
				auto w = this->ceil_log2(std::abs(c)) + 1;
				if (w > this->word_size)
					this->word_size = w;
			}
		}
	}

	// handle fractional bits in fundamentals
	this->word_size += this->fundamental_fractional_bits;

	this->max_shift = std::max(this->word_size - 1, 1); // a shift smaller than 1 does not make sense
	if (this->calc_twos_complement)
	{
		// account for sign bit
		this->word_size++;
	}

	this->shift_word_size = std::max(this->ceil_log2(this->max_shift + 1), 1);
	// set constants matrix
	auto num_configs = this->c_num_configs();
	this->C.clear();
	this->C.resize(num_configs);
	for (size_t r = 0; r < this->c_num_configs(); r++)
	{
		for (auto &v : non_one_unique_vectors[r])
		{
			bool already_in_container = false;
			for (auto &c_it : this->C[r])
			{
				bool is_equal = true;
				for (size_t i = 0; i < c_it.size(); i++)
				{
					if (c_it.at(i) != v.at(i))
						is_equal = false;
				}
				if (is_equal)
					already_in_container = true;
			}
			if (!already_in_container)
				this->C[r].emplace_back(v);
			if (both_coeff_versions_requested[{r, v}])
			{
				std::vector<int> v2;
				for (auto &it : v)
				{
					v2.emplace_back(-it);
				}
				already_in_container = false;
				for (auto &c_it : this->C[r])
				{
					bool is_equal = true;
					for (size_t i = 0; i < c_it.size(); i++)
					{
						if (c_it.at(i) != v2.at(i))
							is_equal = false;
					}
					if (is_equal)
						already_in_container = true;
				}
				if (!already_in_container)
					this->C[r].emplace_back(v2);
			}
		}
	}
}

int cmm::c_row_size()
{
	int row_size = static_cast<int>(this->C[0][0].size());
	for (int r = 1; r < this->c_num_configs(); r++)
	{
		if (row_size != static_cast<int>(this->C[r][0].size()))
		{
			throw std::runtime_error("Invalid reconfigurable constant multiplication instance provided -> row sizes don't match");
		}
	}
	return row_size;
}

int cmm::c_num_output_ports(int r) {
	if (r < 0) {
		// return maximum number of output ports over all configurations
		std::map<int, int> num_outputs;
		for (int i = 0; i < this->c_num_configs(); i++) {
			num_outputs[i] = this->c_num_output_ports(i);
		}
		int max_num_outputs = 0;
		for (auto &it : num_outputs) {
			max_num_outputs = std::max(max_num_outputs, it.second);
		}
		return max_num_outputs;
	}
	// return number of output ports for configuration r
	if (r >= this->c_num_configs()) {
		throw std::runtime_error("Invalid configuration index requested for c_num_output_ports()");
	}
	int num_outputs = 0;
	for (auto &it : this->requested_vectors) {
		if (it.first.first != r) {
			continue;
		}
		num_outputs++;
	}
	return num_outputs;
}

std::string cmm::get_matrix_as_pretty_string(const std::vector<std::vector<std::vector<int>>> &C)
{
	// do we have more than one configuration?
	bool is_reconf = C.size() > 1;
	// number of outputs might differ between configurations
	bool has_multiple_outputs = false;
	for (auto &c : C) {
		if (c.size() > 1) {
			has_multiple_outputs = true;
		}
	}
	// number of inputs should be the same for all configurations
	bool has_multiple_inputs = C[0][0].size() > 1;
	// let's go
	std::string reconf_str = is_reconf ? "Reconfigurable " : "";
	std::string const_mul_type_str = "";
	if (!has_multiple_inputs and !has_multiple_outputs)
	{
		const_mul_type_str = "SCM ";
	}
	else if (!has_multiple_inputs and has_multiple_outputs)
	{
		const_mul_type_str = "MCM ";
	}
	else if (has_multiple_inputs and !has_multiple_outputs)
	{
		const_mul_type_str = "SOP ";
	}
	else
	{
		const_mul_type_str = "CMM ";
	}
	std::stringstream pretty_string;
	pretty_string << reconf_str << const_mul_type_str << "with coefficient(s)" << std::endl;
	for (size_t r = 0; r < C.size(); r++)
	{
		if (C.size() > 1)
		{
			pretty_string << "-> Configuration #" << r << ":" << std::endl;
		}
		for (auto &v : C[r])
		{
			pretty_string << "   <";
			for (auto &c : v)
			{
				pretty_string << " " << c;
			}
			pretty_string << " >" << std::endl;
		}
	}
	return pretty_string.str();
}

void cmm::optimization_loop(formulation_mode mode)
{
	if (this->verbosity == verbosity_mode::debug_mode) {
		std::cout << "  Starting optimization loop (mode = " << mode << ")" << std::endl;
	}
	auto start_time = std::chrono::steady_clock::now();
	if (this->verbosity == verbosity_mode::debug_mode) {
		std::cout << "  Resetting backend now" << std::endl;
	}
	this->reset_backend(mode);
	if (this->verbosity == verbosity_mode::debug_mode) {
		std::cout << "  Constructing problem for " << this->num_adders << " adders";
		std::cout << (this->min_reconf_mux_sharing != RECONF_SHARING_UNLIMITED ? " with min " + std::to_string(this->min_reconf_mux_sharing) + (this->upper_bound_max_sharing_value>=0?" (of " + std::to_string(this->upper_bound_max_sharing_value) + ")":"") + " shared reconfiguration MUX ports" : "");
		std::cout << (this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED ? " and max " + std::to_string(this->max_reconf_mux_registers) + (this->upper_bound_reconf_mux_reg_sum>=0?" (of " + std::to_string(this->upper_bound_reconf_mux_reg_sum) + ")":"") + " MUX registers" : "");
		std::cout << (this->max_full_adders != FULL_ADDERS_UNLIMITED ? " and max " + std::to_string(this->max_full_adders) + " full adders" : "") << std::endl;
	}
	this->construct_problem(mode);
	if (this->verbosity == verbosity_mode::debug_mode) {
		std::cout << "  Start solving with " << this->variable_counter << " variables and " << this->constraint_counter
				  << " constraints" << std::endl;
	}
	auto [a, b] = this->check();
	auto elapsed_time =
		std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now() - start_time).count() /
		1000.0;
	this->remaining_timeout -= elapsed_time;
	this->found_solution = a;
	this->ran_into_timeout = b;
	if (this->found_solution)
	{
		if (this->verbosity != verbosity_mode::quiet_mode) {
			std::cout << "  Found solution for #adders = " << this->num_adders;
		    std::cout << (this->min_reconf_mux_sharing != RECONF_SHARING_UNLIMITED ? " with min " + std::to_string(this->min_reconf_mux_sharing) + (this->upper_bound_max_sharing_value>=0?" (of " + std::to_string(this->upper_bound_max_sharing_value) + ")":"") + " shared reconfiguration MUX ports" : "");
			std::cout << (this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED ? " and max " + std::to_string(this->max_reconf_mux_registers) + (this->upper_bound_reconf_mux_reg_sum>=0?" (of " + std::to_string(this->upper_bound_reconf_mux_reg_sum) + ")":"") + " MUX registers" : "");
			std::cout << (this->max_full_adders != FULL_ADDERS_UNLIMITED ? " and max. " + std::to_string(this->max_full_adders) + " full adders" : "");
			std::cout << " after " << elapsed_time << " seconds 8-)" << std::endl;
		}
		this->get_solution_from_backend();
		if (this->solution_is_valid())
		{
			if (this->verbosity != verbosity_mode::quiet_mode) {
				std::cout << "Solution is verified :-)" << std::endl;
			}
		}
		else
		{
			std::cout << "The following solution is invalid:" << std::endl;
			this->print_solution();
			throw std::runtime_error("Solution is invalid (found bug) :-(");
		}
	}
	else if (this->ran_into_timeout)
	{
		if (this->verbosity != verbosity_mode::quiet_mode) {
			std::cout << "  Ran into timeout for #adders = " << this->num_adders;
			std::cout << (this->min_reconf_mux_sharing != RECONF_SHARING_UNLIMITED ? " with min " + std::to_string(this->min_reconf_mux_sharing) + (this->upper_bound_max_sharing_value>=0?" (of " + std::to_string(this->upper_bound_max_sharing_value) + ")":"") + " shared reconfiguration MUX ports" : "");
			std::cout << (this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED ? " and max " + std::to_string(this->max_reconf_mux_registers) + (this->upper_bound_reconf_mux_reg_sum>=0?" (of " + std::to_string(this->upper_bound_reconf_mux_reg_sum) + ")":"") + " MUX registers" : "");
			std::cout << (this->max_full_adders != FULL_ADDERS_UNLIMITED ? " and max. " + std::to_string(this->max_full_adders) + " full adders" : "");
			std::cout << " after " << elapsed_time << " seconds :-(" << std::endl;
		}
	}
	else
	{
		if (this->verbosity != verbosity_mode::quiet_mode) {
			std::cout << "  Problem for #adders = " << this->num_adders;
		    std::cout << (this->min_reconf_mux_sharing != RECONF_SHARING_UNLIMITED ? " with min " + std::to_string(this->min_reconf_mux_sharing) + (this->upper_bound_max_sharing_value>=0?" (of " + std::to_string(this->upper_bound_max_sharing_value) + ")":"") + " shared reconfiguration MUX ports" : "");
			std::cout << (this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED ? " and max " + std::to_string(this->max_reconf_mux_registers) + (this->upper_bound_reconf_mux_reg_sum>=0?" (of " + std::to_string(this->upper_bound_reconf_mux_reg_sum) + ")":"") + " MUX registers" : "");
			std::cout << (this->max_full_adders != FULL_ADDERS_UNLIMITED ? " and max. " + std::to_string(this->max_full_adders) + " full adders" : "");
			std::cout << " is proven to be infeasible after " << elapsed_time << " seconds... ";
			std::cout << (this->max_full_adders != FULL_ADDERS_UNLIMITED or this->min_reconf_mux_sharing != RECONF_SHARING_UNLIMITED or this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED ? "" : "keep trying :-)") << std::endl;
		}
	}
}

void cmm::solve()
{
	this->preprocess_reconf();
	// preprocessing for non-pipelining settings
	this->preprocess_constants();
	// preprocessing for adder depth minimization
	this->compute_opt_adder_depth_value();
	// actually solve
	this->actually_solve();
}

void cmm::reset_backend(formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	this->constraint_counter = 0;
	this->variable_counter = 0;
	this->cnf_clauses.str("");
	this->const_one_bit = -1;
	this->const_zero_bit = -1;
	for (auto &clause : this->already_enumerated_solutions_cache)
	{
		this->create_arbitrary_clause(clause);
	}
}

void cmm::construct_problem(formulation_mode mode)
{
	// compute stage word size if needed
	if (this->force_min_adder_depth or this->pipelining_enabled)
	{
		// allocate enough bits to represent the worst case
		// i.e., all adders connected in a chain
		auto max_depth_increase_per_adder = this->model_reconfiguration() ? 2 : 1;
		this->adder_depth_word_size = this->ceil_log2(max_depth_increase_per_adder * this->num_adders + 1);
	}
	if (mode == formulation_mode::reset_all or !this->supports_incremental_solving())
	{
		// only construct new variables in non-incremental mode
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "    creating variables now" << std::endl;
		this->create_variables();
	}
	if (this->verbosity == verbosity_mode::debug_mode)
		std::cout << "    creating constraints now" << std::endl;
	this->create_constraints(mode);
	if (this->write_cnf)
	{
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "    creating cnf file now" << std::endl;
		std::stringstream filename;
		for (int r = 0; r < this->c_num_configs(); r++)
		{
			if (r != 0)
				filename << "-";
			for (int i = 0; i < this->c_column_size(r); i++)
			{
				if (i != 0)
					filename << "_";
				for (int j = 0; j < this->c_row_size(); j++)
				{
					if (j != 0)
						filename << "_col_";
					filename << this->C[r][i][j];
				}
			}
		}
		if (this->max_full_adders != FULL_ADDERS_UNLIMITED)
		{
			filename << "-" << this->num_adders << "-" << this->max_full_adders << ".cnf";
		}
		else
		{
			filename << "-" << this->num_adders << ".cnf";
		}
		this->create_cnf_file(filename.str());
	}
}

void cmm::create_variables()
{
	if (this->verbosity == verbosity_mode::debug_mode)
		std::cout << "      clearing variable containers" << std::endl;
	this->clear_variable_containers();
	if (this->verbosity == verbosity_mode::debug_mode)
		std::cout << "      creating input node variables" << std::endl;
	this->create_input_node_variables();
	this->create_input_node_depth_variables();
	if (this->model_reconfiguration()) {
		// need some additional variables for tracking multiplexer costs
		for (int i = 0; i < this->c_num_output_ports(); i++) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "      creating variables for output " << i << std::endl;
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_mcm_output_variables" << std::endl;
			this->create_mcm_output_variables(i);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_output_tracking_variables" << std::endl;
			this->create_output_tracking_variables(i);
		}
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "      create_reconf_output_select_variables" << std::endl;
		this->create_reconf_output_select_variables();
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "      create_reconf_output_shift_variables" << std::endl;
		this->create_reconf_output_shift_variables();
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "      create_reconf_output_negate_variables" << std::endl;
		this->create_reconf_output_negate_variables();
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "      create_reconf_output_sharing_variables" << std::endl;
		this->create_reconf_output_sharing_variables();
		if (this->force_min_adder_depth or this->pipelining_enabled or this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "      create_need_output_mux_variables" << std::endl;
			this->create_need_output_mux_variables();
		}
		if (this->force_min_adder_depth or this->pipelining_enabled) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "      create_output_depth_variables" << std::endl;
			this->create_output_depth_variables();
		}
	}
	for (int i = this->c_row_size(); i < (this->num_adders + this->c_row_size()); i++)
	{
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "      creating variables for node " << i << std::endl;
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_input_select_mux_variables" << std::endl;
		this->create_input_select_mux_variables(i);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_input_select_selection_variables" << std::endl;
		this->create_input_select_selection_variables(i);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_input_shift_value_variables" << std::endl;
		this->create_input_shift_value_variables(i);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_shift_internal_variables" << std::endl;
		this->create_shift_internal_variables(i);
		if (this->model_reconfiguration())
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_other_input_shift_value_variables" << std::endl;
			this->create_other_input_shift_value_variables(i);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_other_shift_internal_variables" << std::endl;
			this->create_other_shift_internal_variables(i);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_reconf_sharing_variables" << std::endl;
			this->create_reconf_sharing_variables(i);
			if (this->num_bypassed_adders > 0) {
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_bypassed_adder_variables" << std::endl;
				this->create_bypassed_adder_variables(i);
			}
			if (this->pipelining_enabled or this->force_min_adder_depth or this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED) {
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_need_adder_mux_variables" << std::endl;
				this->create_need_adder_mux_variables(i);
			}
		}
		else
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_input_negate_select_variable" << std::endl;
			this->create_input_negate_select_variable(i);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_negate_select_output_variables" << std::endl;
			this->create_negate_select_output_variables(i);
		}
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_input_negate_value_variable" << std::endl;
		this->create_input_negate_value_variable(i);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_xor_output_variables" << std::endl;
		this->create_xor_output_variables(i);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_adder_internal_variables" << std::endl;
		this->create_adder_internal_variables(i);
		if (this->enable_node_output_shift)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_post_adder_input_shift_value_variables" << std::endl;
			this->create_post_adder_input_shift_value_variables(i);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_post_adder_shift_variables" << std::endl;
			this->create_post_adder_shift_variables(i);
			if (this->normalize_adder_graph)
			{
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_normalize_adder_graph_variables" << std::endl;
				this->create_normalize_adder_graph_variables(i);
			}
		}
		if (this->force_min_adder_depth or this->pipelining_enabled)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_post_adder_shift_variables" << std::endl;
			this->create_adder_depth_variables(i);
		}
		if (!this->model_reconfiguration() and (this->pipelining_enabled or this->c_row_size() > 1))
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_output_tracking_variables" << std::endl;
			this->create_output_tracking_variables(i);
		}
		if (this->pipelining_enabled)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_pipelining_variables" << std::endl;
			this->create_pipelining_variables(i);
		}
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_output_value_variables" << std::endl;
		this->create_output_value_variables(i);
		if (!this->model_reconfiguration()) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_mcm_output_variables" << std::endl;
			this->create_mcm_output_variables(i);
		}
		// full adder variables are constructed "on the fly" and put into their containers
	}
	if (this->pipelining_enabled and this->force_output_stages_equal)
	{
		this->create_output_stage_eq_variables();
	}
}

void cmm::create_constraints(formulation_mode mode)
{
	if (this->verbosity == verbosity_mode::debug_mode)
		std::cout << "      create_input_output_constraints" << std::endl;
	this->create_input_output_constraints(mode);
	for (int i = this->c_row_size(); i < (this->num_adders + this->c_row_size()); i++)
	{
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "      creating constraints for node " << i << std::endl;
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_input_select_constraints" << std::endl;
		this->create_input_select_constraints(i, mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_input_select_limitation_constraints" << std::endl;
		this->create_input_select_limitation_constraints(i, mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_shift_limitation_constraints" << std::endl;
		this->create_shift_limitation_constraints(i, mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_shift_constraints" << std::endl;
		this->create_shift_constraints(i, mode);
		if (this->model_reconfiguration())
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_other_shift_limitation_constraints" << std::endl;
			this->create_other_shift_limitation_constraints(i, mode);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_other_shift_constraints" << std::endl;
			this->create_other_shift_constraints(i, mode);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_reconf_sharing_constraints" << std::endl;
			this->create_reconf_sharing_constraints(i, mode);
			if (this->num_bypassed_adders > 0) {
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_bypassed_adder_constraints" << std::endl;
				this->create_bypassed_adder_constraints(i, mode);
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_bypassed_right_mux_constraints" << std::endl;
				this->create_bypassed_right_mux_constraints(i, mode);
			}
		}
		else
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_negate_select_constraints" << std::endl;
			this->create_negate_select_constraints(i, mode);
		}
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_xor_constraints" << std::endl;
		this->create_xor_constraints(i, mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_adder_constraints" << std::endl;
		this->create_adder_constraints(i, mode);
		if (this->c_num_configs() < 2) {
			// for reconfigurable constant multipliers, the user might have requested an all-zero vector...
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_odd_fundamentals_constraints" << std::endl;
			this->create_odd_fundamentals_constraints(i, mode);
		}
		if (this->enable_node_output_shift)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_post_adder_shift_limitation_constraints" << std::endl;
			this->create_post_adder_shift_limitation_constraints(i, mode);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_post_adder_shift_constraints" << std::endl;
			this->create_post_adder_shift_constraints(i, mode);
			if (this->normalize_adder_graph)
			{
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_normalize_adder_constraints" << std::endl;
				this->create_normalize_adder_constraints(i, mode);
			}
		}
		if (this->max_full_adders != FULL_ADDERS_UNLIMITED)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_full_adder_coeff_word_size_constraints" << std::endl;
			this->create_full_adder_coeff_word_size_constraints(i, mode);
			if (!this->pipelining_enabled)
			{
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_full_adder_msb_constraints" << std::endl;
				this->create_full_adder_msb_constraints(i, mode);
			}
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_full_adder_coeff_word_size_sum_constraints" << std::endl;
			this->create_full_adder_coeff_word_size_sum_constraints(i, mode);
			if (!this->pipelining_enabled)
			{
				// cannot cut bits on LSB side for pipelining -> shift gain = 0 and can be ignored
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_full_adder_shift_gain_constraints" << std::endl;
				this->create_full_adder_shift_gain_constraints(i, mode);
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_full_adder_shift_sum_constraints" << std::endl;
				this->create_full_adder_shift_sum_constraints(i, mode);
			}
		}
		if (this->model_reconfiguration() and (this->force_min_adder_depth or this->pipelining_enabled or this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED)) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_adder_needs_mux_constraints" << std::endl;
			this->create_adder_needs_mux_constraints(i, mode);
		}
		if (this->force_min_adder_depth or this->pipelining_enabled)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_adder_depth_computation_select_constraints" << std::endl;
			this->create_adder_depth_computation_select_constraints(i, mode);
			if (this->model_reconfiguration()) {
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_adder_depth_mux_increase_constraints" << std::endl;
				this->create_adder_depth_mux_increase_constraints(i, mode);
			}
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_adder_depth_computation_max_constraints" << std::endl;
			this->create_adder_depth_computation_max_constraints(i, mode);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_adder_depth_computation_add_constraints" << std::endl;
			this->create_adder_depth_computation_add_constraints(i, mode);
		}
		if (this->force_min_adder_depth)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_adder_depth_computation_limit_constraints" << std::endl;
			this->create_adder_depth_computation_limit_constraints(i, mode);
		}
		if (this->pipelining_enabled)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_pipelining_input_stage_equality_constraints" << std::endl;
			this->create_pipelining_input_stage_equality_constraints(i, mode);
			if (this->force_output_stages_equal and !this->model_reconfiguration())
			{
				if (this->verbosity == verbosity_mode::debug_mode)
					std::cout << "        create_pipelining_output_stage_equality_at_adders_constraints" << std::endl;
				this->create_pipelining_output_stage_equality_at_adders_constraints(i, mode);
			}
		}
	}
	if (this->max_full_adders != FULL_ADDERS_UNLIMITED)
	{
		if (!this->pipelining_enabled)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_full_adder_msb_sum_constraints" << std::endl;
			this->create_full_adder_msb_sum_constraints(mode);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_full_adder_add_subtract_inputs_constraints" << std::endl;
			this->create_full_adder_add_subtract_inputs_constraints(mode);
		}
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_full_adder_cpa_constraints" << std::endl;
		this->create_full_adder_cpa_constraints(mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_full_adder_result_constraints for #FAs <= " << this->max_full_adders << std::endl;
		this->create_full_adder_result_constraints();
	}
	if (this->model_reconfiguration()) {
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_reconf_sharing_summation_constraints" << std::endl;
		this->create_reconf_sharing_summation_constraints(mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_reconf_sharing_overlap_constraints" << std::endl;
		this->create_reconf_sharing_overlap_constraints(mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_reconf_output_selection_constraints" << std::endl;
		this->create_reconf_output_selection_constraints(mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_reconf_output_shift_constraints" << std::endl;
		this->create_reconf_output_shift_constraints(mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_reconf_output_negation_constraints" << std::endl;
		this->create_reconf_output_negation_constraints(mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_reconf_output_identical_inversion_constraints" << std::endl;
		this->create_reconf_output_identical_inversion_constraints(mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_reconf_output_sharing_constraints" << std::endl;
		this->create_reconf_output_sharing_constraints(mode);
		if (this->verbosity == verbosity_mode::debug_mode)
			std::cout << "        create_reconf_sharing_limitation_constraints for #sharing >= " << this->min_reconf_mux_sharing << std::endl;
		this->create_reconf_sharing_limitation_constraints(mode);
		if (this->num_bypassed_adders > 0) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_bypassed_adder_limitation_constraints" << std::endl;
			this->create_bypassed_adder_limitation_constraints(mode);
		}
		if (this->pipelining_enabled or this->force_min_adder_depth or this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_outputs_need_mux_constraints" << std::endl;
			this->create_outputs_need_mux_constraints(mode);
		}
		if (this->pipelining_enabled or this->force_min_adder_depth) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_output_depth_selection_constraints" << std::endl;
			this->create_output_depth_selection_constraints(mode);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_adder_depth_computation_post_mux_add_constraints" << std::endl;
			this->create_adder_depth_computation_post_mux_add_constraints(mode);
		}
		if (this->force_min_adder_depth)
		{
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_adder_depth_computation_limit_at_outputs_constraints" << std::endl;
			this->create_adder_depth_computation_limit_at_outputs_constraints(mode);
		}
		if (this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED) {
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_mux_register_sum_constraints" << std::endl;
			this->create_mux_register_sum_constraints(mode);
			if (this->verbosity == verbosity_mode::debug_mode)
				std::cout << "        create_mux_register_sum_limitation_constraints for #regs <= " << this->max_reconf_mux_registers << std::endl;
			this->create_mux_register_sum_limitation_constraints(mode);
		}
	}
}

void cmm::clear_variable_containers() {
	this->input_select_mux_variables.clear();
	this->input_select_mux_output_variables.clear();
	this->input_select_selection_variables.clear();
	this->input_shift_value_variables.clear();
	this->shift_internal_mux_output_variables.clear();
	this->shift_output_variables.clear();
	this->input_negate_select_variables.clear();
	this->negate_select_output_variables.clear();
	this->input_negate_value_variables.clear();
	this->xor_output_variables.clear();
	this->adder_carry_variables.clear();
	this->adder_XOR_internal_variables.clear();
	this->adder_output_value_variables.clear();
	this->input_post_adder_shift_value_variables.clear();
	this->post_adder_shift_internal_mux_output_variables.clear();
	this->post_adder_shift_output_variables.clear();
	this->output_value_variables.clear();
	this->mcm_output_variables.clear();
	this->normalize_adder_graph_input_shift_variables.clear();
	this->normalize_adder_graph_output_shift_variables.clear();
    this->full_adder_coeff_word_size_abs_adder_value_variables.clear();
    this->full_adder_coeff_word_size_abs_sum_variables.clear();
    this->full_adder_coeff_word_size_abs_sum_minus_one_variables.clear();
    this->full_adder_coeff_word_size_variables.clear();
	this->full_adder_coeff_word_size_internal_variables.clear();
	this->full_adder_coeff_word_size_internal_carry_input_variables.clear();
    this->full_adder_msb_variables.clear();
    this->full_adder_coeff_positive_variables.clear();
    this->full_adder_at_least_one_positive_variables.clear();
	this->full_adder_word_size_sum_variables.clear();
	this->full_adder_shift_gain_variables.clear();
	this->full_adder_shift_sum_variables.clear();
	this->full_adder_msb_sum_variables.clear();
	this->full_adder_add_subtract_inputs_variables.clear();
	this->full_adder_cpa_internal_variables.clear();
	this->full_adder_result_variables.clear();
	this->full_adder_comparator_ok_variables.clear();
	this->full_adder_comparator_carry_variables.clear();
	this->adder_depth_variables.clear();
	this->adder_depth_computation_input_variables.clear();
	this->adder_depth_computation_input_post_mux_add_variables.clear();
	this->adder_depth_computation_input_mux_variables.clear();
	this->adder_depth_computation_max_variables.clear();
	this->input_stages_equal_variables.clear();
	this->output_stage_eq_variables.clear();
	this->node_is_output_variables.clear();
	this->input_other_shift_value_variables.clear();
	this->other_shift_internal_mux_output_variables.clear();
	this->other_shift_output_variables.clear();
	this->config_can_be_shared_variables.clear();
	this->config_sharing_result_variables.clear();
	this->output_select_mux_variables.clear();
	this->output_select_mux_output_variables.clear();
	this->input_output_select_selection_variables.clear();
	this->input_output_shift_value_variables.clear();
	this->output_shift_internal_mux_output_variables.clear();
	this->output_shift_output_variables.clear();
	this->input_output_negate_value_variables.clear();
	this->output_negate_value_variables.clear();
	this->output_actual_value_variables.clear();
	this->output_can_be_shared_variables.clear();
	this->is_bypassed_adder_variables.clear();
	this->const_one_bit = -1;
	this->const_zero_bit = -1;

}

void cmm::create_input_node_variables()
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int idx = 0; idx < this->c_row_size(); idx++)
			{
				for (int i = 0; i < this->word_size; i++)
				{
					this->output_value_variables[{r, idx, i, v}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
			}
		}
	}
}

void cmm::create_input_node_depth_variables()
{
	if (!this->force_min_adder_depth and !this->pipelining_enabled)
		return;
	// force adder depth for all inputs to zero
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int idx = 0; idx < this->c_row_size(); idx++)
		{
			for (int w = 0; w < this->adder_depth_word_size; w++)
			{
				this->adder_depth_variables[{r, idx, w}] = this->init_const_zero_bit();
			}
		}
	}
}

void cmm::create_input_select_mux_variables(int idx)
{
	if (idx < 2)
		return;
	if (idx < this->c_row_size())
		return;
	auto select_word_size = this->ceil_log2(idx);
	auto num_muxs = (1 << select_word_size) - 1;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (auto &dir : input_directions)
			{
				for (int mux_idx = 0; mux_idx < num_muxs; mux_idx++)
				{
					for (int w = 0; w < this->word_size; w++)
					{
						this->input_select_mux_variables[{r, idx, dir, mux_idx, w, v}] = ++this->variable_counter;
						this->create_new_variable(this->variable_counter);
						if (mux_idx == 0)
						{
							this->input_select_mux_output_variables[{r, idx, dir, w, v}] = this->variable_counter;
						}
					}
				}
			}
		}
	}
}

void cmm::create_input_select_selection_variables(int idx)
{
	if (idx == 1)
		return;
	if (idx < this->c_row_size())
		return;
	auto select_word_size = this->ceil_log2(idx);
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (auto &dir : input_directions)
		{
			for (int w = 0; w < select_word_size; w++)
			{
				this->input_select_selection_variables[{r, idx, dir, w}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
		}
	}
}

void cmm::create_input_shift_value_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int w = 0; w < this->shift_word_size; w++)
		{
			this->input_shift_value_variables[{r, idx, w}] = ++this->variable_counter;
			this->create_new_variable(this->variable_counter);
		}
	}
}

void cmm::create_shift_internal_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int mux_stage = 0; mux_stage < this->shift_word_size; mux_stage++)
			{
				for (int w = 0; w < this->word_size; w++)
				{
					this->shift_internal_mux_output_variables[{r, idx, mux_stage, w, v}] = ++this->variable_counter;
					if (mux_stage == this->shift_word_size - 1)
					{
						this->shift_output_variables[{r, idx, w, v}] = this->variable_counter;
					}
					this->create_new_variable(this->variable_counter);
				}
			}
		}
	}
}

void cmm::create_other_input_shift_value_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int w = 0; w < this->shift_word_size; w++)
		{
			this->input_other_shift_value_variables[{r, idx, w}] = ++this->variable_counter;
			this->create_new_variable(this->variable_counter);
		}
	}
}

void cmm::create_other_shift_internal_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int mux_stage = 0; mux_stage < this->shift_word_size; mux_stage++)
			{
				for (int w = 0; w < this->word_size; w++)
				{
					this->other_shift_internal_mux_output_variables[{r, idx, mux_stage, w, v}] = ++this->variable_counter;
					if (mux_stage == this->shift_word_size - 1)
					{
						this->other_shift_output_variables[{r, idx, w, v}] = this->variable_counter;
					}
					this->create_new_variable(this->variable_counter);
				}
			}
		}
	}
}

void cmm::create_post_adder_input_shift_value_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int w = 0; w < this->shift_word_size; w++)
		{
			if (r == 0) {
				this->input_post_adder_shift_value_variables[{r, idx, w}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
			else {
				// all node output shifts are identical!
				this->input_post_adder_shift_value_variables[{r, idx, w}] = this->input_post_adder_shift_value_variables.at({0, idx, w});
			}
		}
	}
}

void cmm::create_post_adder_shift_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int mux_stage = 0; mux_stage < this->shift_word_size; mux_stage++)
			{
				for (int w = 0; w < this->word_size; w++)
				{
					this->post_adder_shift_internal_mux_output_variables[{r, idx, mux_stage, w, v}] = ++this->variable_counter;
					if (mux_stage == this->shift_word_size - 1)
					{
						this->post_adder_shift_output_variables[{r, idx, w, v}] = this->variable_counter;
					}
					this->create_new_variable(this->variable_counter);
				}
			}
		}
	}
}

void cmm::create_input_negate_select_variable(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		this->input_negate_select_variables[{r, idx}] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
	}
}

void cmm::create_negate_select_output_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (auto &dir : input_directions)
			{
				for (int w = 0; w < this->word_size; w++)
				{
					this->negate_select_output_variables[{r, idx, dir, w, v}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
			}
		}
	}
}

void cmm::create_input_negate_value_variable(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		this->input_negate_value_variables[{r, idx}] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
	}
}

void cmm::create_xor_output_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int w = 0; w < this->word_size; w++)
			{
				this->xor_output_variables[{r, idx, w, v}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
		}
	}
}

void cmm::create_adder_internal_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int w = 0; w < this->word_size; w++)
			{
				this->adder_carry_variables[{r, idx, w, v}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				this->adder_output_value_variables[{r, idx, w, v}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
		}
	}
}

void cmm::create_normalize_adder_graph_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		this->normalize_adder_graph_input_shift_variables[{r, idx}] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
		this->normalize_adder_graph_output_shift_variables[{r, idx}] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
	}
}

void cmm::create_output_value_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int w = 0; w < this->word_size; w++)
			{
				if (this->enable_node_output_shift)
				{
					this->output_value_variables[{r, idx, w, v}] = this->post_adder_shift_output_variables.at({r, idx, w, v});
				}
				else
				{
					this->output_value_variables[{r, idx, w, v}] = this->adder_output_value_variables.at({r, idx, w, v});
				}
			}
		}
	}
}

void cmm::create_adder_depth_variables(int idx)
{
	// max value up until this adder node
	// -> reconfiguration can increase it by 1 once more because of the input MUX
	auto max_stage_increase_per_adder = this->model_reconfiguration() ? 2 : 1;
	auto num_adders_before = idx - this->c_num_inputs();
	int max_value_num_bits = this->ceil_log2((num_adders_before+1) * max_stage_increase_per_adder + 1);
	// number of selection multiplexers
	auto select_word_size = this->ceil_log2(idx);
	auto num_muxs = (1 << select_word_size) - 1;
	// create exactly enough decision variables for the solver and pad the remaining MSBs with zeros
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int w = 0; w < this->adder_depth_word_size; w++)
		{
			// left/right input select values
			for (auto &dir : this->input_directions)
			{
				// selection mux internal variables
				for (int mux_idx = 0; mux_idx < num_muxs; mux_idx++)
				{
					this->adder_depth_computation_input_mux_variables[{r, idx, dir, mux_idx, w}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
				// selection mux output variable
				if (num_muxs > 0) {
					this->adder_depth_computation_input_variables[{r, idx, dir, w}] = this->adder_depth_computation_input_mux_variables.at({r, idx, dir, 0, w});
				}
				else {
					this->adder_depth_computation_input_variables[{r, idx, dir, w}] = this->init_const_zero_bit();
				}
				if (this->model_reconfiguration()) {
					// account for mux at input variable
					this->adder_depth_computation_input_post_mux_add_variables[{r, idx, dir, w}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
			}
			// max computation result value
			if (this->pipelining_enabled)// and num_muxs > 0)
			{
				// pipelining enabled -> input adder depths are forced equal
				// just set the maximum of left/right to the left one
				if (this->model_reconfiguration()) {
					this->adder_depth_computation_max_variables[{r, idx, w}] = this->adder_depth_computation_input_post_mux_add_variables.at({r, idx, input_direction::left, w});
				}
				else {
					this->adder_depth_computation_max_variables[{r, idx, w}] = this->adder_depth_computation_input_variables.at({r, idx, input_direction::left, w});
				}
			}
			else
			{
				// pipelining disabled -> input adder depths can differ
				this->adder_depth_computation_max_variables[{r, idx, w}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
			// adder depth output value
			if (w < max_value_num_bits)
			{
				// for pipelining, adder depths across configs must be equal!
				if (r == 0) {
					// create new variable
					this->adder_depth_variables[{r, idx, w}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
				else {
					this->adder_depth_variables[{r, idx, w}] = this->adder_depth_variables[{0, idx, w}];
				}
			}
			else
			{
				// fill with zeros
				this->adder_depth_variables[{r, idx, w}] = this->init_const_zero_bit();
			}
		}
	}
}

void cmm::create_mcm_output_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		int m_limit;
		if (this->model_reconfiguration()) {
			// model reconfiguration -> care about all requested coeffs
			m_limit = this->c_num_output_ports(r);
		}
		else {
			// no reconfiguration -> only care about unique vectors in this->C[r]
			m_limit = this->c_column_size(r);
		}
		for (int m = 1; m <= m_limit; m++)
		{
			// create clauses for positive coefficient versions if at least one of the following is true:
			// ... it was *not* explicitly requested by the user to generate outputs with the sign requested
			// ... the requested number was already positive
			// ... we do not even calculate with signed numbers
			if (this->mcm_output_variable_exists(r, m))
			{
				this->mcm_output_variables[{r, idx, m}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
			// create clauses for negative coefficient versions if one of the following is true:
			// ... it was explicitly requested by the user to generate outputs exactly as requested and the given number is negative
			// ... we do calculations in two's complement and (sign inversion is allowed for this coefficient or the model is reconfigurable)
			if (this->mcm_output_variable_exists(r, -m))
			{
				this->mcm_output_variables[{r, idx, -m}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
		}
	}
}

void cmm::create_output_tracking_variables(int idx)
{
	if (this->c_num_outputs(RECONF_CONST) > 1)
	{
		// MCM/CMM
		this->node_is_output_variables[idx] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
	}
}

void cmm::create_pipelining_variables(int idx)
{
	for (int r = 0; r < this->c_num_configs(); r++) {
		this->input_stages_equal_variables[{r, idx}] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
	}
}

void cmm::create_output_stage_eq_variables()
{
	for (int w = 0; w < this->adder_depth_word_size; w++)
	{
		this->output_stage_eq_variables[w] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
	}
}

void cmm::create_reconf_sharing_variables(int idx) {
	for (int idx = this->c_row_size(); idx < this->num_adders + this->c_row_size(); idx++)
	{
		for (auto dir : this->input_directions)
		{
			for (int r1 = 0; r1 < this->c_num_configs(); r1++)
			{
				for (int r2 = r1 + 1; r2 < this->c_num_configs(); r2++)
				{ 
					this->config_can_be_shared_variables[{r1, r2, idx, dir}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
					if (dir == input_direction::right and this->num_bypassed_adders > 0) {
						this->config_can_be_shared_including_bypass_variables[{r1, r2, idx}] = ++this->variable_counter;
						this->create_new_variable(this->variable_counter);
					}
				}
			}
		}
	}
}

void cmm::create_bypassed_adder_variables(int idx) {
	this->is_bypassed_adder_variables[idx] = ++this->variable_counter;
	this->create_new_variable(this->variable_counter);
}

void cmm::create_reconf_output_select_variables() {
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int idx = 0; idx < this->c_num_output_ports(r); idx++) {
			auto select_word_size = this->ceil_log2(this->num_adders + this->c_num_inputs());
			auto num_muxs = (1 << select_word_size) - 1;
			for (int v = 0; v < this->c_row_size(); v++)
			{
				// multiplexer select variables
				for (int w = 0; w < select_word_size; w++) {
					this->input_output_select_selection_variables[{r, idx, w}] = ++this->variable_counter;
				}
				// multiplexer value variables
				for (int w = 0; w < this->word_size; w++)
				{
					this->create_new_variable(this->variable_counter);
					for (int mux_idx = 0; mux_idx < num_muxs; mux_idx++)
					{
						this->output_select_mux_variables[{r, idx, mux_idx, w, v}] = ++this->variable_counter;
						this->create_new_variable(this->variable_counter);
						if (mux_idx == 0)
						{
							this->output_select_mux_output_variables[{r, idx, w, v}] = this->variable_counter;
						}
					}
					if (num_muxs == 0) {
						// no adders and only one input -> output is equal to the input
						this->output_select_mux_output_variables[{r, idx, w, v}] = this->output_value_variables.at({r, 0, w, v});
					}
				}
			}
		}
	}
	
}

void cmm::create_reconf_output_shift_variables() {
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int idx = 0; idx < this->c_num_output_ports(r); idx++) {
			for (int mux_stage = 0; mux_stage < this->shift_word_size; mux_stage++)
			{
				// shift value
				this->input_output_shift_value_variables[{r, idx, mux_stage}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				// shifter data
				for (int v = 0; v < this->c_row_size(); v++)
				{
					for (int w = 0; w < this->word_size; w++)
					{
						this->output_shift_internal_mux_output_variables[{r, idx, mux_stage, w, v}] = ++this->variable_counter;
						if (mux_stage == this->shift_word_size - 1)
						{
							this->output_shift_output_variables[{r, idx, w, v}] = this->variable_counter;
						}
						this->create_new_variable(this->variable_counter);
					}
				}
			}
		}
	}
}

void cmm::create_reconf_output_negate_variables() {
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int idx = 0; idx < this->c_num_output_ports(r); idx++) {
			// invert all configs at this port or none
			if (r == 0) {
				this->input_output_negate_value_variables[{r, idx}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
			else {
				this->input_output_negate_value_variables[{r, idx}] = this->input_output_negate_value_variables[{0, idx}];
			}
			// bit values
			for (int v = 0; v < this->c_row_size(); v++)
			{
				for (int w = 0; w < this->word_size; w++)
				{
					this->output_negate_value_variables[{r, idx, w, v}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
					this->output_actual_value_variables[{r, idx, w, v}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
			}
		}
	}
}

void cmm::create_reconf_output_sharing_variables() {
	for (int r1 = 0; r1 < this->c_num_configs(); r1++)
	{
		auto r1_num_ports = this->c_num_output_ports(r1);
		for (int r2 = r1 + 1; r2 < this->c_num_configs(); r2++)
		{
			auto r2_num_ports = this->c_num_output_ports(r2);
			for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
				if (idx >= r1_num_ports or idx >= r2_num_ports) continue; // no sharing possible if one of the configs has no output port at idx
				this->output_can_be_shared_variables[{r1, r2, idx}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
		}
	}
}

void cmm::create_need_adder_mux_variables(int idx) {
	for (auto &dir : this->input_directions) {
		// adder in configs
		for (int r=0; r < this->c_num_configs()-1; r++) { // -1 because the last config cannot share its adders with any later config
			this->adder_in_config_needs_mux_variables[{r, idx, dir}] = ++this->variable_counter;
			this->create_new_variable(this->variable_counter);
		}
		// adder overall
		this->adder_needs_mux_variables[{idx, dir}] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
	}
}

void cmm::create_need_output_mux_variables() {
	for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
		for (int r = 0; r < this->c_num_configs()-1; r++) { // -1 because the last config cannot share its outputs with any later config
			this->output_in_config_needs_mux_variables[{r, idx}] = ++this->variable_counter;
			this->create_new_variable(this->variable_counter);
		}
		this->output_needs_mux_variables[idx] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
	}
}

void cmm::create_output_depth_variables() {
	// number of selection multiplexers
	auto select_word_size = this->ceil_log2(this->c_num_inputs() + this->num_adders);
	auto num_muxs = (1 << select_word_size) - 1;
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
			for (int w = 0; w < this->adder_depth_word_size; w++)
			{
				for (int mux_idx = 0; mux_idx < num_muxs; mux_idx++)
				{
					// mux tree internal
					this->adder_depth_computation_output_source_mux_variables[{r, idx, mux_idx, w}] = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
					if (mux_idx == 0)
					{
						// mux tree result
						this->adder_depth_computation_output_source_variables[{r, idx, w}] = this->variable_counter;
						// result after accounting for the potential mux
						if (this->force_output_stages_equal_across_configs) {
							// stages across indices ACROSS ALL CONFIGS are the same
							if (idx == 0 and r == 0) {
								this->adder_depth_computation_output_post_mux_add_variables[{r, idx, w}] = ++this->variable_counter;
								this->create_new_variable(this->variable_counter);
							}
							else {
								this->adder_depth_computation_output_post_mux_add_variables[{r, idx, w}] = this->adder_depth_computation_output_post_mux_add_variables[{0, 0, w}];
							}
						}
						else if (this->force_output_stages_equal) {
							// stages across indices WITHIN A CONFIG are the same
							if (idx == 0) {
								this->adder_depth_computation_output_post_mux_add_variables[{r, idx, w}] = ++this->variable_counter;
								this->create_new_variable(this->variable_counter);
							}
							else {
								this->adder_depth_computation_output_post_mux_add_variables[{r, idx, w}] = this->adder_depth_computation_output_post_mux_add_variables[{r, 0, w}];
							}
						}
						else {
							// each one gets its own variable (no equality guarantees whatsoever)
							this->adder_depth_computation_output_post_mux_add_variables[{r, idx, w}] = ++this->variable_counter;
							this->create_new_variable(this->variable_counter);
						}
					}
				}
			}
		}
	}
}

int cmm::ceil_log2(int n)
{
	try
	{
		return this->ceil_log2_cache.at(n);
	}
	catch (std::out_of_range &)
	{
		int val;
		if (n > 0)
			val = std::ceil(std::log2(n));
		else
			val = 0;
		return this->ceil_log2_cache[n] = val;
	}
}

int cmm::floor_log2(int n)
{
	try
	{
		return this->floor_log2_cache.at(n);
	}
	catch (std::out_of_range &)
	{
		int val;
		if (n > 0)
			val = std::floor(std::log2(n));
		else
			val = -1;
		return this->floor_log2_cache[n] = val;
	}
}

void cmm::create_new_variable(int idx)
{
	(void)idx; // just do nothing -> should be overloaded by backend if a variable must be explicitly created
}

void cmm::create_arbitrary_clause(const std::vector<std::pair<int, bool>> &a)
{
	// added new constraint
	this->constraint_counter++;
	// sanity check
	for (const auto &it : a)
	{
		if (it.first == 0) {
			throw std::runtime_error("Invalid literal specified (lit==0) -> this should never happen!");
		}
	}
	// do we want to write a CNF file?!
	if (!this->write_cnf and !this->needs_cnf_generation())
		return;
	for (const auto &it : a)
	{
		if (it.first == 0) {
			throw std::runtime_error("Invalid literal specified (lit==0) -> this should never happen!");
		}
		this->cnf_clauses << (it.second ? -it.first : it.first) << " ";
	}
	this->cnf_clauses << " 0" << std::endl;
}

void cmm::create_signed_shift_overflow_protection(int sel, int s_a, int a)
{
	// 1)
	this->create_arbitrary_clause({{sel, true},
								   {s_a, true},
								   {a, false}});
	// 2)
	this->create_arbitrary_clause({{sel, true},
								   {s_a, false},
								   {a, true}});
}

void cmm::create_signed_add_overflow_protection(int sub, int s_a, int s_b, int s_y)
{
	// 1)
	this->create_arbitrary_clause({{sub, false},
								   {s_a, false},
								   {s_b, false},
								   {s_y, true}});
	// 2)
	this->create_arbitrary_clause({{sub, false},
								   {s_a, true},
								   {s_b, true},
								   {s_y, false}});
	// 3)
	this->create_arbitrary_clause({{sub, true},
								   {s_a, false},
								   {s_b, true},
								   {s_y, true}});
	// 4)
	this->create_arbitrary_clause({{sub, true},
								   {s_a, true},
								   {s_b, false},
								   {s_y, false}});
}

void cmm::create_or(std::vector<int> &x)
{
	std::vector<std::pair<int, bool>> v(x.size());
	for (auto i = 0; i < x.size(); i++)
	{
		auto &val = x[i];
		if (val > 0)
			v[i] = {val, false};
		else
			v[i] = {-val, true};
	}
	this->create_arbitrary_clause(v);
}

void cmm::create_1x1_implication(int a, int b)
{
	this->create_arbitrary_clause({{a, true},
								   {b, false}});
}

void cmm::create_1x1_negated_implication(int a, int b)
{
	this->create_arbitrary_clause({{a, true},
								   {b, true}});
}

void cmm::create_1x1_reversed_negated_implication(int a, int b)
{
	this->create_arbitrary_clause({{a, false},
								   {b, false}});
}

void cmm::create_1xN_implication(int a, const std::vector<int> &b)
{
	std::vector<std::pair<int, bool>> v(b.size() + 1);
	for (auto i = 0; i < b.size(); i++)
	{
		v[i] = {b[i], false};
	}
	v[b.size()] = {a, true};
	this->create_arbitrary_clause(v);
}

void cmm::create_MxN_implication(const std::vector<int> &a, const std::vector<int> &b)
{
	std::vector<std::pair<int, bool>> v(b.size() + a.size());
	for (auto i = 0; i < a.size(); i++)
	{
		v[i] = {a[i], true};
	}
	for (auto i = 0; i < b.size(); i++)
	{
		v[i + a.size()] = {b[i], false};
	}
	this->create_arbitrary_clause(v);
}

void cmm::create_1x1_equivalence(int x, int y)
{
	// 1)
	this->create_arbitrary_clause({{x, true},
								   {y, false}});
	// 2)
	this->create_arbitrary_clause({{x, false},
								   {y, true}});
}

void cmm::create_2x1_mux(int a, int b, int s, int y)
{
	// 1)
	this->create_arbitrary_clause({{a, true},
								   {s, false},
								   {y, false}});
	// 2)
	this->create_arbitrary_clause({{b, true},
								   {s, true},
								   {y, false}});
	// 3)
	this->create_arbitrary_clause({{b, false},
								   {s, true},
								   {y, true}});
	// 4)
	this->create_arbitrary_clause({{a, false},
								   {s, false},
								   {y, true}});
	// 5)
	this->create_arbitrary_clause({{a, true},
								   {b, true},
								   {y, false}});
	// 6)
	this->create_arbitrary_clause({{a, false},
								   {b, false},
								   {y, true}});
}

void cmm::create_2x1_mux_shift_disallowed(int a, int b, int s, int y)
{
	// 1)
	this->create_arbitrary_clause({{a, true},
								   {y, false}});
	// 2)
	this->create_arbitrary_clause({{b, true},
								   {s, true},
								   {y, false}});
	// 3)
	this->create_arbitrary_clause({{b, false},
								   {s, true},
								   {y, true}});
	// 4)
	this->create_arbitrary_clause({{a, false},
								   {s, false},
								   {y, true}});
	// 5)
	this->create_arbitrary_clause({{a, true},
								   {s, true}});
	// 6)
	this->create_arbitrary_clause({{a, false},
								   {b, false},
								   {y, true}});
}

void cmm::create_2x1_mux_zero_const(int a, int s, int y)
{
	// 1)
	this->create_arbitrary_clause({{s, true},
								   {y, true}});
	// 2)
	this->create_arbitrary_clause({{a, false},
								   {y, true}});
	// 3)
	this->create_arbitrary_clause({{a, true},
								   {s, false},
								   {y, false}});
}

void cmm::create_2x1_xor(int a, int b, int y)
{
	// 1)
	this->create_arbitrary_clause({{a, false},
								   {b, false},
								   {y, true}});
	// 2)
	this->create_arbitrary_clause({{a, false},
								   {b, true},
								   {y, false}});
	// 3)
	this->create_arbitrary_clause({{a, true},
								   {b, false},
								   {y, false}});
	// 4)
	this->create_arbitrary_clause({{a, true},
								   {b, true},
								   {y, true}});
}

void cmm::create_2x1_equiv(int a, int b, int y)
{
	// 1)
	this->create_arbitrary_clause({{a, false},
								   {b, false},
								   {y, false}});
	// 2)
	this->create_arbitrary_clause({{a, false},
								   {b, true},
								   {y, true}});
	// 3)
	this->create_arbitrary_clause({{a, true},
								   {b, false},
								   {y, true}});
	// 4)
	this->create_arbitrary_clause({{a, true},
								   {b, true},
								   {y, false}});
}

void cmm::create_2x1_or(int a, int b, int y)
{
	// 1)
	this->create_arbitrary_clause({{a, false},
								   {b, false},
								   {y, true}});
	// 2)
	this->create_arbitrary_clause({{a, true},
								   {y, false}});
	// 3)
	this->create_arbitrary_clause({{b, true},
								   {y, false}});
}

void cmm::create_2x1_and(int a, int b, int y)
{
	// 1)
	this->create_arbitrary_clause({{a, true},
								   {b, true},
								   {y, false}});
	// 2)
	this->create_arbitrary_clause({{a, false},
								   {y, true}});
	// 3)
	this->create_arbitrary_clause({{b, false},
								   {y, true}});
}

void cmm::create_2x1_and_b_inv(int a, int b, int y)
{
	// 1)
	this->create_arbitrary_clause({{a, true},
								   {b, false},
								   {y, false}});
	// 2)
	this->create_arbitrary_clause({{a, false},
								   {y, true}});
	// 3)
	this->create_arbitrary_clause({{b, true},
								   {y, true}});
}

void cmm::create_add_sum(int a, int b, int c_i, int s)
{
	// 1)
	this->create_arbitrary_clause({{a, false},
								   {b, true},
								   {c_i, false},
								   {s, false}});
	// 2)
	this->create_arbitrary_clause({{a, true},
								   {b, false},
								   {c_i, false},
								   {s, false}});
	// 3)
	this->create_arbitrary_clause({{a, false},
								   {b, false},
								   {c_i, false},
								   {s, true}});
	// 4)
	this->create_arbitrary_clause({{a, true},
								   {b, true},
								   {c_i, false},
								   {s, true}});
	// 5)
	this->create_arbitrary_clause({{a, false},
								   {b, true},
								   {c_i, true},
								   {s, true}});
	// 6)
	this->create_arbitrary_clause({{a, true},
								   {b, false},
								   {c_i, true},
								   {s, true}});
	// 7)
	this->create_arbitrary_clause({{a, false},
								   {b, false},
								   {c_i, true},
								   {s, false}});
	// 8)
	this->create_arbitrary_clause({{a, true},
								   {b, true},
								   {c_i, true},
								   {s, false}});
}

void cmm::create_add_carry(int a, int b, int c_i, int c_o)
{
	// 1)
	this->create_arbitrary_clause({{a, true},
								   {b, true},
								   {c_o, false}});
	// 2)
	this->create_arbitrary_clause({{a, false},
								   {c_i, false},
								   {c_o, true}});
	// 3)
	this->create_arbitrary_clause({{b, false},
								   {c_i, false},
								   {c_o, true}});
	// 4)
	this->create_arbitrary_clause({{a, false},
								   {b, false},
								   {c_o, true}});
	// 5)
	this->create_arbitrary_clause({{b, true},
								   {c_i, true},
								   {c_o, false}});
	// 6)
	this->create_arbitrary_clause({{a, true},
								   {c_i, true},
								   {c_o, false}});
}

void cmm::create_add_redundant(int a, int b, int c_i, int s, int c_o)
{
	// 1)
	this->create_arbitrary_clause({{a, false},
								   {s, true},
								   {c_o, true}});
	// 2)
	this->create_arbitrary_clause({{b, false},
								   {s, true},
								   {c_o, true}});
	// 3)
	this->create_arbitrary_clause({{c_i, false},
								   {s, true},
								   {c_o, true}});
	// 4)
	this->create_arbitrary_clause({{a, true},
								   {s, false},
								   {c_o, false}});
	// 5)
	this->create_arbitrary_clause({{b, true},
								   {s, false},
								   {c_o, false}});
	// 6)
	this->create_arbitrary_clause({{c_i, true},
								   {s, false},
								   {c_o, false}});
}

void cmm::create_equivalence_sharing_implication(int var_1, int var_2, int sharing_var) {
	// 1)
	this->create_arbitrary_clause({{sharing_var, true},
								   {var_1, true},
								   {var_2, false}});
	// 2)
	this->create_arbitrary_clause({{sharing_var, true},
								   {var_1, false},
								   {var_2, true}});
}

void cmm::force_bit(int x, int val)
{
	this->create_arbitrary_clause({{x, val != 1}});
}

void cmm::forbid_number(const std::vector<int> &x, int val)
{
	auto num_bits = (int)x.size();
	std::vector<std::pair<int, bool>> v(num_bits);
	for (int i = 0; i < num_bits; i++)
	{
		auto bit = (val >> i) & 1;
		if (bit == 1)
		{
			v[i] = {x[i], true};
		}
		else
		{
			v[i] = {x[i], false};
		}
	}
	this->create_arbitrary_clause(v);
}

void cmm::force_number(const std::vector<int> &x, int val)
{
	auto num_bits = (int)x.size();
	for (int i = 0; i < num_bits; i++)
	{
		auto bit = (val >> i) & 1;
		if (bit == 1)
		{
			this->create_arbitrary_clause({{x[i], false}});
		}
		else
		{
			this->create_arbitrary_clause({{x[i], true}});
		}
	}
}

std::pair<bool, bool> cmm::check()
{
	throw std::runtime_error("check is impossible in base class");
}

int cmm::get_result_value(int var_idx)
{
	throw std::runtime_error("get_result_value is impossible in base class");
}

void cmm::create_input_output_constraints(formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	this->create_mcm_input_constraints(mode);
	this->create_mcm_output_constraints(mode);
}

void cmm::create_input_select_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	// stage 1 has no input MUX because it can only be connected to the input node with idx=0
	if (idx < 2)
		return;
	if (idx < this->c_row_size())
		return;

	// create constraints for all muxs
	if (this->verbosity == verbosity_mode::debug_mode)
	{
		std::cout << "          creating input select constraints for node #" << idx << std::endl;
	}
	auto select_word_size = this->ceil_log2(idx);
	auto next_pow_two = (1 << select_word_size);
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (auto &dir : this->input_directions)
			{
				int mux_idx = 0;
				std::map<std::pair<int, int>, int> signal_variables;
				for (int i = 0; i < idx; i++)
				{
					for (int w = 0; w < this->word_size; w++)
					{
						signal_variables[{i, w}] = this->output_value_variables.at({r, i, w, v});
					}
				}
				std::map<std::pair<int, int>, int> next_signal_variables;
				for (int mux_stage = 0; mux_stage < select_word_size; mux_stage++)
				{
					auto num_muxs_per_stage = (1 << mux_stage);
					auto mux_select_var_idx = this->input_select_selection_variables.at(
						{r, idx, dir, select_word_size - mux_stage - 1});
					for (int mux_idx_in_stage = 0; mux_idx_in_stage < num_muxs_per_stage; mux_idx_in_stage++)
					{
						if (mux_stage == select_word_size - 1)
						{
							// connect with another node output
							auto zero_input_node_idx = 2 * mux_idx_in_stage;
							auto one_input_node_idx = zero_input_node_idx + 1;
							if (zero_input_node_idx >= idx)
								zero_input_node_idx = idx - 1;
							if (one_input_node_idx >= idx)
								one_input_node_idx = idx - 1;
							for (int w = 0; w < this->word_size; w++)
							{
								auto mux_output_var_idx = this->input_select_mux_variables.at({r, idx, dir, mux_idx, w, v});
								auto zero_input_var_idx = this->output_value_variables.at({r, zero_input_node_idx, w, v});
								auto one_input_var_idx = this->output_value_variables.at({r, one_input_node_idx, w, v});
								if (zero_input_node_idx == one_input_node_idx)
								{
									// both inputs are equal -> mux output == mux input (select line does not matter...)
									this->create_1x1_equivalence(zero_input_var_idx, mux_output_var_idx);
								}
								else
								{
									this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, mux_select_var_idx, mux_output_var_idx);
								}
							}
						}
						else
						{
							// connect with mux from higher stage
							auto num_muxs_in_next_stage = (1 << (mux_stage + 1));
							auto zero_mux_idx_in_next_stage = 2 * mux_idx_in_stage;
							auto zero_input_mux_idx = num_muxs_in_next_stage - 1 + zero_mux_idx_in_next_stage;
							auto one_input_mux_idx = zero_input_mux_idx + 1;
							for (int w = 0; w < this->word_size; w++)
							{
								auto mux_output_var_idx = this->input_select_mux_variables.at({r, idx, dir, mux_idx, w, v});
								auto zero_input_var_idx = this->input_select_mux_variables.at({r, idx, dir, zero_input_mux_idx, w, v});
								auto one_input_var_idx = this->input_select_mux_variables.at({r, idx, dir, one_input_mux_idx, w, v});
								this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, mux_select_var_idx, mux_output_var_idx);
							}
						}
						// increment current mux idx
						mux_idx++;
					}
				}
			}
		}
	}
}

void cmm::create_shift_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (auto stage = 0; stage < this->shift_word_size; stage++)
			{
				auto shift_width = (1 << stage);
				auto select_input_var_idx = this->input_shift_value_variables.at({r, idx, stage});
				auto first_disallowed_shift_bit = this->word_size - shift_width;
				for (auto w = 0; w < this->word_size; w++)
				{
					auto w_prev = w - shift_width;
					auto connect_zero_const = w_prev < 0;
					int zero_input_var_idx;
					int zero_input_sign_bit_idx;
					int one_input_var_idx;
					auto mux_output_var_idx = this->shift_internal_mux_output_variables.at({r, idx, stage, w, v});
					if (stage == 0)
					{
						// connect shifter inputs
						if (idx <= 1)
						{
							// shifter input is the output of the input node with idx = 0
							zero_input_var_idx = this->output_value_variables.at({r, 0, w, v});
							zero_input_sign_bit_idx = this->output_value_variables.at({r, 0, this->word_size - 1, v});
							if (!connect_zero_const)
							{
								one_input_var_idx = this->output_value_variables.at({r, 0, w_prev, v});
							}
						}
						else
						{
							// shifter input is the left input value
							zero_input_var_idx = this->input_select_mux_output_variables.at({r, idx, cmm::left, w, v});
							zero_input_sign_bit_idx = this->input_select_mux_output_variables.at(
								{r, idx, cmm::left, this->word_size - 1, v});
							if (!connect_zero_const)
							{
								one_input_var_idx = this->input_select_mux_output_variables.at({r, idx, cmm::left, w_prev, v});
							}
						}
					}
					else
					{
						// connect output of previous stage
						zero_input_var_idx = this->shift_internal_mux_output_variables.at({r, idx, stage - 1, w, v});
						zero_input_sign_bit_idx = this->shift_internal_mux_output_variables.at(
							{r, idx, stage - 1, this->word_size - 1, v});
						if (!connect_zero_const)
						{
							one_input_var_idx = this->shift_internal_mux_output_variables.at({r, idx, stage - 1, w_prev, v});
						}
					}
					if (w >= first_disallowed_shift_bit)
					{
						if (this->calc_twos_complement)
						{
							if (connect_zero_const)
							{
								this->create_2x1_mux_zero_const(zero_input_var_idx, select_input_var_idx,
																mux_output_var_idx);
							}
							else
							{
								this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, select_input_var_idx,
													 mux_output_var_idx);
							}
							if (w == this->word_size - 1)
							{
								// these clauses are different for the sign bit
								this->create_signed_shift_overflow_protection(select_input_var_idx, zero_input_sign_bit_idx,
																			  one_input_var_idx);
							}
							else
							{
								this->create_signed_shift_overflow_protection(select_input_var_idx, zero_input_sign_bit_idx,
																			  zero_input_var_idx);
							}
						}
						else
						{
							if (connect_zero_const)
							{
								this->create_1x1_equivalence(zero_input_var_idx, mux_output_var_idx);
								this->create_1x1_negated_implication(zero_input_var_idx, select_input_var_idx);
								this->create_1x1_negated_implication(mux_output_var_idx, select_input_var_idx);
							}
							else
							{
								this->create_2x1_mux_shift_disallowed(zero_input_var_idx, one_input_var_idx,
																	  select_input_var_idx, mux_output_var_idx);
							}
						}
					}
					else
					{
						if (connect_zero_const)
						{
							this->create_2x1_mux_zero_const(zero_input_var_idx, select_input_var_idx, mux_output_var_idx);
						}
						else
						{
							this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, select_input_var_idx,
												 mux_output_var_idx);
						}
					}
				}
				// sign bits before and after shifting must be identical if calculating in 2's complement
				if (this->calc_twos_complement)
				{
					int shift_input_sign_bit_idx;
					int shift_output_sign_bit_idx = this->shift_output_variables.at({r, idx, this->word_size - 1, v});
					if (idx == 1)
					{
						shift_input_sign_bit_idx = this->output_value_variables.at({r, 0, this->word_size - 1, v});
					}
					else
					{
						shift_input_sign_bit_idx = this->input_select_mux_output_variables.at(
							{r, idx, cmm::left, this->word_size - 1, v});
					}
					this->create_1x1_equivalence(shift_input_sign_bit_idx, shift_output_sign_bit_idx);
				}
			}
		}
	}
}

void cmm::create_other_shift_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (auto stage = 0; stage < this->shift_word_size; stage++)
			{
				auto shift_width = (1 << stage);
				auto select_input_var_idx = this->input_other_shift_value_variables.at({r, idx, stage});
				auto first_disallowed_shift_bit = this->word_size - shift_width;
				for (auto w = 0; w < this->word_size; w++)
				{
					auto w_prev = w - shift_width;
					auto connect_zero_const = w_prev < 0;
					int zero_input_var_idx;
					int zero_input_sign_bit_idx;
					int one_input_var_idx;
					auto mux_output_var_idx = this->other_shift_internal_mux_output_variables.at({r, idx, stage, w, v});
					if (stage == 0)
					{
						// connect shifter inputs
						if (idx <= 1)
						{
							// shifter input is the output of the input node with idx = 0
							zero_input_var_idx = this->output_value_variables.at({r, 0, w, v});
							zero_input_sign_bit_idx = this->output_value_variables.at({r, 0, this->word_size - 1, v});
							if (!connect_zero_const)
							{
								one_input_var_idx = this->output_value_variables.at({r, 0, w_prev, v});
							}
						}
						else
						{
							// shifter input is the right input value
							zero_input_var_idx = this->input_select_mux_output_variables.at({r, idx, cmm::right, w, v});
							zero_input_sign_bit_idx = this->input_select_mux_output_variables.at(
								{r, idx, cmm::right, this->word_size - 1, v});
							if (!connect_zero_const)
							{
								one_input_var_idx = this->input_select_mux_output_variables.at({r, idx, cmm::right, w_prev, v});
							}
						}
					}
					else
					{
						// connect output of previous stage
						zero_input_var_idx = this->other_shift_internal_mux_output_variables.at({r, idx, stage - 1, w, v});
						zero_input_sign_bit_idx = this->other_shift_internal_mux_output_variables.at(
							{r, idx, stage - 1, this->word_size - 1, v});
						if (!connect_zero_const)
						{
							one_input_var_idx = this->other_shift_internal_mux_output_variables.at({r, idx, stage - 1, w_prev, v});
						}
					}
					if (w >= first_disallowed_shift_bit)
					{
						if (this->calc_twos_complement)
						{
							if (connect_zero_const)
							{
								this->create_2x1_mux_zero_const(zero_input_var_idx, select_input_var_idx,
																mux_output_var_idx);
							}
							else
							{
								this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, select_input_var_idx,
													 mux_output_var_idx);
							}
							if (w == this->word_size - 1)
							{
								// these clauses are different for the sign bit
								this->create_signed_shift_overflow_protection(select_input_var_idx, zero_input_sign_bit_idx,
																			  one_input_var_idx);
							}
							else
							{
								this->create_signed_shift_overflow_protection(select_input_var_idx, zero_input_sign_bit_idx,
																			  zero_input_var_idx);
							}
						}
						else
						{
							if (connect_zero_const)
							{
								this->create_1x1_equivalence(zero_input_var_idx, mux_output_var_idx);
								this->create_1x1_negated_implication(zero_input_var_idx, select_input_var_idx);
								this->create_1x1_negated_implication(mux_output_var_idx, select_input_var_idx);
							}
							else
							{
								this->create_2x1_mux_shift_disallowed(zero_input_var_idx, one_input_var_idx,
																	  select_input_var_idx, mux_output_var_idx);
							}
						}
					}
					else
					{
						if (connect_zero_const)
						{
							this->create_2x1_mux_zero_const(zero_input_var_idx, select_input_var_idx, mux_output_var_idx);
						}
						else
						{
							this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, select_input_var_idx,
												 mux_output_var_idx);
						}
					}
				}
				// sign bits before and after shifting must be identical if calculating in 2's complement
				if (this->calc_twos_complement)
				{
					int shift_input_sign_bit_idx;
					int shift_output_sign_bit_idx = this->other_shift_output_variables.at({r, idx, this->word_size - 1, v});
					if (idx == 1)
					{
						shift_input_sign_bit_idx = this->output_value_variables.at({r, 0, this->word_size - 1, v});
					}
					else
					{
						shift_input_sign_bit_idx = this->input_select_mux_output_variables.at(
							{r, idx, cmm::right, this->word_size - 1, v});
					}
					this->create_1x1_equivalence(shift_input_sign_bit_idx, shift_output_sign_bit_idx);
				}
			}
		}
	}
}

void cmm::create_post_adder_shift_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (auto stage = 0; stage < this->shift_word_size; stage++)
			{
				auto shift_width = (1 << stage);
				auto select_input_var_idx = this->input_post_adder_shift_value_variables.at({r, idx, stage});
				auto last_disallowed_shift_bit = shift_width - 1;
				for (auto w = 0; w < this->word_size; w++)
				{
					auto w_prev = w + shift_width;
					auto connect_zero_const = w_prev >= this->word_size;
					int zero_input_var_idx;
					int zero_input_sign_bit_idx;
					int one_input_var_idx;
					auto mux_output_var_idx = this->post_adder_shift_internal_mux_output_variables.at({r, idx, stage, w, v});
					if (stage == 0)
					{
						// connect shifter inputs
						// shifter input is the adder output
						zero_input_var_idx = this->adder_output_value_variables.at({r, idx, w, v});
						zero_input_sign_bit_idx = this->adder_output_value_variables.at({r, idx, this->word_size - 1, v});
						if (!connect_zero_const)
						{
							one_input_var_idx = this->adder_output_value_variables.at({r, idx, w_prev, v});
						}
					}
					else
					{
						// connect output of previous stage
						zero_input_var_idx = this->post_adder_shift_internal_mux_output_variables.at({r, idx, stage - 1, w, v});
						zero_input_sign_bit_idx = this->post_adder_shift_internal_mux_output_variables.at(
							{r, idx, stage - 1, this->word_size - 1, v});
						if (!connect_zero_const)
						{
							one_input_var_idx = this->post_adder_shift_internal_mux_output_variables.at(
								{r, idx, stage - 1, w_prev, v});
						}
					}
					if (w <= last_disallowed_shift_bit)
					{
						// shifting out 1s is not allowed in these places
						if (connect_zero_const)
						{
							if (this->calc_twos_complement)
							{
								// connect the sign bit instead of a constant zero
								this->create_2x1_mux_shift_disallowed(zero_input_var_idx, zero_input_sign_bit_idx,
																	  select_input_var_idx, mux_output_var_idx);
							}
							else
							{
								this->create_1x1_equivalence(zero_input_var_idx, mux_output_var_idx);
								this->create_1x1_negated_implication(zero_input_var_idx, select_input_var_idx);
								this->create_1x1_negated_implication(mux_output_var_idx, select_input_var_idx);
							}
						}
						else
						{
							this->create_2x1_mux_shift_disallowed(zero_input_var_idx, one_input_var_idx,
																  select_input_var_idx, mux_output_var_idx);
						}
					}
					else
					{
						// we can shift bits around however we like
						if (connect_zero_const)
						{
							if (this->calc_twos_complement)
							{
								// connect the sign bit instead of a constant zero
								this->create_2x1_mux(zero_input_var_idx, zero_input_sign_bit_idx, select_input_var_idx,
													 mux_output_var_idx);
							}
							else
							{
								this->create_2x1_mux_zero_const(zero_input_var_idx, select_input_var_idx,
																mux_output_var_idx);
							}
						}
						else
						{
							this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, select_input_var_idx,
												 mux_output_var_idx);
						}
					}
				}
				// sign bits before and after shifting must be identical if calculating in 2's complement
				if (this->calc_twos_complement)
				{
					int shift_output_sign_bit_idx = this->post_adder_shift_output_variables.at({r, idx, this->word_size - 1, v});
					int shift_input_sign_bit_idx = this->adder_output_value_variables.at({r, idx, this->word_size - 1, v});
					this->create_1x1_equivalence(shift_input_sign_bit_idx, shift_output_sign_bit_idx);
				}
			}
		}
	}
}

void cmm::create_normalize_adder_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		int input_shift_norm_var_idx = this->normalize_adder_graph_input_shift_variables[{r, idx}];
		int output_shift_norm_var_idx = this->normalize_adder_graph_output_shift_variables[{r, idx}];
		// implications for shifters
		for (int s = 0; s < this->shift_word_size; s++)
		{
			this->create_arbitrary_clause({{this->input_shift_value_variables[{r, idx, s}], true}, {input_shift_norm_var_idx, false}});
			if (this->model_reconfiguration()) {
				this->create_arbitrary_clause({{this->input_other_shift_value_variables[{r, idx, s}], true}, {input_shift_norm_var_idx, false}});
			}
			//if (r > 0) continue; // only add post-add shift constraint for r=0 since all other variables are the same -> nfiege: NO NO NO NO NO!!!!
			this->create_arbitrary_clause({{this->input_post_adder_shift_value_variables[{r, idx, s}], true}, {output_shift_norm_var_idx, false}});
		}
		// not both at the same time
		this->create_arbitrary_clause({{input_shift_norm_var_idx, true}, {output_shift_norm_var_idx, true}});
	}
}

void cmm::create_negate_select_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		auto select_var_idx = this->input_negate_select_variables.at({r, idx});
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int w = 0; w < this->word_size; w++)
			{
				auto left_input_var_idx = this->shift_output_variables.at({r, idx, w, v});
				int right_input_var_idx;
				if (idx == 1)
				{
					// right input is the output of the input node with idx = 0
					right_input_var_idx = this->output_value_variables.at({r, 0, w, v});
				}
				else
				{
					// right input is the output of the right input select mux
					right_input_var_idx = this->input_select_mux_output_variables.at({r, idx, cmm::right, w, v});
				}
				for (auto &dir : this->input_directions)
				{
					auto mux_output_var_idx = this->negate_select_output_variables.at({r, idx, dir, w, v});
					if (dir == cmm::left)
					{
						this->create_2x1_mux(right_input_var_idx, left_input_var_idx, select_var_idx, mux_output_var_idx);
					}
					else
					{
						this->create_2x1_mux(left_input_var_idx, right_input_var_idx, select_var_idx, mux_output_var_idx);
					}
				}
			}
		}
	}
}

void cmm::create_xor_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		auto negate_var_idx = this->input_negate_value_variables.at({r, idx});
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int w = 0; w < this->word_size; w++)
			{
				int input_var_idx;
				if (this->model_reconfiguration())
				{
					input_var_idx = this->other_shift_output_variables.at({r, idx, w, v});
				}
				else
				{
					input_var_idx = this->negate_select_output_variables.at({r, idx, cmm::right, w, v});
				}
				auto output_var_idx = this->xor_output_variables.at({r, idx, w, v});
				this->create_2x1_xor(negate_var_idx, input_var_idx, output_var_idx);
			}
		}
	}
}

void cmm::create_adder_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			for (int w = 0; w < this->word_size; w++)
			{
				int c_i;
				if (w == 0)
				{
					// carry input = input negate value
					c_i = this->input_negate_value_variables.at({r, idx});
				}
				else
				{
					// carry input = carry output of last stage
					c_i = this->adder_carry_variables.at({r, idx, w - 1, v});
				}
				// in/out variables
				int a;
				if (this->model_reconfiguration())
				{
					a = this->shift_output_variables.at({r, idx, w, v});
				}
				else
				{
					a = this->negate_select_output_variables.at({r, idx, cmm::left, w, v});
				}
				int b = this->xor_output_variables.at({r, idx, w, v});
				int s = this->adder_output_value_variables.at({r, idx, w, v});
				int c_o = this->adder_carry_variables.at({r, idx, w, v});
				// build full adder (instead of building clauses for sum/carry separately)
				this->create_full_adder({a, false}, {b, false}, {c_i, false}, {s, false}, {c_o, false});
				// build redundant clauses to increase strength of unit propagation
				// note (nfiege): this doesn't bring any speedup
				// this->create_add_redundant(a, b, c_i, s, c_o);
			}
			// prohibit overflows
			if (this->calc_twos_complement)
			{
				int left_overflow_input;
				int right_overflow_input;
				if (this->model_reconfiguration())
				{
					left_overflow_input = this->shift_output_variables.at({r, idx, this->word_size - 1, v});
					right_overflow_input = this->other_shift_output_variables.at({r, idx, this->word_size - 1, v});
				}
				else
				{
					left_overflow_input = this->negate_select_output_variables.at({r, idx, cmm::left, this->word_size - 1, v});
					right_overflow_input = this->negate_select_output_variables.at({r, idx, cmm::right, this->word_size - 1, v});
				}
				this->create_signed_add_overflow_protection(
					this->input_negate_value_variables.at({r, idx}),
					left_overflow_input,
					right_overflow_input,
					this->output_value_variables.at({r, idx, this->word_size - 1, v}));
			}
			else
			{
				this->create_1x1_equivalence(
					this->adder_carry_variables.at({r, idx, this->word_size - 1, v}),
					this->input_negate_value_variables.at({r, idx}));
			}
		}
	}
}

void cmm::create_input_select_limitation_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	if (idx <= 1)
		return;
	if (idx < this->c_row_size())
		return;
	auto select_input_word_size = this->ceil_log2(idx);
	int max_representable_input_select = (1 << select_input_word_size) - 1;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (auto &dir : this->input_directions)
		{
			std::vector<int> x(select_input_word_size);
			for (int w = 0; w < select_input_word_size; w++)
			{
				x[w] = this->input_select_selection_variables.at({r, idx, dir, w});
			}
			this->create_upper_limit(x, idx - 1, false);
		}
	}
}

void cmm::create_shift_limitation_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	int max_representable_shift = (1 << this->shift_word_size) - 1;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		std::vector<int> x(this->shift_word_size);
		for (int w = 0; w < this->shift_word_size; w++)
		{
			x[w] = this->input_shift_value_variables.at({r, idx, w});
		}
		this->create_upper_limit(x, this->max_shift, false);
	}
}

void cmm::create_other_shift_limitation_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	int max_representable_shift = (1 << this->shift_word_size) - 1;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		std::vector<int> x(this->shift_word_size);
		for (int w = 0; w < this->shift_word_size; w++)
		{
			x[w] = this->input_other_shift_value_variables.at({r, idx, w});
		}
		this->create_upper_limit(x, this->max_shift, false);
	}
}

void cmm::create_post_adder_shift_limitation_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	int max_representable_shift = (1 << this->shift_word_size) - 1;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		// ONLY ADD CONSTRAINT FOR r=0! ALL OTHER CONFIGS USE THE SAME VARIABLES!
		if (r > 0) break;
		// create constraint
		std::vector<int> x(this->shift_word_size);
		for (int w = 0; w < this->shift_word_size; w++)
		{
			x[w] = this->input_post_adder_shift_value_variables.at({r, idx, w});
		}
		this->create_upper_limit(x, this->max_shift, false);
	}
}

void cmm::create_adder_depth_computation_select_constraints(int idx, formulation_mode mode)
{
	
	// selection is based on this->input_select_selection_variables
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	// stage 1 has no input MUX because it can only be connected to the input node with idx=0
	if (idx < 2)
		return;
	if (idx < this->c_row_size())
		return;

	// create constraints for all muxs
	auto select_word_size = this->ceil_log2(idx);
	auto next_pow_two = (1 << select_word_size);
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (auto &dir : this->input_directions)
		{
			int mux_idx = 0;
			std::map<std::pair<int, int>, int> signal_variables;
			for (int i = 0; i < idx; i++)
			{
				for (int w = 0; w < this->adder_depth_word_size; w++)
				{
					signal_variables[{i, w}] = this->adder_depth_variables.at({r, i, w});
				}
			}
			std::map<std::pair<int, int>, int> next_signal_variables;
			for (int mux_stage = 0; mux_stage < select_word_size; mux_stage++)
			{
				auto num_muxs_per_stage = (1 << mux_stage);
				auto mux_select_var_idx = this->input_select_selection_variables.at({r, idx, dir, select_word_size - mux_stage - 1});
				for (int mux_idx_in_stage = 0; mux_idx_in_stage < num_muxs_per_stage; mux_idx_in_stage++)
				{
					if (mux_stage == select_word_size - 1)
					{
						// connect with another node output
						auto zero_input_node_idx = 2 * mux_idx_in_stage;
						auto one_input_node_idx = zero_input_node_idx + 1;
						if (zero_input_node_idx >= idx)
							zero_input_node_idx = idx - 1;
						if (one_input_node_idx >= idx)
							one_input_node_idx = idx - 1;
						for (int w = 0; w < this->adder_depth_word_size; w++)
						{
							auto mux_output_var_idx = this->adder_depth_computation_input_mux_variables.at({r, idx, dir, mux_idx, w});
							auto zero_input_var_idx = this->adder_depth_variables.at({r, zero_input_node_idx, w});
							auto one_input_var_idx = this->adder_depth_variables.at({r, one_input_node_idx, w});
							if (zero_input_node_idx == one_input_node_idx)
							{
								// both inputs are equal -> mux output == mux input (select line does not matter...)
								this->create_1x1_equivalence(zero_input_var_idx, mux_output_var_idx);
							}
							else
							{
								this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, mux_select_var_idx, mux_output_var_idx);
							}
						}
					}
					else
					{
						// connect with mux from higher stage
						auto num_muxs_in_next_stage = (1 << (mux_stage + 1));
						auto zero_mux_idx_in_next_stage = 2 * mux_idx_in_stage;
						auto zero_input_mux_idx = num_muxs_in_next_stage - 1 + zero_mux_idx_in_next_stage;
						auto one_input_mux_idx = zero_input_mux_idx + 1;
						for (int w = 0; w < this->adder_depth_word_size; w++)
						{
							auto mux_output_var_idx = this->adder_depth_computation_input_mux_variables.at({r, idx, dir, mux_idx, w});
							auto zero_input_var_idx = this->adder_depth_computation_input_mux_variables.at(
								{r, idx, dir, zero_input_mux_idx, w});
							auto one_input_var_idx = this->adder_depth_computation_input_mux_variables.at(
								{r, idx, dir, one_input_mux_idx, w});
							this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, mux_select_var_idx, mux_output_var_idx);
						}
					}
					// increment current mux idx
					mux_idx++;
				}
			}
		}
	}
}

void cmm::create_adder_depth_computation_max_constraints(int idx, formulation_mode mode)
{
	
	// the VERY FIRST adder node must be connected to one of the inputs
	// -> with reconf: the max is equal to whether it has a mux at one of its inputs
	// -> without reconf: => the max is always zero
	if (idx == this->c_row_size())
	{
		for (int r = 0; r < this->c_num_configs(); r++) {
			if (this->model_reconfiguration()) {
				// OR-gate
				//auto a = this->adder_in_config_needs_mux_variables.at({r, idx, input_direction::left});
				//auto b = this->adder_in_config_needs_mux_variables.at({r, idx, input_direction::right});
				auto a = this->adder_needs_mux_variables.at({idx, input_direction::left});
				auto b = this->adder_needs_mux_variables.at({idx, input_direction::right});
				auto y = this->adder_depth_computation_max_variables.at({r, idx, 0});
				this->create_2x1_or(a, b, y);
				// set the rest to 0
				for (int w = 1; w < this->adder_depth_word_size; w++)
				{
					this->force_bit(this->adder_depth_computation_max_variables.at({r, idx, w}), 0);
				}
			}
			else {
				// set all to 0
				for (int w = 0; w < this->adder_depth_word_size; w++)
				{
					this->force_bit(this->adder_depth_computation_max_variables.at({r, idx, w}), 0);
				}
			}
		}
		return;
	}
	if (this->pipelining_enabled)
	{
		// no need to explicitly compute the max value for pipelined adder graphs
		// because both inputs come from the same pipeline stage
		return;
	}
	for (int r = 0; r < this->c_num_configs(); r++) {
		// compute c = max(a, b)
		int x_i = this->init_const_zero_bit();
		int y_i = this->init_const_zero_bit();
		for (int w = this->adder_depth_word_size - 1; w >= 0; w--)
		{
			int x_o;
			int y_o;
			if (w > 0)
			{
				x_o = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				y_o = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
			else
			{
				x_o = -1;
				y_o = -1;
			}
			int a_i;
			int b_i;
			if (this->model_reconfiguration()) {
				a_i = this->adder_depth_computation_input_post_mux_add_variables.at({r, idx, input_direction::left, w});
				b_i = this->adder_depth_computation_input_post_mux_add_variables.at({r, idx, input_direction::right, w});
			}
			else {
				a_i = this->adder_depth_computation_input_variables.at({r, idx, input_direction::left, w});
				b_i = this->adder_depth_computation_input_variables.at({r, idx, input_direction::right, w});
			}
			auto c_o = this->adder_depth_computation_max_variables.at({r, idx, w});
			this->create_max_cell(a_i, b_i, x_i, y_i, c_o, x_o, y_o);
			x_i = x_o;
			y_i = y_o;
		}
	}
}

void cmm::create_adder_depth_computation_add_constraints(int idx, formulation_mode mode)
{
	
	// increment by 1 to increase adder depth count
	// just use a ripple-carry adder based on half adders for this
	for (int r = 0; r < this->c_num_configs(); r++) {
		int b = this->init_const_one_bit();
		for (int w = 0; w < this->adder_depth_word_size; w++)
		{
			int c_o;
			if (w < this->adder_depth_word_size - 1)
			{
				c_o = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
			}
			else
			{
				c_o = -1;
			}
			auto a = this->adder_depth_computation_max_variables.at({r, idx, w});
			auto sum = this->adder_depth_variables.at({r, idx, w});
			this->create_half_adder({a, false}, {b, false}, {sum, false}, {c_o, false});
			b = c_o;
		}
	}
}

void cmm::create_adder_depth_computation_limit_constraints(int idx, cmm::formulation_mode mode)
{
	
	// prohibit solutions with too large adder depth
	int upper_limit = this->opt_adder_depth - 1;
	for (int r = 0; r < this->c_num_configs(); r++) {
		std::vector<std::pair<int, bool>> clause_prototype;
		for (int w = this->adder_depth_word_size - 1; w >= 0; w--)
		{
			auto upper_limit_bit = (upper_limit >> w) & 1;
			auto x_w = this->adder_depth_computation_max_variables.at({r, idx, w});
			if (upper_limit_bit)
			{
				clause_prototype.emplace_back(x_w, true);
			}
			else
			{
				auto clause = clause_prototype;
				clause.emplace_back(x_w, true);
				this->create_arbitrary_clause(clause);
			}
		}
	}
}

void cmm::get_solution_from_backend()
{
	// clear containers
	this->input_select.clear();
	this->input_select_mux_output.clear();
	this->shift_value.clear();
	this->other_shift_value.clear();
	this->negate_select.clear();
	this->subtract.clear();
	this->post_adder_shift_value.clear();
	this->add_result_values.clear();
	this->output_values.clear();
	this->output_node_assignments.clear();
	this->output_port_assignments.clear();
	this->output_shifts.clear();
	this->output_negations.clear();
	this->abs_coeff_values.clear();
	this->abs_coeff_sum_values.clear();
	this->coeff_word_size_values.clear();
	this->can_cut_msb_values.clear();
	this->coeff_word_size_sum_values.clear();
	this->shift_sum_values.clear();
	this->is_register.clear();
	this->is_bypassed_adder.clear();
	this->pipeline_stage.clear();
	this->num_FAs_value = 0;
	// get solution
	if (this->model_reconfiguration() and this->num_bypassed_adders > 0) {
		for (int idx = this->c_num_inputs(); idx < (this->num_adders + this->c_num_inputs()); idx++) {
			this->is_bypassed_adder[idx] = this->get_result_value(this->is_bypassed_adder_variables.at(idx));
		}
	}
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int idx = 0; idx < (this->num_adders + this->c_row_size()); idx++)
		{
			this->pipeline_stage[{r, idx}] = 0;
			for (int v = 0; v < this->c_row_size(); v++)
			{
				// output_values
				this->output_values[{r, idx, v}] = 0;
				for (int w = 0; w < this->word_size; w++)
				{
					this->output_values[{r, idx, v}] += (this->get_result_value(this->output_value_variables.at({r, idx, w, v})) << w);
				}
				if (this->calc_twos_complement)
					this->output_values[{r, idx, v}] = sign_extend(this->output_values[{r, idx, v}], this->word_size);
				if (idx >= this->c_row_size())
				{
					if (idx > 1)
					{
						// input_select
						for (auto &dir : this->input_directions)
						{
							auto input_select_width = this->ceil_log2(idx);
							this->input_select[{r, idx, dir}] = 0;
							for (auto w = 0; w < input_select_width; w++)
							{
								this->input_select[{r, idx, dir}] += (this->get_result_value(this->input_select_selection_variables[{r, idx, dir, w}]) << w);
							}
						}
					}
					else
					{
						this->input_select[{r, idx, input_direction::left}] = 0;
						this->input_select[{r, idx, input_direction::right}] = 0;
					}
					// shift_value
					this->shift_value[{r, idx}] = 0;
					for (auto w = 0; w < this->shift_word_size; w++)
					{
						this->shift_value[{r, idx}] += (this->get_result_value(this->input_shift_value_variables[{r, idx, w}])
														<< w);
					}
					if (this->model_reconfiguration())
					{
						// other shift_value
						this->other_shift_value[{r, idx}] = 0;
						for (auto w = 0; w < this->shift_word_size; w++)
						{
							this->other_shift_value[{r, idx}] += (this->get_result_value(this->input_other_shift_value_variables[{r, idx, w}])
																  << w);
						}
					}
					else
					{
						// negate_select
						this->negate_select[{r, idx}] = this->get_result_value(this->input_negate_select_variables[{r, idx}]);
					}
					// subtract
					this->subtract[{r, idx}] = this->get_result_value(this->input_negate_value_variables[{r, idx}]);
					// output shift
					if (this->enable_node_output_shift)
					{
						this->post_adder_shift_value[{r, idx}] = 0;
						for (auto w = 0; w < this->shift_word_size; w++)
						{
							this->post_adder_shift_value[{r, idx}] += (this->get_result_value(this->input_post_adder_shift_value_variables[{r, idx, w}]) << w);
						}
					}
					// add result
					this->add_result_values[{r, idx, v}] = 0;
					for (auto w = 0; w < this->word_size; w++)
					{
						this->add_result_values[{r, idx, v}] += (this->get_result_value(this->adder_output_value_variables[{r, idx, w, v}]) << w);
					}
					if (this->calc_twos_complement)
						this->add_result_values[{r, idx, v}] = sign_extend(this->add_result_values[{r, idx, v}], this->word_size);
					if (this->max_full_adders != FULL_ADDERS_UNLIMITED and r == 0)
					{
						// coeff word size internal
						for (auto w = this->word_size - 1; w >= 0; w--)
						{
							auto max_val = this->word_size - w;
							auto max_val_w = this->ceil_log2(max_val + 1);
							auto internal_val = 0;
							for (auto x = 0; x < max_val_w; x++)
							{
								auto bit_val = this->get_result_value(this->full_adder_coeff_word_size_internal_variables.at({idx, w, x}));
								internal_val += (bit_val << x);
							}
						}
						// abs coeff values
						this->abs_coeff_values[{idx, v}] = 0;
						for (auto w = 0; w < this->word_size; w++)
						{
							this->abs_coeff_values[{idx, v}] += (this->get_result_value(this->full_adder_coeff_word_size_abs_adder_value_variables.at({idx, v, w})) << w);
						}
						// abs coeff sum values
						this->abs_coeff_sum_values[idx] = 0;
						for (auto w = 0; w < this->abs_coefficient_sum_width; w++)
						{
							this->abs_coeff_sum_values[idx] += (this->get_result_value(this->full_adder_coeff_word_size_abs_sum_variables.at({idx, w})) << w);
						}
						// coeff word size
						this->coeff_word_size_values[idx] = 0;
						auto num_bits_word_size = this->ceil_log2(this->word_size + 1);
						for (auto w = 0; w < num_bits_word_size; w++)
						{
							this->coeff_word_size_values[idx] += (this->get_result_value(this->full_adder_coeff_word_size_variables.at({idx, w})) << w);
						}
						// cut msb (only for non-pipelined SCM/MCM)
						if (this->pipelining_enabled or this->c_row_size() > 1)
						{
							this->can_cut_msb_values[idx] = 0;
						}
						else
						{
							this->can_cut_msb_values[idx] = this->get_result_value(this->full_adder_msb_variables.at(idx));
						}
						// coeff word size sum
						this->coeff_word_size_sum_values[idx] = 0;
						auto coeff_sum_output_word_size = this->ceil_log2(((idx - this->c_row_size() + 1) * this->abs_coefficient_sum_width) + 1);
						for (auto w = 0; w < coeff_sum_output_word_size; w++)
						{
							this->coeff_word_size_sum_values[idx] += (this->get_result_value(this->full_adder_word_size_sum_variables.at({idx, w})) << w);
						}
						// shift gain (only for non-pipelined)
						this->shift_gain_values[idx] = 0;
						for (auto w = 0; w < this->shift_word_size and !this->pipelining_enabled; w++)
						{
							this->shift_gain_values[idx] += (this->get_result_value(this->full_adder_shift_gain_variables.at({idx, w})) << w);
						}
						// shift sum (only for non-pipelined)
						this->shift_sum_values[idx] = 0;
						auto shift_sum_output_word_size = this->ceil_log2(((idx - this->c_row_size() + 1) * this->max_shift) + 1);
						for (auto w = 0; w < shift_sum_output_word_size and !this->pipelining_enabled; w++)
						{
							this->shift_sum_values[idx] += (this->get_result_value(this->full_adder_shift_sum_variables.at({idx, w})) << w);
						}
					}
				}
			}
			if (this->max_full_adders != FULL_ADDERS_UNLIMITED and r == 0)
			{
				// number of FAs
				this->num_FAs_value = 0;
				auto input_word_size_add = this->ceil_log2(this->word_size * this->num_adders + 1);
				int input_word_size_sub = this->get_word_size_sub();
				int output_word_size;
				if (this->pipelining_enabled)
				{
					output_word_size = input_word_size_add;
				}
				else
				{
					output_word_size = std::max(input_word_size_add, input_word_size_sub) + 1;
				}
				for (auto w = 0; w < output_word_size; w++)
				{
					this->num_FAs_value += (this->get_result_value(this->full_adder_result_variables.at(w)) << w);
				}
				this->num_FAs_value = this->sign_extend(this->num_FAs_value, output_word_size);
			}
		}
	}
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int idx = this->c_row_size(); idx < this->num_adders + this->c_row_size(); idx++) {
			if (this->pipelining_enabled and idx >= this->c_row_size())
			{
				bool identical_to_l = true;
				bool identical_to_r = true;
				for (int r = 0; r < this->c_num_configs(); r++) {
					auto idx_l = this->input_select.at({r, idx, input_direction::left});
					auto idx_r = this->input_select.at({r, idx, input_direction::right});
					for (int i = 0; i < this->c_row_size(); i++)
					{
						if (this->output_values.at({r, idx, i}) != this->output_values.at({r, idx_l, i}))
							identical_to_l = false;
						if (this->output_values.at({r, idx, i}) != this->output_values.at({r, idx_r, i}))
							identical_to_r = false;
					}
				}
				this->is_register[idx] = identical_to_l or identical_to_r;
				for (int r = 0; r < this->c_num_configs(); r++) {
					this->pipeline_stage[{r, idx}] = 0;
					for (int w = 0; w < this->adder_depth_word_size; w++)
					{
						auto val = this->get_result_value(this->adder_depth_variables.at({r, idx, w}));
						val = this->get_result_value(this->adder_depth_computation_max_variables.at({r, idx, w}));
						if (idx > this->c_row_size())
						{
							val = this->get_result_value(
								this->adder_depth_computation_input_variables.at({r, idx, input_direction::left, w}));
							val = this->get_result_value(
								this->adder_depth_computation_input_variables.at({r, idx, input_direction::right, w}));
							if (this->model_reconfiguration()) {
								val = this->get_result_value(
									this->adder_depth_computation_input_post_mux_add_variables.at({r, idx, input_direction::left, w}));
								val = this->get_result_value(
									this->adder_depth_computation_input_post_mux_add_variables.at({r, idx, input_direction::right, w}));
							}
						}
						this->pipeline_stage[{r, idx}] += (this->get_result_value(this->adder_depth_variables.at({r, idx, w})) << w);
					}
				}
			}
		}
		// output node assignments
		int output_port_cnt = 0;
		for (size_t req_vec_idx = 0; req_vec_idx < this->requested_vectors.size(); req_vec_idx++) {
		//for (auto &req_vec_it : this->requested_vectors) {
			auto &req_vec_it = this->requested_vectors.at(req_vec_idx);
			if (r != req_vec_it.first.first) continue;
			auto requested_vec = req_vec_it.first.second;
			// update port counter
			output_port_cnt = 0;
			for (auto &output_port_assignment_it : this->output_port_assignments) {
				if (this->requested_vectors.at(output_port_assignment_it.first).first.first != r) continue;
				output_port_cnt++;
			}
			// determine m
			int m = this->coeff_idx_mapping.at(req_vec_idx);
			if (this->model_reconfiguration()) {
				int output_idx = -1;
				bool negated_version;
				for (auto &var_it : this->mcm_output_variables) {
					auto r_it = std::get<0>(var_it.first);
					auto m_it = std::get<2>(var_it.first);
					auto var = var_it.second;
					if (r != r_it) continue;
					if (abs(m) != abs(m_it)) continue;
					if (!this->get_result_value(var)) {
						continue;
					}
					negated_version = m != m_it;
					output_idx = std::get<1>(var_it.first);
				}
				if (output_idx < 0) {
					throw std::runtime_error("Error when assigning output ports for reconfigurability (failed to find corresponding SAT variable) -> that should never happen :-(");
				}
				// determine adder node idx
				int idx = 0;
				int select_word_size = this->ceil_log2(this->num_adders + this->c_num_inputs());
				for (int w = 0; w < select_word_size; w++) {
					idx += (this->get_result_value(this->input_output_select_selection_variables.at({r, output_idx, w})) << w);
				}
				// determine shift
				int shift = 0;
				for (int w = 0; w < this->shift_word_size; w++) {
					shift += (this->get_result_value(this->input_output_shift_value_variables.at({r, output_idx, w})) << w);
				}
				// determine inversion
				int inv = this->get_result_value(this->input_output_negate_value_variables.at({r, output_idx}));
				if (negated_version) inv = 1 - inv;
				// assign
				this->output_node_assignments[{r, m}] = idx;
				this->output_shifts[{r, m}] = shift;
				this->output_negations[{r, m}] = inv;
				this->output_node_assignments[{r, -m}] = idx;
				this->output_shifts[{r, -m}] = shift;
				this->output_negations[{r, -m}] = 1-inv;
				this->output_port_assignments[req_vec_idx] = output_idx;
			}
			else {
				// first try -> find the negated version
				int node_idx = -1;
				for (auto &var_it : this->mcm_output_variables) {
					auto r_it = std::get<0>(var_it.first);
					auto m_it = std::get<2>(var_it.first);
					auto var = var_it.second;
					if (r != r_it) continue;
					if (m != -m_it) continue;
					if (!this->get_result_value(var)) continue;
					node_idx = std::get<1>(var_it.first);
				}
				// second try -> find the original version (and override if necessary)
				for (auto &var_it : this->mcm_output_variables) {
					auto r_it = std::get<0>(var_it.first);
					auto m_it = std::get<2>(var_it.first);
					auto var = var_it.second;
					if (r != r_it) continue;
					if (m != m_it) continue;
					if (!this->get_result_value(var)) continue;
					node_idx = std::get<1>(var_it.first);
				}
				if (node_idx < 0) {
					if (!cmm::is_power_of_two_vector(requested_vec)) {
						throw std::runtime_error("Error when assigning output ports (failed to find corresponding SAT variable) -> that should never happen :-(");
					}
					for (int i=0; i<requested_vec.size(); i++) {
						if (requested_vec[i] != 0) {
							node_idx = i;
							break;
						}
					}
				}
				// assign
				this->output_node_assignments[{r, m}] = node_idx;
				this->output_port_assignments[req_vec_idx] = output_port_cnt;
			}
		}
	}
	// adjust reconfiguration sharing value
	if (this->model_reconfiguration()) {
		auto reconf_value_word_size = this->ceil_log2(this->upper_bound_max_sharing_value + 1);
		this->num_reconf_sharing_value = 0;
		for (int w = 0; w < reconf_value_word_size; w++) {
			this->num_reconf_sharing_value += (this->get_result_value(this->config_sharing_result_variables.at(w)) << w);
		}
	}
}

void cmm::print_solution()
{
	// print failure
	if (!this->found_solution)
	{
		std::cout << "Failed to find solution for constant multiplication for the following problem instance:" << std::endl;
		std::cout << this->get_matrix_as_pretty_string(this->C) << std::endl;
		return;
	}
	// found solution! -> print general info
	std::cout << "Found solution!" << std::endl;
	std::cout << "#adders = " << this->num_adders << ", word size = " << this->word_size << std::endl;
	// print nodes
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		if (this->c_num_configs() > 1)
		{
			std::cout << "-> CONFIGURATION #" << r << ":" << std::endl;
		}
		for (auto idx = 0; idx < (this->num_adders + this->c_row_size()); idx++)
		{
			std::stringstream const_value_as_str;
			const_value_as_str << "[";
			for (int v = 0; v < this->c_row_size(); v++)
			{
				if (v > 0)
					const_value_as_str << ",";
				const_value_as_str << (this->calc_twos_complement ? sign_extend((int64_t)this->output_values[{r, idx, v}],
																				this->word_size)
																  : this->output_values[{r, idx, v}]);
			}
			const_value_as_str << "]";
			std::cout << "  node #" << idx << " = "
					  << const_value_as_str.str()
					  << std::endl;
			if (idx < this->c_row_size())
				continue;
			std::cout << "    left input: node " << this->input_select[{r, idx, cmm::left}] << std::endl;
			std::cout << "    right input: node " << this->input_select[{r, idx, cmm::right}] << std::endl;
			if (this->model_reconfiguration())
			{
				std::cout << "    left input shift value: " << this->shift_value[{r, idx}] << std::endl;
				std::cout << "    right input shift value: " << this->other_shift_value[{r, idx}] << std::endl;
			}
			else
			{
				std::cout << "    shift value: " << this->shift_value[{r, idx}] << std::endl;
				std::cout << "    negate select: " << this->negate_select[{r, idx}]
						  << (this->negate_select[{r, idx}] == 1 ? " (non-shifted)" : " (shifted)") << std::endl;
			}
			std::cout << "    subtract: " << this->subtract[{r, idx}] << std::endl;
			if (this->enable_node_output_shift)
			{
				std::cout << "    post adder right shift value: " << this->post_adder_shift_value[{r, idx}] << std::endl;
			}
			if (this->pipelining_enabled)
			{
				std::cout << "    register: " << this->is_register[idx] << std::endl;
				std::cout << "    pipeline stage: " << this->pipeline_stage[{r, idx}] << std::endl;
			}
		}
	}
	// lastly, print adder graph
	this->adder_graph_str = this->get_adder_graph_description();
	std::cerr << "Adder graph: " << adder_graph_str << std::endl;
}

bool cmm::solution_is_valid()
{
	bool valid = true;
	if (this->const_one_bit > 0)
	{
		int expected_value = 1;
		int actual_value = this->get_result_value(this->const_one_bit);
		if (this->verbosity == verbosity_mode::debug_mode)
		{
			std::cout << "const one bit" << std::endl;
			std::cout << "  expected value = " << expected_value << std::endl;
			std::cout << "  actual value = " << actual_value << std::endl;
		}
		if (expected_value != actual_value)
		{
			std::cout << "const one bit has invalid value" << std::endl;
			std::cout << "  expected value = " << expected_value << std::endl;
			std::cout << "  actual value = " << actual_value << std::endl;
			valid = false;
		}
	}
	if (this->const_zero_bit > 0)
	{
		int expected_value = 0;
		int actual_value = this->get_result_value(this->const_zero_bit);
		if (this->verbosity == verbosity_mode::debug_mode)
		{
			std::cout << "const zero bit" << std::endl;
			std::cout << "  expected value = " << expected_value << std::endl;
			std::cout << "  actual value = " << actual_value << std::endl;
		}
		if (expected_value != actual_value)
		{
			std::cout << "const zero bit has invalid value" << std::endl;
			std::cout << "  expected value = " << expected_value << std::endl;
			std::cout << "  actual value = " << actual_value << std::endl;
			valid = false;
		}
	}
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int idx = this->c_row_size(); idx < (this->num_adders + this->c_row_size()); idx++)
		{
			for (int v = 0; v < this->c_row_size(); v++)
			{
				// verify node inputs
				int64_t input_node_idx_l = 0;
				int64_t input_node_idx_r = 0;

				int64_t actual_input_value_l = 1 << this->fundamental_fractional_bits;
				int64_t actual_input_value_r = 1 << this->fundamental_fractional_bits;

				if (idx > 1)
				{
					for (auto &dir : this->input_directions)
					{
						for (auto w = 0; w < this->word_size; w++)
						{
							this->input_select_mux_output[{r, idx, dir, v}] += (this->get_result_value(this->input_select_mux_output_variables[{r, idx, dir, w, v}]) << w);
						}
					}
					if (this->calc_twos_complement)
						this->input_select_mux_output[{r, idx, cmm::left, v}] = sign_extend(
							this->input_select_mux_output[{r, idx, cmm::left, v}], this->word_size);
					if (this->calc_twos_complement)
						this->input_select_mux_output[{r, idx, cmm::right, v}] = sign_extend(
							this->input_select_mux_output[{r, idx, cmm::right, v}], this->word_size);
					input_node_idx_l = this->input_select[{r, idx, cmm::left}];
					input_node_idx_r = this->input_select[{r, idx, cmm::right}];
					actual_input_value_l = this->input_select_mux_output[{r, idx, cmm::left, v}];
					actual_input_value_r = this->input_select_mux_output[{r, idx, cmm::right, v}];
				}
				else
				{
					// input node
					this->input_select_mux_output[{r, idx, cmm::left, v}] = this->input_select_mux_output[{r, idx, cmm::right, v}] = (1 << this->fundamental_fractional_bits);
				}

				int64_t left_input_value = this->output_values[{r, input_node_idx_l, v}];
				int64_t right_input_value = this->output_values[{r, input_node_idx_r, v}];
				if (this->verbosity == verbosity_mode::debug_mode)
				{
					std::cout << "node #" << idx << " left input" << std::endl;
					std::cout << "  input select = " << input_node_idx_l << std::endl;
					std::cout << "  value = " << actual_input_value_l << std::endl;
				}
				if (left_input_value != actual_input_value_l)
				{
					std::cout << "node #" << idx << " has invalid left input" << std::endl;
					std::cout << "  input select = " << input_node_idx_l << std::endl;
					std::cout << "  expected value " << left_input_value << " but got " << actual_input_value_l
							  << std::endl;
					auto num_muxs = (1 << this->ceil_log2(idx)) - 1;
					for (int mux_idx = 0; mux_idx < num_muxs; mux_idx++)
					{
						int64_t mux_output = 0;
						for (auto w = 0; w < this->word_size; w++)
						{
							mux_output += (this->get_result_value(
											   this->input_select_mux_variables[{r, idx, cmm::left, mux_idx, w, v}])
										   << w);
						}
						std::cout << "    mux #" << mux_idx << " output: " << mux_output << std::endl;
					}
					valid = false;
				}
				if (this->verbosity == verbosity_mode::debug_mode)
				{
					std::cout << "node #" << idx << " right input" << std::endl;
					std::cout << "  input select = " << input_node_idx_r << std::endl;
					std::cout << "  value = " << actual_input_value_r << std::endl;
				}
				if (right_input_value != actual_input_value_r)
				{
					std::cout << "node #" << idx << " has invalid right input" << std::endl;
					std::cout << "  input select = " << input_node_idx_r << std::endl;
					std::cout << "  expected value " << right_input_value << " but got " << actual_input_value_r
							  << std::endl;
					int64_t num_muxs = (1 << this->ceil_log2(idx)) - 1;
					for (int mux_idx = 0; mux_idx < num_muxs; mux_idx++)
					{
						int64_t mux_output = 0;
						for (auto w = 0; w < this->word_size; w++)
						{
							mux_output += (this->get_result_value(
											   this->input_select_mux_variables[{r, idx, cmm::right, mux_idx, w, v}])
										   << w);
						}
						std::cout << "    mux #" << mux_idx << " output: " << mux_output << std::endl;
					}
					valid = false;
				}

				// verify shifter output
				int64_t expected_shift_output = (((int64_t)left_input_value)
												 << this->shift_value[{r, idx}]);
				if (this->calc_twos_complement)
					expected_shift_output = sign_extend(expected_shift_output, this->word_size);
				int64_t actual_shift_output = 0;
				for (int w = 0; w < this->word_size; w++)
				{
					actual_shift_output += (this->get_result_value(this->shift_output_variables[{r, idx, w, v}]) << w);
				}
				if (this->calc_twos_complement)
					actual_shift_output = sign_extend(actual_shift_output, this->word_size);
				if (this->verbosity == verbosity_mode::debug_mode)
				{
					std::cout << "node #" << idx << " shift output" << std::endl;
					std::cout << "  input value = " << left_input_value << std::endl;
					std::cout << "  shift value = " << this->shift_value[{r, idx}] << std::endl;
					std::cout << "  output value = " << actual_shift_output << std::endl;
				}
				if (expected_shift_output != actual_shift_output)
				{
					std::cout << "node #" << idx << " has invalid shift output" << std::endl;
					std::cout << "  input value = " << left_input_value << std::endl;
					std::cout << "  shift value = " << this->shift_value[{r, idx}] << std::endl;
					std::cout << "  expected output value = " << expected_shift_output << std::endl;
					std::cout << "  actual output value = " << actual_shift_output << std::endl;
					valid = false;
				}
				// verify other shifter output
				int64_t expected_other_shift_output = (((int64_t)right_input_value)
													   << this->other_shift_value[{r, idx}]);
				int64_t actual_other_shift_output = 0;
				if (this->model_reconfiguration())
				{
					if (this->calc_twos_complement)
						expected_other_shift_output = sign_extend(expected_other_shift_output, this->word_size);

					for (int w = 0; w < this->word_size; w++)
					{
						actual_other_shift_output += (this->get_result_value(this->other_shift_output_variables[{r, idx, w, v}]) << w);
					}
					if (this->calc_twos_complement)
						actual_other_shift_output = sign_extend(actual_other_shift_output, this->word_size);
					if (this->verbosity == verbosity_mode::debug_mode)
					{
						std::cout << "node #" << idx << " other shift output" << std::endl;
						std::cout << "  input value = " << right_input_value << std::endl;
						std::cout << "  shift value = " << this->other_shift_value[{r, idx}] << std::endl;
						std::cout << "  output value = " << actual_other_shift_output << std::endl;
					}
					if (expected_other_shift_output != actual_other_shift_output)
					{
						std::cout << "node #" << idx << " has invalid other shift output" << std::endl;
						std::cout << "  input value = " << right_input_value << std::endl;
						std::cout << "  shift value = " << this->other_shift_value[{r, idx}] << std::endl;
						std::cout << "  expected output value = " << expected_other_shift_output << std::endl;
						std::cout << "  actual output value = " << actual_other_shift_output << std::endl;
						valid = false;
					}
				}
				// verify negate mux outputs
				int64_t negate_mux_output_l = actual_shift_output;
				int64_t negate_mux_output_r = right_input_value;
				if (!this->model_reconfiguration())
				{
					if (this->get_result_value(this->input_negate_select_variables[{r, idx}]) == 0)
					{
						negate_mux_output_l = right_input_value;
						negate_mux_output_r = actual_shift_output;
					}
					std::map<cmm::input_direction, int64_t> actual_negate_mux_output;
					for (auto &dir : this->input_directions)
					{
						for (auto w = 0; w < this->word_size; w++)
						{
							actual_negate_mux_output[dir] += (this->get_result_value(this->negate_select_output_variables[{r, idx, dir, w, v}]) << w);
						}
					}
					auto left_negate_mux_output_before_twos_complement = actual_negate_mux_output[cmm::left];
					auto right_negate_mux_output_before_twos_complement = actual_negate_mux_output[cmm::right];
					if (this->calc_twos_complement)
						actual_negate_mux_output[cmm::left] = sign_extend(actual_negate_mux_output[cmm::left], this->word_size);
					if (this->calc_twos_complement)
						actual_negate_mux_output[cmm::right] = sign_extend(actual_negate_mux_output[cmm::right],
																		   this->word_size);
					std::string before_sign_inversion_info;
					if (this->calc_twos_complement)
						before_sign_inversion_info = " (before sign inversion: " + std::to_string(left_negate_mux_output_before_twos_complement) + ")";
					if (this->verbosity == verbosity_mode::debug_mode)
					{
						std::cout << "node #" << idx << " left negate select mux output" << std::endl;
						std::cout << "  select = " << this->get_result_value(this->input_negate_select_variables[{r, idx}])
								  << std::endl;
						std::cout << "  output value = " << actual_negate_mux_output[cmm::left] << before_sign_inversion_info << std::endl;
					}
					if (negate_mux_output_l != actual_negate_mux_output[cmm::left])
					{
						std::cout << "node #" << idx << " has invalid left negate select mux output" << std::endl;
						std::cout << "  select = " << this->get_result_value(this->input_negate_select_variables[{r, idx}])
								  << std::endl;

						std::string bits;
						std::string indices;
						for (int w = this->word_size - 1; w >= 0; w--)
						{
							int var_index = this->negate_select_output_variables[{r, idx, cmm::left, w, v}];
							int bit = this->get_result_value(var_index);
							bits += std::to_string(bit);
							indices += " " + std::to_string(var_index);
						}
						std::cout << "  actual value = " << actual_negate_mux_output[cmm::left] << before_sign_inversion_info << std::endl;
						std::cout << "  expected value = " << negate_mux_output_l << std::endl;
						valid = false;
					}

					if (this->calc_twos_complement)
						before_sign_inversion_info = " (before sign inversion: " + std::to_string(right_negate_mux_output_before_twos_complement) + ")";
					if (this->verbosity == verbosity_mode::debug_mode)
					{
						std::cout << "node #" << idx << " right negate select mux output" << std::endl;
						std::cout << "  select = " << this->get_result_value(this->input_negate_select_variables[{r, idx}])
								  << std::endl;
						std::cout << "  output value = " << actual_negate_mux_output[cmm::right] << before_sign_inversion_info << std::endl;
					}
					if (negate_mux_output_r != actual_negate_mux_output[cmm::right])
					{
						std::cout << "node #" << idx << " has invalid right negate select mux output" << std::endl;
						std::cout << "  select = " << this->get_result_value(this->input_negate_select_variables[{r, idx}])
								  << std::endl;
						std::string bits;
						std::string indices;
						for (int w = this->word_size - 1; w >= 0; w--)
						{
							int var_index = this->negate_select_output_variables[{r, idx, cmm::right, w, v}];
							int bit = this->get_result_value(var_index);
							bits += std::to_string(bit);
							indices += " " + std::to_string(var_index);
						}
						std::cout << "  actual value = " << actual_negate_mux_output[cmm::right] << before_sign_inversion_info << std::endl;
						std::cout << "  expected value = " << negate_mux_output_r << std::endl;
						valid = false;
					}
				}

				// verify xor output
				int64_t sub = this->get_result_value(this->input_negate_value_variables[{r, idx}]);
				int64_t actual_xor_input_value;
				if (this->model_reconfiguration())
				{
					actual_xor_input_value = actual_other_shift_output;
				}
				else
				{
					actual_xor_input_value = negate_mux_output_r;
				}
				int64_t expected_xor_output = sub == 1 ? (~actual_xor_input_value) & ((((int64_t)1) << this->word_size) - 1) : actual_xor_input_value;

				if (this->calc_twos_complement)
					expected_xor_output = sign_extend(expected_xor_output, this->word_size);
				int64_t actual_xor_output = 0;
				for (int w = 0; w < this->word_size; w++)
				{
					actual_xor_output += (this->get_result_value(this->xor_output_variables[{r, idx, w, v}]) << w);
				}
				if (this->calc_twos_complement)
					actual_xor_output = sign_extend(actual_xor_output, this->word_size);
				if (this->verbosity == verbosity_mode::debug_mode)
				{
					std::cout << "node #" << idx << " xor output" << std::endl;
					std::cout << "  sub = " << sub << std::endl;
					std::cout << "  input value = " << actual_xor_input_value << std::endl;
					std::cout << "  output value = " << actual_xor_output << std::endl;
				}
				if (expected_xor_output != actual_xor_output)
				{
					std::cout << "node #" << idx << " has invalid xor output" << std::endl;
					std::cout << "  sub = " << sub << std::endl;
					std::cout << "  input value = " << actual_xor_input_value << std::endl;
					std::cout << "  actual output value = " << actual_xor_output << std::endl;
					std::cout << "  expected output value = " << expected_xor_output << std::endl;
					valid = false;
				}
				// verify adder output
				int64_t actual_left_adder_input;
				int64_t actual_right_adder_input;
				if (this->model_reconfiguration())
				{
					actual_left_adder_input = actual_shift_output;
					actual_right_adder_input = actual_other_shift_output;
				}
				else
				{
					actual_left_adder_input = negate_mux_output_l;
					actual_right_adder_input = negate_mux_output_r;
				}
				int64_t expected_adder_output = (sub == 1) ? (actual_left_adder_input - actual_right_adder_input) : (actual_left_adder_input + actual_right_adder_input);
				if (this->calc_twos_complement)
					expected_adder_output = sign_extend(expected_adder_output, this->word_size);
				int64_t actual_adder_output = 0;
				for (int w = 0; w < this->word_size; w++)
				{
					actual_adder_output += (this->get_result_value(this->adder_output_value_variables[{r, idx, w, v}]) << w);
				}
				if (this->calc_twos_complement)
					actual_adder_output = sign_extend(actual_adder_output, this->word_size);
				if (this->verbosity == verbosity_mode::debug_mode)
				{
					std::cout << "node #" << idx << " adder output value" << std::endl;
					std::cout << "  sub = " << sub << std::endl;
					std::cout << "  left input value = " << actual_left_adder_input << std::endl;
					std::cout << "  right input value = " << actual_xor_output << std::endl;
					std::cout << "  actual output value = " << actual_adder_output << std::endl;
				}
				if (expected_adder_output != actual_adder_output)
				{
					std::cout << "node #" << idx << " has invalid adder output value" << std::endl;
					std::cout << "  sub = " << sub << std::endl;
					std::cout << "  left input value = " << actual_left_adder_input << std::endl;
					std::cout << "  right input value = " << actual_xor_output << std::endl;
					std::cout << "  expected output value = " << expected_adder_output << std::endl;
					std::cout << "  actual output value = " << actual_adder_output << std::endl;
					valid = false;
				}

				if (this->enable_node_output_shift)
				{
					// verify post adder shift output
					int64_t expected_post_adder_shift_output = actual_adder_output >> this->post_adder_shift_value.at({r, idx});
					if (this->calc_twos_complement)
						expected_post_adder_shift_output = sign_extend(expected_post_adder_shift_output, this->word_size);
					int64_t actual_post_adder_shift_output = 0;
					for (int w = 0; w < this->word_size; w++)
					{
						actual_post_adder_shift_output += (this->get_result_value(this->post_adder_shift_output_variables[{r, idx, w, v}]) << w);
					}
					if (this->calc_twos_complement)
						actual_post_adder_shift_output = sign_extend(actual_post_adder_shift_output, this->word_size);
					if (this->verbosity == verbosity_mode::debug_mode)
					{
						std::cout << "node #" << idx << " post adder shift output value" << std::endl;
						std::cout << "  shift value = " << this->post_adder_shift_value.at({r, idx}) << std::endl;
						std::cout << "  input value = " << actual_adder_output << std::endl;
						std::cout << "  actual output value = " << actual_post_adder_shift_output << std::endl;
					}
					if (expected_post_adder_shift_output != actual_post_adder_shift_output)
					{
						std::cout << "node #" << idx << " has invalid post adder shift output value" << std::endl;
						std::cout << "  shift value = " << this->post_adder_shift_value.at({r, idx}) << std::endl;
						std::cout << "  input value = " << actual_adder_output << std::endl;
						std::cout << "  expected output value = " << expected_post_adder_shift_output << std::endl;
						std::cout << "  actual output value = " << actual_post_adder_shift_output << std::endl;
						valid = false;
					}
				}
				// verify pipelining
				if (this->pipelining_enabled or this->opt_adder_depth) {
					// determine all relevant stages
					int current_stage = 0;
					int input_stage_l = 0;
					int input_stage_r = 0;
					bool needs_reconf_mux_l = false;
					bool needs_reconf_mux_r = false;
					bool needs_reconf_mux_l_var = false;
					bool needs_reconf_mux_r_var = false;
					for (int w = 0; w < this->adder_depth_word_size; w++) {
						auto current_stage_var = this->adder_depth_variables.at({r, idx, w});
						auto input_stage_l_var = idx > 1 ? this->adder_depth_variables.at({r, input_node_idx_l, w}) : 0;
						auto input_stage_r_var = idx > 1 ? this->adder_depth_variables.at({r, input_node_idx_r, w}) : 0;
						current_stage += (this->get_result_value(current_stage_var) << w);
						input_stage_l += (this->get_result_value(input_stage_l_var) << w);
						input_stage_r += (this->get_result_value(input_stage_r_var) << w);
					}
					if (this->model_reconfiguration()) {
						// in reconfiguration mode, we need to also account for input multiplexers, since they also have a register on their output
						auto first_src_l = this->input_select[{0, idx, cmm::left}];
						auto first_src_r = this->input_select[{0, idx, cmm::right}];
						auto first_shift_l = this->shift_value[{0, idx}];
						auto first_shift_r = this->other_shift_value[{0, idx}];
						bool input_l_all_sources_equal = true;
						bool input_r_all_sources_equal = true;
						bool input_l_all_shifts_equal = true;
						bool input_r_all_shifts_equal = true;
						for (int r_it = 1; r_it < this->c_num_configs(); r_it++) {
							if (this->input_select[{r_it, idx, cmm::left}] != first_src_l) input_l_all_sources_equal = false;
							if (this->input_select[{r_it, idx, cmm::right}] != first_src_r) input_r_all_sources_equal = false;
							if (this->shift_value[{r_it, idx}] != first_shift_l) input_l_all_shifts_equal = false;
							if (this->other_shift_value[{r_it, idx}] != first_shift_r) input_r_all_shifts_equal = false;
						}
						if (!input_l_all_sources_equal or !input_l_all_shifts_equal) {
							input_stage_l++;
							needs_reconf_mux_l = true;
						}
						if (!input_r_all_sources_equal or !input_r_all_shifts_equal) {
							input_stage_r++;
							needs_reconf_mux_r = true;
						}
						// does the solver agree?
						needs_reconf_mux_l_var = this->get_result_value(this->adder_needs_mux_variables.at({idx, cmm::left})) == 1;
						needs_reconf_mux_r_var = this->get_result_value(this->adder_needs_mux_variables.at({idx, cmm::right})) == 1;
						if (this->verbosity == verbosity_mode::debug_mode)
						{
							std::cout << "node #" << idx << " needs mux at left input according to solver: " << needs_reconf_mux_l_var << std::endl;
							std::cout << "node #" << idx << " needs mux at right input according to solver: " << needs_reconf_mux_r_var << std::endl;
							std::cout << "node #" << idx << " needs mux at left input according to configuration: " << needs_reconf_mux_l << std::endl;
							std::cout << "node #" << idx << " needs mux at right input according to configuration: " << needs_reconf_mux_r << std::endl;
							if (needs_reconf_mux_l != needs_reconf_mux_l_var)
							{
								std::cout << "node #" << idx << " multiplexer need mismatch!" << std::endl;
								std::cout << "  (left) actual: " << needs_reconf_mux_l << std::endl;
								std::cout << "  (left) according to solver: " << needs_reconf_mux_l_var << std::endl;
								for (auto r_it = 0; r_it < this->c_num_configs()-1; r_it++) {
									std::cout << "    config " << r_it << ": " << this->get_result_value(this->adder_in_config_needs_mux_variables.at({r_it, idx, cmm::left})) << std::endl;
									for (auto r2 = r_it+1; r2 < this->c_num_configs(); r2++) {
										std::cout << "      sharing between " << r_it << " and " << r2 << ": " << this->get_result_value(this->config_can_be_shared_variables.at({r_it, r2, idx, cmm::left})) << std::endl;
									}
								}
							}
							if (needs_reconf_mux_r != needs_reconf_mux_r_var)
							{
								std::cout << "node #" << idx << " multiplexer need mismatch!" << std::endl;
								std::cout << "  (right) actual: " << needs_reconf_mux_r << std::endl;
								std::cout << "  (right) according to solver: " << needs_reconf_mux_r_var << std::endl;
								for (auto r_it = 0; r_it < this->c_num_configs()-1; r_it++) {
									std::cout << "    config " << r_it << ": " << this->get_result_value(this->adder_in_config_needs_mux_variables.at({r_it, idx, cmm::right})) << std::endl;
									for (auto r2 = r_it+1; r2 < this->c_num_configs(); r2++) {
										std::cout << "      sharing between " << r_it << " and " << r2 << ": " << this->get_result_value(this->config_can_be_shared_variables.at({r_it, r2, idx, cmm::right})) << std::endl;
									}
								}
							}
						}
					}
					// correct stages -> sometimes the solver allocates a multiplexer which is not needed in order to balance the pipeline
					if (!needs_reconf_mux_l and needs_reconf_mux_l_var and current_stage - input_stage_l == 2) {
						input_stage_l++;
					}
					if (!needs_reconf_mux_r and needs_reconf_mux_r_var and current_stage - input_stage_r == 2) {
						input_stage_r++;
					}
					// verify stages
					if (this->verbosity == verbosity_mode::debug_mode)
					{
						std::cout << "node #" << idx << " stage" << std::endl;
						std::cout << "  current stage = " << current_stage << std::endl;
						std::cout << "  input stage (left) = " << input_stage_l << (needs_reconf_mux_l?" (incl. mux)":"") << std::endl;
						std::cout << "  input stage (right) = " << input_stage_r << (needs_reconf_mux_r?" (incl. mux)":"") << std::endl;
					}
					if (pipelining_enabled) {
						if (current_stage != input_stage_l + 1 or current_stage != input_stage_r + 1)
						{
							std::cout << "node #" << idx << (this->model_reconfiguration()?" in config "+std::to_string(r):"") << " has invalid pipeline stage" << std::endl;
							std::cout << "  current stage = " << current_stage << std::endl;
							std::cout << "  input stage (left) = " << input_stage_l << (needs_reconf_mux_l?" (incl. mux)":"") << std::endl;
							std::cout << "  input stage (right) = " << input_stage_r << (needs_reconf_mux_r?" (incl. mux)":"") << std::endl;
							valid = false;
						}
					}
					else {
						if (current_stage != std::max(input_stage_l + 1, input_stage_r + 1))
						{
							std::cout << "node #" << idx << (this->model_reconfiguration()?" in config "+std::to_string(r):"") << " has invalid pipeline stage" << std::endl;
							std::cout << "  current stage = " << current_stage << std::endl;
							std::cout << "  input stage (left) = " << input_stage_l << (needs_reconf_mux_l?" (incl. mux)":"") << std::endl;
							std::cout << "  input stage (right) = " << input_stage_r << (needs_reconf_mux_r?" (incl. mux)":"") << std::endl;
							valid = false;
						}
					}
				}
			} // loop over this->c_row_size()
			if (this->max_full_adders != FULL_ADDERS_UNLIMITED and r == 0)
			{
				// coeff word size
				int expected_abs_add_result = 0;
				for (int v = 0; v < this->c_row_size(); v++)
				{
					auto actual_abs_value = this->abs_coeff_values.at({idx, v});
					int expected_abs_value;
					if (this->pipelining_enabled)
					{
						// word size based on output value
						expected_abs_value = std::abs(this->output_values.at({RECONF_CONST, idx, v}));
					}
					else
					{
						// word size based on adder
						expected_abs_value = std::abs(this->add_result_values.at({RECONF_CONST, idx, v}));
					}
					if (this->verbosity == verbosity_mode::debug_mode)
					{
						std::cout << "node #" << idx << " abs add result value at position " << v << std::endl;
						std::cout << "  actual abs value = " << actual_abs_value << std::endl;
					}
					if (actual_abs_value != expected_abs_value)
					{
						std::cout << "node #" << idx << " has invalid abs add result value at position " << v << std::endl;
						std::cout << "  expected abs value = " << expected_abs_value << std::endl;
						std::cout << "  actual abs value = " << actual_abs_value << std::endl;
						valid = false;
					}
					expected_abs_add_result += expected_abs_value;
				}
				auto actual_abs_add_result = this->abs_coeff_sum_values.at(idx);
				if (this->verbosity == verbosity_mode::debug_mode)
				{
					std::cout << "node #" << idx << " abs add result sum" << std::endl;
					std::cout << "  actual abs add result sum = " << actual_abs_add_result << std::endl;
				}
				if (expected_abs_add_result != actual_abs_add_result)
				{
					std::cout << "node #" << idx << " has invalid abs add result sum" << std::endl;
					std::cout << "  expected abs add result sum = " << expected_abs_add_result << std::endl;
					std::cout << "  actual abs add result sum = " << actual_abs_add_result << std::endl;
					valid = false;
				}
				int expected_add_result_word_size;
				bool all_coeffs_negative = true;
				for (auto v = 0; v < this->c_row_size(); v++)
				{
					if (this->add_result_values.at({RECONF_CONST, idx, v}) > 0)
					{ // nfiege: trust me, do not use >= 0 here!
						all_coeffs_negative = false;
						break;
					}
				}
				if (all_coeffs_negative)
				{
					// need a tie breaker towards the next larger word size if all coefficients are negative
					// and are in sum exactly a power of 2...
					expected_add_result_word_size = this->ceil_log2(expected_abs_add_result + 1);
				}
				else
				{
					expected_add_result_word_size = this->ceil_log2(expected_abs_add_result);
				}
				auto actual_add_result_word_size = this->coeff_word_size_values.at(idx);
				if (this->verbosity == verbosity_mode::debug_mode)
				{
					std::cout << "node #" << idx << " add result word size" << std::endl;
					std::cout << "  sum(abs(add result vector)) = " << expected_abs_add_result << std::endl;
					if (this->c_row_size() > 1)
					{
						std::cout << "  vector elements:" << std::endl;
						for (int v = 0; v < this->c_row_size(); v++)
						{
							std::cout << "    " << this->add_result_values.at({RECONF_CONST, idx, v}) << std::endl;
						}
					}
					else
					{
						std::cout << "    add result value = " << this->add_result_values.at({RECONF_CONST, idx, 0}) << std::endl;
					}
					std::cout << "  actual word size = " << actual_add_result_word_size << std::endl;
				}
				if (expected_add_result_word_size != actual_add_result_word_size)
				{
					std::cout << "node #" << idx << " has invalid add result word size" << std::endl;
					std::cout << "  sum(abs(add result vector)) = " << expected_abs_add_result << std::endl;
					if (this->c_row_size() > 1)
					{
						std::cout << "  vector elements:" << std::endl;
						for (int v = 0; v < this->c_row_size(); v++)
						{
							std::cout << "    " << this->add_result_values.at({RECONF_CONST, idx, v}) << std::endl;
						}
					}
					else
					{
						std::cout << "    add result value = " << this->add_result_values.at({RECONF_CONST, idx, 0}) << std::endl;
					}
					std::cout << "  found leading 1 in the following bit vector: ";
					for (int w = this->abs_coefficient_sum_width - 1; w >= 0; w--)
					{
						std::cout << this->get_result_value(this->full_adder_coeff_word_size_abs_sum_minus_one_variables.at({idx, w}));
					}
					std::cout << " = ";
					for (int w = this->abs_coefficient_sum_width - 1; w >= 0; w--)
					{
						std::cout << this->get_result_value(this->full_adder_coeff_word_size_abs_sum_variables.at({idx, w}));
					}
					std::cout << " - " << this->get_result_value(this->full_adder_at_least_one_positive_variables.at(idx));
					std::cout << std::endl;
					std::cout << "  where " << this->get_result_value(this->full_adder_at_least_one_positive_variables.at(idx)) << " = OR (";
					for (int v = 0; v < this->c_row_size(); v++)
					{
						std::cout << " " << this->get_result_value(this->full_adder_coeff_positive_variables.at({idx, v}));
					}
					std::cout << " )" << std::endl;
					std::cout << "  expected word size = " << expected_add_result_word_size << std::endl;
					std::cout << "  actual word size = " << actual_add_result_word_size << std::endl;
					valid = false;
				}
				// coeff word size sum
				auto expected_sum = 0;
				for (auto prev_idx = this->c_row_size(); prev_idx <= idx; prev_idx++)
				{
					expected_sum += this->coeff_word_size_values.at(prev_idx);
				}
				auto actual_sum = this->coeff_word_size_sum_values.at(idx);
				if (this->verbosity == verbosity_mode::debug_mode)
				{
					std::cout << "node #" << idx << " add result word size sum" << std::endl;
					for (auto prev_idx = this->c_row_size(); prev_idx <= idx; prev_idx++)
					{
						std::cout << "  value " << prev_idx << " = " << this->coeff_word_size_values.at(prev_idx)
								  << std::endl;
					}
					std::cout << "  actual sum = " << actual_sum << std::endl;
				}
				if (expected_sum != actual_sum)
				{
					std::cout << "node #" << idx << " has invalid add result word size sum" << std::endl;
					for (auto prev_idx = this->c_row_size(); prev_idx <= idx; prev_idx++)
					{
						std::cout << "  value " << prev_idx << " = " << this->coeff_word_size_values.at(prev_idx)
								  << std::endl;
					}
					std::cout << "  expected sum = " << expected_sum << std::endl;
					std::cout << "  actual sum = " << actual_sum << std::endl;
					valid = false;
				}
			} // are we looking at FAs?
		} // loop over idx
	}
	if (this->max_full_adders != FULL_ADDERS_UNLIMITED)
	{
		// check if final full adder value satisfies the constraint
		if (this->verbosity == verbosity_mode::debug_mode)
		{
			std::cout << "max full adders constraint = " << this->max_full_adders << std::endl;
			std::cout << "actual full adders value = " << this->num_FAs_value << std::endl;
		}
		if (this->num_FAs_value > this->max_full_adders)
		{
			std::cout << "full adder constraint is violated" << std::endl;
			std::cout << "  expected #FAs <= " << this->max_full_adders << std::endl;
			std::cout << "  but #FAs = " << this->num_FAs_value << std::endl;
			valid = false;
		}
	}
	if (this->model_reconfiguration()) {
		// check output nodes
		//for (auto &it : this->requested_vectors) {
		for (size_t req_vec_idx = 0; req_vec_idx < this->requested_vectors.size(); req_vec_idx++) {
			auto &it = this->requested_vectors.at(req_vec_idx);
			auto r = it.first.first;
			auto requested_vec = it.first.second;
			auto m = this->coeff_idx_mapping.at(req_vec_idx);
			auto adder_idx = this->output_node_assignments.at({r, m});
			auto shift = this->output_shifts.at({r, m});
			auto negate = this->output_negations.at({r, m});
			bool matches = true;
			for (int v = 0; v < this->c_num_inputs(); v++) {
				int adder_val = this->output_values.at({r, adder_idx, v}) << shift;
				if (negate) adder_val *= -1;
				if ((requested_vec.at(v) << this->fundamental_fractional_bits) != adder_val) {
					matches = false;
					break;
				}
			}
			if (this->verbosity == verbosity_mode::debug_mode)
			{
				std::cout << "requested vector <";
				for (auto &c : requested_vec) {
					std::cout << " " << c;
				}
				std::cout << " > in config " << r << std::endl;
				std::cout << "actual vector = <";
				for (int v = 0; v < this->c_num_inputs(); v++) {
					int adder_val = this->output_values.at({r, adder_idx, v}) << shift;
					if (negate) adder_val *= -1;
					std::cout << " " << adder_val;
				}
				std::cout << " >" << std::endl;
			}
			if (!matches)
			{
				std::cout << "failed to satisfy output constraint" << std::endl;
				std::cout << "  requested vector <";
				for (auto &c : requested_vec) {
					std::cout << " " << c;
				}
				std::cout << " > in config " << r << std::endl;
				std::cout << "  but actual vector is <";
				for (int v = 0; v < this->c_num_inputs(); v++) {
					int adder_val = this->output_values.at({r, adder_idx, v}) << shift;
					if (negate) adder_val *= -1;
					std::cout << " " << adder_val;
				}
				std::cout << " > = <";
				for (int v = 0; v < this->c_num_inputs(); v++) {
					int adder_val = this->output_values.at({r, adder_idx, v});
					if (negate) adder_val *= -1;
					std::cout << " " << adder_val;
				}
				std::cout << " > * 2^" << shift << std::endl;
				valid = false;
			}
			// verify output stages in case of pipelining
			if (this->pipelining_enabled) {
				int stage = 0;
				int stage_no_mux = 0;
				for (int w = 0; w < this->adder_depth_word_size; w++) {
					stage += (this->get_result_value(this->adder_depth_computation_output_post_mux_add_variables.at({r, std::abs(m)-1, w})) << w);
					stage_no_mux += (this->get_result_value(this->adder_depth_computation_output_source_variables.at({r, std::abs(m)-1, w})) << w);
				}
			}
		}
	}
	return valid;
}

void cmm::create_cnf_file(const std::string &filename)
{
	std::ofstream f;
	f.open(filename.c_str());
	f << "p cnf " << this->variable_counter << " " << this->constraint_counter << std::endl;
	f << this->cnf_clauses.str();
	f.close();
}

int64_t cmm::sign_extend(int64_t x, int w)
{
	int64_t sign_bit = (x >> (w - 1)) & static_cast<int64_t>(1);
	if (sign_bit == 0)
		return x; // x >= 0 -> no conversion needed
	int64_t mask = (static_cast<int64_t>(1) << w) - static_cast<int64_t>(1);
	mask = ~mask;
	x = x | mask;
	return x;
}

std::string cmm::get_adder_graph_description()
{
	if (!this->found_solution) {
		return "";
	}
	std::map<int, int> num_outputs_per_config;
	int num_outputs_max = this->c_num_output_ports();

	adder_graph ag(this->c_num_configs(), this->c_num_inputs(), num_outputs_max, this->num_adders, this->fundamental_fractional_bits);
	// define adder properties
	for (int idx = this->c_row_size(); idx < (this->num_adders + this->c_row_size()); idx++) {
		for (int r = 0; r < this->c_num_configs(); r++) {
			for (int v = 0; v < this->c_num_inputs(); v++) {
				ag.set_coeff(idx, r, v, this->output_values.at({r, idx, v}));
			}
			if (this->model_reconfiguration()) {
				ag.set_left_input(idx, r, this->input_select.at({r, idx, input_direction::left}));
				ag.set_right_input(idx, r, this->input_select.at({r, idx, input_direction::right}));
				ag.set_left_input_shift(idx, r, this->shift_value.at({r, idx}));
				ag.set_right_input_shift(idx, r, this->other_shift_value.at({r, idx}));
			}
			else {
				if (this->negate_select.at({r, idx}) == 0) {
					// swap left/right
					ag.set_left_input(idx, r, this->input_select.at({r, idx, input_direction::right}));
					ag.set_right_input(idx, r, this->input_select.at({r, idx, input_direction::left}));
					ag.set_left_input_shift(idx, r, 0);
					ag.set_right_input_shift(idx, r, this->shift_value.at({r, idx}));
				}
				else {
					// do not swap
					ag.set_left_input(idx, r, this->input_select.at({r, idx, input_direction::left}));
					ag.set_right_input(idx, r, this->input_select.at({r, idx, input_direction::right}));
					ag.set_left_input_shift(idx, r, this->shift_value.at({r, idx}));
					ag.set_right_input_shift(idx, r, 0);
				}
			}
			ag.set_subtract(idx, r, this->subtract.at({r, idx}));
			if (this->model_reconfiguration() and this->pipelining_enabled) {
				ag.manually_define_adder_stage(idx, r, this->pipeline_stage.at({r, idx}));
			}
		}
		if (this->enable_node_output_shift) {
			ag.set_node_output_shift(idx, this->post_adder_shift_value.at({0, idx}));
		}
		else {
			ag.set_node_output_shift(idx, 0);
		}
		if (this->model_reconfiguration() and this->num_bypassed_adders > 0) {
			if (this->is_bypassed_adder.at(idx)) {
				ag.set_adder_bypassed(idx);
			}
		}
	}
	// define output properties
	for (size_t req_vec_idx = 0; req_vec_idx < this->requested_vectors.size(); req_vec_idx++) {
		auto &it = this->requested_vectors.at(req_vec_idx);
		auto r = it.first.first;
		auto requested_vec = it.first.second;
		auto m = this->coeff_idx_mapping.at(req_vec_idx);
		int output_port_idx = this->output_port_assignments.at(req_vec_idx);
		std::vector<int> actual_coeff;
		int output_shift;
		if (this->model_reconfiguration()) {
			int node_idx;
			try {
				node_idx = this->output_node_assignments.at({r, m});
				output_shift = this->output_shifts.at({r, m});
			}
			catch (const std::out_of_range& e) {
				node_idx = this->output_node_assignments.at({r, -m});
				output_shift = this->output_shifts.at({r, -m});
			}
			for (int v = 0; v < this->c_num_inputs(); v++) {
				actual_coeff.emplace_back(this->output_values.at({r, node_idx, v}));
			}
		}
		else {
			actual_coeff = it.second.first;
			for (auto &v : actual_coeff) {
				v = v << this->fundamental_fractional_bits;
			}
			output_shift = it.second.second;
		}
		bool is_unit_vec = this->is_unit_vector(actual_coeff, this->fundamental_fractional_bits);
		int output_node = 0;
		int output_node_stage = -1;
		auto idx = this->coeff_idx_mapping.at(req_vec_idx);
		if (idx == TRIVIAL_VECTOR_MAPPING) {
			// the output_node_assignment container is invalid for unit vectors
			// it's the i'th unit vector -> just use the i'th input vector
			for (int i=0; i<this->c_num_inputs(); i++) {
				if (actual_coeff[i] != 0) {
					output_node = i;
					output_node_stage = 0;
					break;
				}
			}
		}
		else {
			output_node = this->output_node_assignments.at({r, idx});
			if (this->pipelining_enabled) {
				output_node_stage = this->pipeline_stage.at({r, output_node});
			}
		}
		ag.set_output_shift(output_port_idx, r, output_shift);
		ag.set_output_input(output_port_idx, r, output_node);
		for (size_t i = 0; i < requested_vec.size(); i++) {
			auto new_coeff = requested_vec[i] << this->fundamental_fractional_bits;
			ag.set_output_coeff(output_port_idx, r, i, new_coeff);
		}
		if (this->model_reconfiguration() and this->pipelining_enabled) {
			// insert additional register if needed
			if (this->force_output_stages_equal) {
				int max_output_stage = -1;
				for (size_t req_vec_idx2 = 0; req_vec_idx2 < this->requested_vectors.size(); req_vec_idx2++) {
					auto &req_vec_it = this->requested_vectors.at(req_vec_idx2);
					int output_port_idx_2 = this->output_port_assignments.at(req_vec_idx2);
					if (req_vec_it.first.first != r and !this->force_output_stages_equal_across_configs) continue;
					auto cur_m = this->coeff_idx_mapping.at(req_vec_idx2);
					auto &cur_output_node_idx = this->output_node_assignments.at(
						{
							req_vec_it.first.first, 
							cur_m
						}
					);
					// account for potential mux at this output
					int has_mux = 0;
					auto &cur_output_shift = this->output_shifts.at({r, cur_m});
					for (size_t req_vec_idx3 = 0; req_vec_idx3 < this->requested_vectors.size(); req_vec_idx3++) {
						int output_port_idx_3 = this->output_port_assignments.at(req_vec_idx3);
						if (output_port_idx_3 != output_port_idx_2) continue;
						auto &req_vec_it2 = this->requested_vectors.at(req_vec_idx3);
						auto &other_m = this->coeff_idx_mapping.at(req_vec_idx3);
						auto &other_r = req_vec_it2.first.first;
						auto &other_output_node_idx = this->output_node_assignments.at(
							{
								req_vec_it2.first.first, 
								other_m
							}
						);
						auto &other_output_shift = this->output_shifts.at({other_r, other_m});
						// output has mux if nodes or shifts don't match (or both)
						if (other_output_node_idx != cur_output_node_idx or other_output_shift != cur_output_shift) {
							has_mux = 1;
							break;
						}
					}
					// compute max 
					max_output_stage = std::max(
						max_output_stage, 
						this->pipeline_stage.at({
							req_vec_it.first.first, 
							cur_output_node_idx
						}) + has_mux
					);
				}
				// account for potential mux at this output
				int has_mux = 0;
				auto &cur_output_shift = this->output_shifts.at({r, m});
				for (size_t req_vec_idx3 = 0; req_vec_idx3 < this->requested_vectors.size(); req_vec_idx3++) {
					int output_port_idx_3 = this->output_port_assignments.at(req_vec_idx3);
					if (output_port_idx_3 != output_port_idx) continue;
					auto &req_vec_it2 = this->requested_vectors.at(req_vec_idx3);
					auto &other_m = this->coeff_idx_mapping.at(req_vec_idx3);
					auto &other_r = req_vec_it2.first.first;
					auto &other_output_node_idx = this->output_node_assignments.at(
						{
							req_vec_it2.first.first, 
							other_m
						}
					);
					auto &other_output_shift = this->output_shifts.at({other_r, other_m});
					// output has mux if nodes or shifts don't match (or both)
					if (other_output_node_idx != output_node or other_output_shift != cur_output_shift) {
						has_mux = 1;
						break;
					}
				}
				if (output_node_stage + has_mux != max_output_stage) {
					ag.manually_insert_output_register(output_port_idx);
				}
			}
		}
	}
	auto request_normalized_adder_graph = this->normalize_adder_graph or !this->enable_node_output_shift;
	return ag.get_adder_graph_as_str(this->pipelining_enabled, request_normalized_adder_graph, this->implement_coeff_signs_as_requested);
}

void cmm::set_min_add(int new_min_add)
{
	this->num_adders_given_by_user = new_min_add;
}

void cmm::set_max_add(int new_max_add)
{
	this->max_adders_given_by_user = new_max_add;
}

void cmm::set_max_num_muxes(int new_max_num_muxes) {
	if (this->c_num_configs() < 2) {
		throw std::runtime_error("cmm::set_max_num_muxes: cannot set num muxes in single configuration mode");
	}
	this->max_reconf_mux_registers = new_max_num_muxes;
}

void cmm::set_bypassed_adders(int new_bypassed_adders) {
	if (this->c_num_configs() < 2) {
		throw std::runtime_error("cmm::set_bypassed_adders: cannot set bypassed adders in single configuration mode");
	}
	this->num_bypassed_adders = new_bypassed_adders;
}

void cmm::manually_define_internal_word_size(int new_word_size) {
	this->word_size = new_word_size;
	this->word_size_manually_defined = true;
}

void cmm::set_adder_depth_limit(int new_adder_depth_limit) {
	this->opt_adder_depth = new_adder_depth_limit;
}

void cmm::also_minimize_full_adders()
{
	this->minimize_full_adders = true;
}

void cmm::allow_reconfigurable_output_permutations() {
	this->keep_output_order = false;
}

void cmm::allow_node_output_shift()
{
	this->enable_node_output_shift = true;
}

std::tuple<int, int, int, int> cmm::solution_is_optimal()
{
	return {this->num_add_opt, this->num_reconf_mux_opt, this->num_reconf_mux_reg_opt, this->num_FA_opt};
}

void cmm::ignore_sign()
{
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int m = 1; m <= this->c_column_size(r); m++)
		{
			// allow the solver to choose the sign for all coefficients
			this->sign_inversion_allowed[{r, m}] = true;
		}
	}
}

bool cmm::vector_all_positive(const std::vector<int> &v)
{
	bool all_positive = true;
	for (auto &c : v)
	{
		// skip over negative values
		if (c >= 0)
			continue;
		else
		{
			// found negative element => return false
			return false;
		}
	}
	// only positive elements => return true
	return true;
}

void cmm::create_full_adder_coeff_word_size_constraints(int idx, formulation_mode mode)
{
	if (mode == formulation_mode::only_FA_limit and this->supports_incremental_solving())
		return;
	for (int v = 0; v < this->c_row_size(); v++)
	{
		if (this->calc_twos_complement)
		{
			// compute abs(c) using a MUX and an inversion and a +1 adder
			int carry_bit = this->init_const_one_bit();
			int sign_bit;
			if (this->pipelining_enabled)
			{
				// registers only depend on the coefficient word size after post-add right shift
				sign_bit = this->output_value_variables.at({RECONF_CONST, idx, this->word_size - 1, v});
			}
			else
			{
				// bit-adders depend on the word size after addition (before right shifting)
				sign_bit = this->adder_output_value_variables.at({RECONF_CONST, idx, this->word_size - 1, v});
			}
			for (int w = 0; w < this->word_size; w++)
			{
				// first, implement c*(-1)
				auto sum_bit = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				int add_bit;
				if (this->pipelining_enabled)
				{
					// registers only depend on the coefficient word size after post-add right shift
					add_bit = this->output_value_variables.at({RECONF_CONST, idx, w, v});
				}
				else
				{
					// bit-adders depend on the word size after addition (before right shifting)
					add_bit = this->adder_output_value_variables.at({RECONF_CONST, idx, w, v});
				}
				if (w < this->word_size - 1)
				{
					int carry_out_bit = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
					// create clauses for sum and carry bits
					this->create_half_adder({carry_bit, false}, {add_bit, true}, {sum_bit, false},
											{carry_out_bit, false});
					// pass carry bit to next stage
					carry_bit = carry_out_bit;
				}
				else
				{
					// only create clauses for sum bit
					this->create_half_adder({carry_bit, false}, {add_bit, true}, {sum_bit, false});
				}
				// now, implement the MUX, controlled by the sign bit
				this->full_adder_coeff_word_size_abs_adder_value_variables[{idx, v, w}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				this->create_2x1_mux(add_bit, sum_bit, sign_bit, this->full_adder_coeff_word_size_abs_adder_value_variables[{idx, v, w}]);
			}
		}
		else
		{
			// abs(c) = c because c is an unsigned number
			for (int w = 0; w < this->word_size; w++)
			{
				if (this->pipelining_enabled)
				{
					// registers only depend on the coefficient word size after post-add right shift
					this->full_adder_coeff_word_size_abs_adder_value_variables[{idx, v, w}] = this->output_value_variables.at({RECONF_CONST, idx, w, v});
				}
				else
				{
					// bit-adders depend on the word size after addition (before right shifting)
					this->full_adder_coeff_word_size_abs_adder_value_variables[{idx, v, w}] = this->adder_output_value_variables.at({RECONF_CONST, idx, w, v});
				}
			}
		}
	}
	// now the absolute value of the coefficient is computed
	if (this->c_row_size() == 1)
	{
		// only one element in the vector => sum(abs(c)) = abs(c[0])
		this->abs_coefficient_sum_width = this->word_size;
		for (int w = 0; w < this->word_size; w++)
		{
			this->full_adder_coeff_word_size_abs_sum_variables[{idx, w}] = this->full_adder_coeff_word_size_abs_adder_value_variables.at({idx, 0, w});
		}
	}
	else
	{
		// sum up all absolute values via bitheap
		std::vector<std::pair<std::vector<int>, bool>> bitheap_input(this->c_row_size());
		for (int v = 0; v < this->c_row_size(); v++)
		{
			bitheap_input[v] = std::pair<std::vector<int>, bool>();
			bitheap_input[v].second = false;
			bitheap_input[v].first.resize(this->word_size);
			for (int w = 0; w < this->word_size; w++)
			{
				bitheap_input[v].first[w] = this->full_adder_coeff_word_size_abs_adder_value_variables.at({idx, v, w});
			}
		}
		auto bitheap_result = this->create_bitheap(bitheap_input);
		this->abs_coefficient_sum_width = static_cast<int>(bitheap_result.size());
		for (int w = 0; w < this->abs_coefficient_sum_width; w++)
		{
			this->full_adder_coeff_word_size_abs_sum_variables[{idx, w}] = bitheap_result.at(w);
		}
	}
	// subtract 1 conditionally under the following circumstances:
	// -> CMM/SOP or pipelining is used
	// -> there is at least one positive number
	if (c_row_size() > 1 or this->pipelining_enabled)
	{
		if (this->calc_twos_complement)
		{
			// we must subtract 1 if there is at least one positive number
			// => create variables
			for (int v = 0; v < this->c_row_size(); v++)
			{
				this->full_adder_coeff_positive_variables[{idx, v}] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				int helper_var = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				// helper[v] = OR_{w=0}^{W-2} adder_output_value_variables[v,w]
				std::vector<std::pair<int, bool>> or_me_clause(this->word_size);
				or_me_clause[this->word_size - 1] = {helper_var, true};
				for (int w = 0; w < this->word_size - 1; w++)
				{
					or_me_clause[w] = {this->adder_output_value_variables.at({RECONF_CONST, idx, w, v}), false};
					this->create_1x1_implication(this->adder_output_value_variables.at({RECONF_CONST, idx, w, v}), helper_var);
				}
				this->create_arbitrary_clause(or_me_clause);
				// full_adder_coeff_positive_variables[v] = helper[v] and (not adder_output_value_variables[v,W-1])
				this->create_1x1_implication(this->full_adder_coeff_positive_variables[{idx, v}], helper_var);
				this->create_1x1_negated_implication(this->full_adder_coeff_positive_variables[{idx, v}], this->adder_output_value_variables.at({RECONF_CONST, idx, this->word_size - 1, v}));
				this->create_arbitrary_clause({{this->adder_output_value_variables.at({RECONF_CONST, idx, this->word_size - 1, v}), false}, {helper_var, true}, {this->full_adder_coeff_positive_variables[{idx, v}], false}});
			}
			// => first of all, create clauses to check whether there is at least 1 positive number
			if (this->c_row_size() > 1)
			{
				this->full_adder_at_least_one_positive_variables[idx] = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				// full_adder_at_least_one_positive_variables = OR_{v=0}^{NUM_COLUMNS-1} full_adder_coeff_positive_variables[v]
				std::vector<std::pair<int, bool>> or_me_clause(this->c_row_size() + 1);
				or_me_clause[this->c_row_size()] = {this->full_adder_at_least_one_positive_variables[idx], true};
				for (int v = 0; v < this->c_row_size(); v++)
				{
					or_me_clause[v] = {this->full_adder_coeff_positive_variables[{idx, v}], false};
					this->create_1x1_implication(this->full_adder_coeff_positive_variables[{idx, v}], this->full_adder_at_least_one_positive_variables[idx]);
				}
				this->create_arbitrary_clause(or_me_clause);
			}
			else
			{
				this->full_adder_at_least_one_positive_variables[idx] = this->full_adder_coeff_positive_variables.at({idx, 0});
			}

			// => now do the subtraction by adding that bit in each bit position
			int c_i = this->init_const_zero_bit();
			for (int w = 0; w < this->abs_coefficient_sum_width; w++)
			{
				// full adder
				int c_o = -1;
				if (w < this->abs_coefficient_sum_width - 1)
				{
					c_o = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
				int sum = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				this->create_full_adder({this->full_adder_at_least_one_positive_variables[idx], false}, {this->full_adder_coeff_word_size_abs_sum_variables[{idx, w}], false}, {c_i, false}, {sum, false}, {c_o, false});
				this->full_adder_coeff_word_size_abs_sum_minus_one_variables[{idx, w}] = sum;
				c_i = c_o;
			}
		}
		else
		{
			// always subtract 1 because there is always a positive number if internal numbers are all unsigned
			this->full_adder_at_least_one_positive_variables[idx] = this->init_const_one_bit();
			int c_i = this->init_const_zero_bit();
			for (int w = 0; w < this->abs_coefficient_sum_width; w++)
			{
				// create result bit
				// sum = i xnor c_i
				int sum = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				this->create_2x1_equiv(this->full_adder_coeff_word_size_abs_sum_variables[{idx, w}], c_i, sum);
				this->full_adder_coeff_word_size_abs_sum_minus_one_variables[{idx, w}] = sum;
				if (w < this->abs_coefficient_sum_width - 1)
				{
					// create carry clauses and propagate carry bit to next stage
					// c_o = i or c_i
					int c_o = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
					this->create_2x1_or(this->full_adder_coeff_word_size_abs_sum_variables[{idx, w}], c_i, c_o);
					c_i = c_o;
				}
			}
		}
	}
	else
	{
		// no need to conditionally subtract 1 since powers of 2 cannot occur
		for (int w = 0; w < this->abs_coefficient_sum_width; w++)
		{
			this->full_adder_coeff_word_size_abs_sum_minus_one_variables[{idx, w}] = this->full_adder_coeff_word_size_abs_sum_variables[{idx, w}];
		}
	}
	// compute word size of sum(abs(c)) by finding the leading one's position
	// for SOP/CMM we use the version where we subtracted one earlier since powers of 2 can occur
	// carry-input = 0
	int carry_bit = this->init_const_zero_bit();
	// initial value = 0
	std::vector<int> val(1);
	val[0] = this->init_const_zero_bit();
	for (int w = this->abs_coefficient_sum_width - 1; w >= 0; w--)
	{
		this->full_adder_coeff_word_size_internal_carry_input_variables[{idx, w}] = carry_bit;
		auto w_in = val.size();
		auto max_val = this->abs_coefficient_sum_width - w;
		auto w_out = this->ceil_log2(max_val + 1);
		auto bit_value = this->full_adder_coeff_word_size_abs_sum_minus_one_variables.at({idx, w});
		// temp_or = carry OR bit_value
		auto temp_or = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
		this->create_2x1_or(carry_bit, bit_value, temp_or);
		// temp_and[x] = carry AND val[x]
		std::vector<int> temp_and(w_in);
		for (int x = 0; x < w_in; x++)
		{
			temp_and[x] = ++this->variable_counter;
			this->create_new_variable(this->variable_counter);
			this->create_2x1_and(carry_bit, val.at(x), temp_and.at(x));
		}
		// val_new = temp_or + temp_and
		auto add_carry = temp_or;
		std::vector<int> val_new(w_out);
		for (int x = 0; x < w_in; x++)
		{
			this->full_adder_coeff_word_size_internal_variables[{idx, w, x}] = val_new[x] = ++this->variable_counter;
			this->create_new_variable(this->variable_counter);
			if (x == w_in - 1)
			{
				if (w_in == w_out)
				{
					// no carry output required
					this->create_half_adder({add_carry, false}, {val.at(x), false}, {val_new.at(x), false});
				}
				else
				{
					// use carry output as sum output for result MSB
					int carry_out = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
					this->create_half_adder({add_carry, false}, {val.at(x), false}, {val_new.at(x), false},
											{carry_out, false});
					this->full_adder_coeff_word_size_internal_variables[{idx, w, x + 1}] = val_new[x + 1] = carry_out;
				}
			}
			else
			{
				// normal half adder
				int carry_out = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				this->create_half_adder({add_carry, false}, {val.at(x), false}, {val_new.at(x), false},
										{carry_out, false});
				add_carry = carry_out;
			}
		}
		val = val_new;
		carry_bit = temp_or;
	}
	for (int w = 0; w < val.size(); w++)
	{
		this->full_adder_coeff_word_size_variables[{idx, w}] = val.at(w);
	}
}

void cmm::create_full_adder_msb_constraints(int idx, formulation_mode mode)
{
	if (mode == formulation_mode::only_FA_limit and this->supports_incremental_solving())
		return;
	if (this->c_row_size() > 1 or this->pipelining_enabled)
	{
		// can never cut MSBs for SOP/CMM because the sign depends on the actual input values
		// can never cut MSBs for pipelined circuits because we must always pass *all* bits into the next stage
		this->full_adder_msb_variables[idx] = this->init_const_zero_bit();
		return;
	}
	if (!this->calc_twos_complement)
	{
		// can always cut MSB because all coefficients are positive
		// -> just set the m to 1 and count on unit propagation within the solver :)
		this->full_adder_msb_variables[idx] = this->init_const_one_bit();
		return;
	}
	auto m = this->full_adder_msb_variables[idx] = ++this->variable_counter;
	this->create_new_variable(this->variable_counter);
	int s_c = this->adder_output_value_variables.at({RECONF_CONST, idx, this->word_size - 1, 0});
	if (idx <= this->c_row_size() && idx > 0)
	{
		// m = not s_c
		this->create_1x1_negated_implication(s_c, m);
		this->create_1x1_reversed_negated_implication(s_c, m);
		return;
	}
	int s_x = this->input_select_mux_output_variables.at({RECONF_CONST, idx, cmm::left, this->word_size - 1, 0});
	int s_y = this->input_select_mux_output_variables.at({RECONF_CONST, idx, cmm::right, this->word_size - 1, 0});
	// create clauses to decide whether the sign m can be copied from one of the inputs
	// 1)
	this->create_arbitrary_clause({
		{s_y, false},
		{s_c, false},
		{m, false},
	});
	// 2)
	this->create_arbitrary_clause({
		{s_x, false},
		{s_y, true},
		{m, false},
	});
	// 3)
	this->create_arbitrary_clause({
		{s_x, true},
		{s_c, true},
		{m, false},
	});
	// 4) -> redundant
	// 5) -> redundant
	// 6) -> redundant
	// 7)
	this->create_arbitrary_clause({
		{s_x, true},
		{s_y, true},
		{s_c, false},
		{m, true},
	});
	// 8)
	this->create_arbitrary_clause({
		{s_x, false},
		{s_y, false},
		{s_c, true},
		{m, true},
	});
}

void cmm::create_full_adder_coeff_word_size_sum_constraints(int idx, formulation_mode mode)
{
	if (mode == formulation_mode::only_FA_limit and this->supports_incremental_solving())
		return;
	auto num_bits_word_size = this->ceil_log2(this->abs_coefficient_sum_width + 1);
	if (idx <= this->c_row_size() && idx > 0)
	{
		// no addition necessary -> just set container with variables
		for (int w = 0; w < num_bits_word_size; w++)
		{
			this->full_adder_word_size_sum_variables[{idx, w}] = this->full_adder_coeff_word_size_variables.at({idx, w});
		}
		return;
	}
	// result[idx] = num_bits[idx] + result[idx-1]
	auto input_word_size = this->ceil_log2(((idx - this->c_row_size()) * this->abs_coefficient_sum_width) + 1);
	auto output_word_size = this->ceil_log2(((idx - this->c_row_size() + 1) * this->abs_coefficient_sum_width) + 1);
	std::vector<std::pair<std::vector<int>, bool>> x(2);
	x[0].second = x[1].second = false; // add both bit vectors
	// first input: num_bits[idx]
	x[0].first.resize(num_bits_word_size);
	for (int w = 0; w < num_bits_word_size; w++)
	{
		x[0].first[w] = this->full_adder_coeff_word_size_variables.at({idx, w});
	}
	// second input: result[idx-1]
	x[1].first.resize(input_word_size);
	for (int w = 0; w < input_word_size; w++)
	{
		x[1].first[w] = this->full_adder_word_size_sum_variables.at({idx - 1, w});
	}
	// output: result[idx]
	auto output_bits = this->create_bitheap(x);
	for (int w = 0; w < output_word_size; w++)
	{
		this->full_adder_word_size_sum_variables[{idx, w}] = output_bits.at(w);
	}
}

void cmm::create_full_adder_shift_gain_constraints(int idx, formulation_mode mode)
{
	if (mode == formulation_mode::only_FA_limit and this->supports_incremental_solving())
		return;
	for (int w = 0; w < this->shift_word_size; w++)
	{
		auto var = this->full_adder_shift_gain_variables[{idx, w}] = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
		this->create_arbitrary_clause({
			{this->input_shift_value_variables.at({RECONF_CONST, idx, w}), false},
			{var, true},
		});
		this->create_arbitrary_clause({
			{this->input_negate_value_variables.at({RECONF_CONST, idx}), true},
			{this->input_negate_select_variables.at({RECONF_CONST, idx}), true},
			{var, true},
		});
		this->create_arbitrary_clause({
			{this->input_shift_value_variables.at({RECONF_CONST, idx, w}), true},
			{this->input_negate_value_variables.at({RECONF_CONST, idx}), false},
			{var, false},
		});
		this->create_arbitrary_clause({
			{this->input_shift_value_variables.at({RECONF_CONST, idx, w}), true},
			{this->input_negate_select_variables.at({RECONF_CONST, idx}), false},
			{var, false},
		});
	}
}

void cmm::create_full_adder_shift_sum_constraints(int idx, formulation_mode mode)
{
	if (mode == formulation_mode::only_FA_limit and this->supports_incremental_solving())
		return;
	auto num_bits_word_size = this->ceil_log2(this->max_shift + 1);
	if (idx <= this->c_row_size() && idx > 0)
	{
		// no addition necessary -> just set container with variables
		for (int w = 0; w < num_bits_word_size; w++)
		{
			this->full_adder_shift_sum_variables[{idx, w}] = this->full_adder_shift_gain_variables.at({idx, w});
		}
		return;
	}
	// result[idx] = shift[idx] + result[idx-1]
	auto input_word_size = this->ceil_log2(((idx - this->c_row_size()) * this->max_shift) + 1);
	auto output_word_size = this->ceil_log2(((idx - this->c_row_size() + 1) * this->max_shift) + 1);
	std::vector<std::pair<std::vector<int>, bool>> x(2);
	x[0].second = x[1].second = false; // add both bit vectors
	// first input: shift[idx]
	x[0].first.resize(num_bits_word_size);
	for (int w = 0; w < num_bits_word_size; w++)
	{
		x[0].first[w] = this->full_adder_shift_gain_variables.at({idx, w});
	}
	// second input: result[idx-1]
	x[1].first.resize(input_word_size);
	for (int w = 0; w < input_word_size; w++)
	{
		x[1].first[w] = this->full_adder_shift_sum_variables.at({idx - 1, w});
	}
	// output: result[idx]
	auto output_bits = this->create_bitheap(x);
	for (int w = 0; w < output_word_size; w++)
	{
		this->full_adder_shift_sum_variables[{idx, w}] = output_bits.at(w);
	}
}

void cmm::create_full_adder_msb_sum_constraints(formulation_mode mode)
{
	if (mode == formulation_mode::only_FA_limit and this->supports_incremental_solving())
		return;
	if (this->num_adders == 1)
	{
		// no addition necessary -> just set container with variable
		this->full_adder_msb_sum_variables[0] = this->full_adder_msb_variables.at(this->c_row_size());
		return;
	}
	// sum all bits up
	std::vector<std::pair<std::vector<int>, bool>> x(this->num_adders, std::pair<std::vector<int>, bool>(std::vector<int>(1), false));
	for (int idx = this->c_row_size(); idx < (this->num_adders + this->c_row_size()); idx++)
	{
		x[idx - this->c_row_size()].first[0] = this->full_adder_msb_variables.at(idx);
	}
	auto output_bits = this->create_bitheap(x);
	auto output_word_size = this->ceil_log2(this->num_adders + 1);
	for (int w = 0; w < output_word_size; w++)
	{
		this->full_adder_msb_sum_variables[w] = output_bits.at(w);
	}
}

void cmm::create_full_adder_add_subtract_inputs_constraints(formulation_mode mode)
{
	if (mode == formulation_mode::only_FA_limit and this->supports_incremental_solving())
		return;
	auto word_size_right_input = this->ceil_log2(this->num_adders + 1);
	auto word_size_left_input = this->ceil_log2(this->num_adders * this->max_shift + 1);
	auto output_word_size = this->ceil_log2(this->num_adders * (this->max_shift + 1) + 1);
	std::vector<std::pair<std::vector<int>, bool>> x(2);
	x[0].second = x[1].second = false;
	x[0].first.resize(word_size_left_input);
	for (int w = 0; w < word_size_left_input; w++)
	{
		x[0].first[w] = this->full_adder_shift_sum_variables.at({this->num_adders + this->c_row_size() - 1, w});
	}
	x[1].first.resize(word_size_right_input);
	for (int w = 0; w < word_size_right_input; w++)
	{
		x[1].first[w] = this->full_adder_msb_sum_variables.at(w);
	}
	auto output_bits = this->create_bitheap(x);
	for (int w = 0; w < output_word_size; w++)
	{
		this->full_adder_add_subtract_inputs_variables[w] = output_bits.at(w);
	}
}

void cmm::create_full_adder_cpa_constraints(formulation_mode mode)
{
	if (mode == formulation_mode::only_FA_limit and this->supports_incremental_solving())
		return;
	// result = num_bits[last_stage] - (shift_result[last_stage] + msb_sum)
	auto input_word_size_add = this->ceil_log2(this->abs_coefficient_sum_width * this->num_adders + 1);
	if (this->pipelining_enabled)
	{
		// actually, the shift gain is 0, and we also cannot cut any MSBs because they are pipelined, too!
		// => result = num_bits[last_stage]
		auto output_word_size = input_word_size_add;
		for (int w = 0; w < output_word_size; w++)
		{
			this->full_adder_result_variables[w] = this->full_adder_word_size_sum_variables.at({this->num_adders + this->c_row_size() - 1, w});
		}
		return;
	}
	int input_word_size_sub = this->get_word_size_sub();

	auto output_word_size = std::max(input_word_size_add, input_word_size_sub) + 1;
	std::vector<std::pair<std::vector<int>, bool>> x(2);
	// decide add/sub for the two inputs
	x[0].second = false;
	x[1].second = true;
	// prepare add input bits
	x[0].first.resize(output_word_size);
	for (int w = 0; w < input_word_size_add; w++)
	{
		x[0].first[w] = this->full_adder_word_size_sum_variables.at({this->num_adders + this->c_row_size() - 1, w});
	}
	// sign extend add input with zeros
	for (int w = input_word_size_add; w < output_word_size; w++)
	{
		x[0].first[w] = this->init_const_zero_bit();
	}
	// prepare sub input bits
	x[1].first.resize(output_word_size);
	for (int w = 0; w < input_word_size_sub; w++)
	{
		x[1].first[w] = this->full_adder_add_subtract_inputs_variables.at(w);
	}
	// sign extend sub input with zeros
	for (int w = input_word_size_sub; w < output_word_size; w++)
	{
		x[1].first[w] = this->init_const_zero_bit();
	}
	// compute output
	auto output_bits = this->create_bitheap(x);
	for (int w = 0; w < output_word_size; w++)
	{
		this->full_adder_result_variables[w] = output_bits.at(w);
	}
}

void cmm::create_upper_limit(std::vector<int> bits, int upper_limit, bool is_signed)
{
	std::vector<std::pair<int, bool>> clause_base;
	int word_size = bits.size();
	for (int w = word_size - 1; w >= 0; w--)
	{
		auto c = (int)((upper_limit >> w) & 1);
		int x = bits.at(w);
		if (is_signed and w == word_size - 1)
		{
			// must flip condition for negatively-valued sign bit in 2k representation
			if (!c)
			{
				clause_base.emplace_back(x, false);
			}
			else
			{
				auto clause = clause_base;
				clause.emplace_back(x, false);
				this->create_arbitrary_clause(clause);
			}
		}
		else
		{
			// do not flip condition for unsigned bit vector representation
			if (c)
			{
				clause_base.emplace_back(x, true);
			}
			else
			{
				auto clause = clause_base;
				clause.emplace_back(x, true);
				this->create_arbitrary_clause(clause);
			}
		}
	}
}

void cmm::create_lower_limit(std::vector<int> bits, int lower_limit, bool is_signed) {
	std::vector<std::pair<int, bool>> clause_base;
	int word_size = bits.size();
	for (int w = word_size - 1; w >= 0; w--)
	{
		auto c = (int)((lower_limit >> w) & 1);
		int x = bits.at(w);
		if (is_signed and w == word_size - 1)
		{
			// must flip condition for negatively-valued sign bit in 2k representation
			if (c)
			{
				clause_base.emplace_back(x, true);
			}
			else
			{
				auto clause = clause_base;
				clause.emplace_back(x, true);
				this->create_arbitrary_clause(clause);
			}
		}
		else
		{
			// do not flip condition for unsigned bit vector representation
			if (!c)
			{
				clause_base.emplace_back(x, false);
			}
			else
			{
				auto clause = clause_base;
				clause.emplace_back(x, false);
				this->create_arbitrary_clause(clause);
			}
		}
	}

}

void cmm::create_full_adder_result_constraints()
{
	// force num_full_adders <= max_full_adders
	auto input_word_size_add = this->ceil_log2(this->word_size * this->num_adders + 1);
	int input_word_size_sub = this->get_word_size_sub();
	int output_word_size;
	if (this->pipelining_enabled)
	{
		output_word_size = input_word_size_add;
	}
	else
	{
		output_word_size = std::max(input_word_size_add, input_word_size_sub) + 1;
	}
	std::vector<int> bits(output_word_size);
	for (int w = 0; w < output_word_size; w++)
	{
		bits[w] = this->full_adder_result_variables.at(w);
	}
	this->create_upper_limit(bits, this->max_full_adders, !this->pipelining_enabled);
}

void cmm::create_mcm_input_constraints(cmm::formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int idx = 0; idx < this->c_row_size(); idx++)
		{
			for (int jdx = 0; jdx < this->c_row_size(); jdx++)
			{
				std::vector<int> input_bits(this->word_size);
				for (auto w = 0; w < this->word_size; w++)
				{
					if (w == this->fundamental_fractional_bits and idx == jdx) {
						// set to 1
						this->create_arbitrary_clause({{this->output_value_variables.at({r, idx, w, jdx}), false}});
					}
					else {
						// set to 0
						this->create_arbitrary_clause({{this->output_value_variables.at({r, idx, w, jdx}), true}});
					}
				}
			}
		}
	}
}

void cmm::create_mcm_output_constraints(formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	if (this->model_reconfiguration()) {
		for (int r = 0; r < this->c_num_configs(); r++) {
			//for (auto &req_vec : this->requested_vectors)
			for (size_t req_vec_idx = 0; req_vec_idx < this->requested_vectors.size(); req_vec_idx++) 
			{
				auto &req_vec = this->requested_vectors.at(req_vec_idx);
				// are we in the right config?
				if (req_vec.first.first != r)
					continue;
				// clause container
				std::vector<int> or_me;
				// coefficient info
				auto coeff_vec = req_vec.first.second;
				auto used_m = this->coeff_idx_mapping.at(req_vec_idx);
				auto actual_coeff_vec = req_vec.second.first;
				auto output_shift = req_vec.second.second;
				// clauses for coefficients as they are
				if (this->mcm_output_variable_exists(r, used_m)) {
					for (int idx = 0; idx < this->c_num_output_ports(); idx++)
					{
						or_me.emplace_back(this->mcm_output_variables.at({r, idx, used_m}));
						for (size_t v = 0; v < coeff_vec.size(); v++) {
							for (int w = 0; w < this->word_size; w++) {
								auto value_var = this->output_actual_value_variables.at({r, idx, w, v});
								if ((((coeff_vec.at(v) << this->fundamental_fractional_bits) >> w) & 1) == 1)
								{
									this->create_1x1_implication(this->mcm_output_variables.at({r, idx, used_m}),
																value_var);
								}
								else
								{
									this->create_1x1_negated_implication(this->mcm_output_variables.at({r, idx, used_m}),
																		value_var);
								}
							}
						}
						if (this->keep_output_order and abs(used_m)-1 != idx) {
							this->create_arbitrary_clause({{this->mcm_output_variables.at({r, idx, used_m}), true}});
						}
					}
				}
				
				// clauses for inverted coefficients                                                                                                                                 --> c_idx
				if (this->mcm_output_variable_exists(r, -used_m)) {
					for (int idx = 0; idx < this->c_num_output_ports(r); idx++)
					{
						or_me.emplace_back(this->mcm_output_variables.at({r, idx, -used_m}));
						for (size_t v = 0; v < coeff_vec.size(); v++) {
							for (int w = 0; w < this->word_size; w++) {
								auto value_var = this->output_actual_value_variables.at({r, idx, w, v});
								if ((((-coeff_vec.at(v) << this->fundamental_fractional_bits) >> w) & 1) == 1)
								{
									this->create_1x1_implication(this->mcm_output_variables.at({r, idx, -used_m}), value_var);
								}
								else
								{
									this->create_1x1_negated_implication(this->mcm_output_variables.at({r, idx, -used_m}), value_var);
								}
							}
						}
						if (this->keep_output_order and abs(used_m)-1 != idx) {
							this->create_arbitrary_clause({{this->mcm_output_variables.at({r, idx, -used_m}), true}});
						}
					}
				}
				this->create_or(or_me);
			}
		}
	}
	else {
		for (int r = 0; r < this->c_num_configs(); r++) {
			for (int m = 1; m <= this->c_column_size(r); m++)
			{
				std::vector<int> or_me;
				// create clauses for positive coefficient versions
				if (this->mcm_output_variable_exists(r, m))
				{
					for (int idx = this->c_row_size(); idx < (this->num_adders + this->c_row_size()); idx++)
					{
						or_me.emplace_back(this->mcm_output_variables[{r, idx, m}]);
						for (int v = 0; v < this->c_num_inputs(); v++)
						{
							for (int w = 0; w < this->word_size; w++)
							{
								int value_var = this->output_value_variables.at({r, idx, w, v});
								if ((((this->C.at(r).at(m-1).at(v) << this->fundamental_fractional_bits) >> w) & 1) == 1)
								{
									this->create_1x1_implication(this->mcm_output_variables[{r, idx, m}],
																value_var);
								}
								else
								{
									this->create_1x1_negated_implication(this->mcm_output_variables[{r, idx, m}],
																		value_var);
								}
							}
						}
					}
				}
				// create clauses for negative coefficient versions
				if (this->mcm_output_variable_exists(r, -m))
				{
					for (int idx = this->c_row_size(); idx < (this->num_adders + this->c_row_size()); idx++)
					{
						or_me.emplace_back(this->mcm_output_variables[{r, idx, -m}]);
						for (int v = 0; v < this->c_row_size(); v++)
						{
							for (int w = 0; w < this->word_size; w++)
							{
								if ((((-this->C.at(r).at(m - 1).at(v) << this->fundamental_fractional_bits) >> w) & 1) == 1)
								{
									this->create_1x1_implication(this->mcm_output_variables[{r, idx, -m}], this->output_value_variables[{r, idx, w, v}]);
								}
								else
								{
									this->create_1x1_negated_implication(this->mcm_output_variables[{r, idx, -m}], this->output_value_variables[{r, idx, w, v}]);
								}
							}
						}
					}
				}
				this->create_or(or_me);
			}
		}
	}
}

void cmm::create_odd_fundamentals_constraints(int idx, formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	if (this->c_row_size() > 1 or this->model_reconfiguration()) {
		// this constraint cannot be added for CMM / SOP / when modeling reconfigurability!
		return;
	}
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int v = 0; v < this->c_row_size(); v++)
		{
			this->force_bit(this->output_value_variables.at({r, idx, this->fundamental_fractional_bits, v}), 1);
		}
	}
}

void cmm::create_pipelining_input_stage_equality_constraints(int idx, cmm::formulation_mode mode)
{
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	if (idx < this->c_row_size() or (!this->model_reconfiguration() and idx == this->c_row_size()))
		return;
	// adder depth values for left & right must be equal for all configs separately
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int w = 0; w < this->adder_depth_word_size; w++)
		{
			int l_w;
			int r_w;
			if (this->model_reconfiguration()) {
				l_w = this->adder_depth_computation_input_post_mux_add_variables.at({r, idx, input_direction::left, w});
				r_w = this->adder_depth_computation_input_post_mux_add_variables.at({r, idx, input_direction::right, w});
			}
			else {
				l_w = this->adder_depth_computation_input_variables.at({r, idx, input_direction::left, w});
				r_w = this->adder_depth_computation_input_variables.at({r, idx, input_direction::right, w});
			}
			this->create_arbitrary_clause({{l_w, true},
										{r_w, false}});
			this->create_arbitrary_clause({{l_w, false},
										{r_w, true}});
		}
	}
}

void cmm::create_pipelining_output_stage_equality_at_adders_constraints(int idx, cmm::formulation_mode mode)
{
	
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	// this only gets called if the number of configs is 1 (i.e., no reconfiguration)
	if (this->model_reconfiguration()) {
		throw std::runtime_error("create_pipelining_output_stage_equality_at_adders_constraints got called even though the number of configs is '"+std::to_string(this->c_num_configs())+"' -> this should never happen!");
	}
	// force adder depths to be equal for all outputs
	// for SCM/SOP (i.e., this->c_num_outputs() = 1) this is always given because there is only one output
	if (this->c_num_outputs(0) < 2)
		return;
	// for MCM/CMM (i.e., this->c_num_outputs() > 1) we can use the mcm output variables as an indicator for output nodes
	// correctly set node_is_output_variable
	auto node_is_output_var = this->node_is_output_variables.at(idx);
	for (int m = 1; m <= this->c_num_outputs(0); m++)
	{
		std::vector<int> mcm_output_vars;
		if (this->mcm_output_variable_exists(0, m))
		{
			mcm_output_vars.emplace_back(this->mcm_output_variables.at({0, idx, m}));
		}
		if (this->mcm_output_variable_exists(0, -m))
		{
			mcm_output_vars.emplace_back(this->mcm_output_variables.at({0, idx, -m}));
		}
		// mcm_output implies node_is_output
		for (auto &mcm_output_var : mcm_output_vars)
		{
			this->create_1x1_implication(mcm_output_var, node_is_output_var);
		}
	}
	// now force the relationship:
	// "node_is_output_var implies that the stage for node #idx is equal to the output stage"
	for (int w = 0; w < this->adder_depth_word_size; w++)
	{
		auto node_stage_var = this->adder_depth_variables.at({0, idx, w});
		auto output_stage_var = this->output_stage_eq_variables.at(w);
		this->create_arbitrary_clause({{node_is_output_var, true}, {node_stage_var, true}, {output_stage_var, false}});
		this->create_arbitrary_clause({{node_is_output_var, true}, {node_stage_var, false}, {output_stage_var, true}});
	}
}

void cmm::create_reconf_sharing_constraints(int idx, formulation_mode mode) {
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int idx = this->c_row_size(); idx < this->num_adders + this->c_row_size(); idx++)
	{
		for (auto dir : this->input_directions)
		{
			for (int r1 = 0; r1 < this->c_num_configs(); r1++)
			{
				for (int r2 = r1 + 1; r2 < this->c_num_configs(); r2++)
				{ 
					auto sharing_var = this->config_can_be_shared_variables.at({r1, r2, idx, dir});
					// check if shift value matches
					for (int w = 0; w < this->shift_word_size; w++) {
						int shift_var_r1;
						int shift_var_r2;
						if (dir == input_direction::left) {
							shift_var_r1 = this->input_shift_value_variables.at({r1, idx, w});
							shift_var_r2 = this->input_shift_value_variables.at({r2, idx, w});
						}
						else {
							shift_var_r1 = this->input_other_shift_value_variables.at({r1, idx, w});
							shift_var_r2 = this->input_other_shift_value_variables.at({r2, idx, w});
						}
						this->create_equivalence_sharing_implication(shift_var_r1, shift_var_r2, sharing_var);
					}
					// check if input indices match
					if (idx < 2) continue;
					auto input_mux_word_size = this->ceil_log2(idx);
					for (int w = 0; w < input_mux_word_size; w++) {
						auto mux_select_var_r1 = this->input_select_selection_variables.at({r1, idx, dir, w});
						auto mux_select_var_r2 = this->input_select_selection_variables.at({r2, idx, dir, w});
						this->create_equivalence_sharing_implication(mux_select_var_r1, mux_select_var_r2, sharing_var);
					}
				}
			}
		}
	}
}

void cmm::create_bypassed_adder_constraints(int idx, formulation_mode mode) {
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	// variable indicating whether this adder is bypassed
	auto bypassed_var = this->is_bypassed_adder_variables.at(idx);
	for (int r = 0; r < this->c_num_configs(); r++) {
		// output is equal to left input
		for (int v = 0; v < this->c_num_inputs(); v++) {
			for (int w = 0; w < this->word_size; w++) {
				auto output_var = this->output_value_variables.at({r, idx, w, v});
				int input_var_l;
				if (idx > 1) {
					// this node has an input MUX -> get the selected inputs
					input_var_l = this->input_select_mux_output_variables.at({r, idx, input_direction::left, w, v});
				}
				else {
					// only one input -> no input MUX needed
					input_var_l = this->output_value_variables.at({r, 0, w, v});
				}
				// left input != output -> not bypassed
				this->create_equivalence_sharing_implication(output_var, input_var_l, bypassed_var);
			}
		}
		// left input selection == right input selection (only relevant if idx > 1)
		if (idx > 1) {
			auto input_mux_word_size = this->ceil_log2(idx);
			for (int w = 0; w < input_mux_word_size; w++) {
				auto mux_select_var_l = this->input_select_selection_variables.at({r, idx, input_direction::left, w});
				auto mux_select_var_r = this->input_select_selection_variables.at({r, idx, input_direction::right, w});
				this->create_equivalence_sharing_implication(mux_select_var_l, mux_select_var_r, bypassed_var);
			}
		}
	}
}

void cmm::create_bypassed_right_mux_constraints(int idx, formulation_mode mode) {
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	// variable indicating whether this adder is bypassed
	auto bypassed_var = this->is_bypassed_adder_variables.at(idx);
	// for all config pairs: sharing incl. bypass IMPLIES the adder is bypassed OR we could have shared anyways
	for (int r1 = 0; r1 < this->c_num_configs(); r1++) {
		for (int r2 = r1 + 1; r2 < this->c_num_configs(); r2++) {
			auto sharing_var = this->config_can_be_shared_variables.at({r1, r2, idx, input_direction::right});
			auto sharing_var_incl_bypass = this->config_can_be_shared_including_bypass_variables.at({r1, r2, idx});
			this->create_arbitrary_clause(
				{
					{bypassed_var, false},
					{sharing_var, false},
					{sharing_var_incl_bypass, true}
				}
			);
		}
	}
	// only have one sharing var active per config as usual
	for (int r1 = 0; r1 < this->c_num_configs(); r1++)
	{
		for (int r2a = r1 + 1; r2a < this->c_num_configs(); r2a++)
		{
		    for (int r2b = r2a + 1; r2b < this->c_num_configs(); r2b++)
			{
				auto sharing_var_a = this->config_can_be_shared_including_bypass_variables.at({r1, r2a, idx});
				auto sharing_var_b = this->config_can_be_shared_including_bypass_variables.at({r1, r2b, idx});
				this->create_arbitrary_clause({
					{sharing_var_a, true},
					{sharing_var_b, true}
				});
			}
		}
	}
}

void cmm::create_reconf_sharing_summation_constraints(formulation_mode mode) {
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	// sum all bits up
	std::vector<std::pair<std::vector<int>, bool>> x;
	this->upper_bound_max_sharing_value = 0;
	// sharing at adder input multiplexers
	for (int idx = this->c_row_size(); idx < this->num_adders + this->c_row_size(); idx++)
	{
		for (auto dir : this->input_directions)
		{
			for (int r1 = 0; r1 < this->c_num_configs(); r1++)
			{
				int add_val = 0;
				for (int r2 = r1 + 1; r2 < this->c_num_configs(); r2++)
				{
					add_val = 1;
					if (dir == input_direction::right and this->num_bypassed_adders > 0) {
						// use the variable including bypass info instead of the normal sharing variable
						x.emplace_back(std::vector<int>(1, this->config_can_be_shared_including_bypass_variables.at({r1, r2, idx})), false);
					}
					else {
						// use normal sharing variable
						x.emplace_back(std::vector<int>(1, this->config_can_be_shared_variables.at({r1, r2, idx, dir})), false);
					}
				}
				this->upper_bound_max_sharing_value += add_val;
			}
		}
	}
	// sharing at output multiplexers
	for (int idx = 0; idx < this->c_num_output_ports(); idx++) 
	{
		for (int r1 = 0; r1 < this->c_num_configs(); r1++)
		{
			int add_val = 0;
			auto r1_num_ports = this->c_num_output_ports(r1);
			for (int r2 = r1 + 1; r2 < this->c_num_configs(); r2++)
			{
				auto r2_num_ports = this->c_num_output_ports(r2);
				if (idx >= r1_num_ports or idx >= r2_num_ports) continue; // no sharing possible if one of the configs has no output port at idx
				x.emplace_back(std::vector<int>(1, this->output_can_be_shared_variables.at({r1, r2, idx})), false);
				add_val = 1;
			}
			this->upper_bound_max_sharing_value += add_val;
		}
	}
	auto output_bits = this->create_bitheap(x);
	auto output_word_size = this->ceil_log2(this->upper_bound_max_sharing_value + 1);
	for (int w = 0; w < output_word_size; w++)
	{
		this->config_sharing_result_variables[w] = output_bits.at(w);
	}
}

void cmm::create_reconf_sharing_overlap_constraints(formulation_mode mode) {
	if (mode != formulation_mode::reset_all and this->supports_incremental_solving())
		return;
	for (int r1 = 0; r1 < this->c_num_configs(); r1++)
	{
		for (int r2a = r1 + 1; r2a < this->c_num_configs(); r2a++)
		{
		    for (int r2b = r2a + 1; r2b < this->c_num_configs(); r2b++)
			{
				// adder nodes
				for (int idx = this->c_row_size(); idx < this->num_adders + this->c_row_size(); idx++)
				{
					for (auto dir : this->input_directions)
					{
						auto sharing_var_a = this->config_can_be_shared_variables.at({r1, r2a, idx, dir});
						auto sharing_var_b = this->config_can_be_shared_variables.at({r1, r2b, idx, dir});
						if (this->verbosity == verbosity_mode::debug_mode)
						{
							std::cout << "          creating sharing overlap constraints for nodes " << idx << " in configs " << r1 << " and " << r2a << " / " << r2b << std::endl;
						}
						this->create_arbitrary_clause({
							{sharing_var_a, true},
							{sharing_var_b, true}
						});
					}
				}
				// outputs
				auto r1_num_ports = this->c_num_output_ports(r1);
				auto r2a_num_ports = this->c_num_output_ports(r2a);
				auto r2b_num_ports = this->c_num_output_ports(r2b);
				for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
					if (idx >= r1_num_ports or idx >= r2a_num_ports or idx >= r2b_num_ports) continue; // no sharing possible if one of the configs has no output port at idx
					auto sharing_var_a = this->output_can_be_shared_variables.at({r1, r2a, idx});
					auto sharing_var_b = this->output_can_be_shared_variables.at({r1, r2b, idx});
					this->create_arbitrary_clause({
						{sharing_var_a, true},
						{sharing_var_b, true}
					});
				}
			}
		}
	}
}

void cmm::create_reconf_sharing_limitation_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		mode !=formulation_mode::only_reconf_limit and 
		this->supports_incremental_solving()
	) return;
	auto output_word_size = this->ceil_log2(this->upper_bound_max_sharing_value + 1);
	std::vector<int> bits(output_word_size);
	for (int w = 0; w < output_word_size; w++)
	{
		bits[w] = this->config_sharing_result_variables.at(w);
	}
	// add zero bits until word sizes match
	auto reconf_lb_word_size = this->ceil_log2(this->min_reconf_mux_sharing + 1);
	while (bits.size() < reconf_lb_word_size) {
		bits.emplace_back(this->init_const_zero_bit());
	}
	// create lower limit for sharing
	this->create_lower_limit(bits, this->min_reconf_mux_sharing, false);
}

void cmm::create_bypassed_adder_limitation_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_bypassed_adder_limitation_constraints");
	}
	// sum up
	std::vector<std::pair<std::vector<int>, bool>> x;
	for (int idx = this->c_num_inputs(); idx < this->num_adders + this->c_num_inputs(); idx++) {
		auto bypassed_var = this->is_bypassed_adder_variables.at(idx);
		x.emplace_back(std::vector<int>(1, bypassed_var), false);
	}
	auto bits = this->create_bitheap(x);
	auto min_word_size = this->ceil_log2(this->num_bypassed_adders + 1);
	while (bits.size() < min_word_size) {
		bits.emplace_back(this->init_const_zero_bit());
	}
	// constrain to user-defined value
	this->create_lower_limit(bits, this->num_bypassed_adders, false);
}

void cmm::create_adder_depth_mux_increase_constraints(int idx, formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_adder_depth_mux_increase_constraints");
	}
	// increment by "need_mux" bit to increase adder depth count
	// just use a ripple-carry adder based on half adders for this
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (auto &dir : this->input_directions) {
			//int b = this->adder_in_config_needs_mux_variables.at({r, idx, dir});
			int b = this->adder_needs_mux_variables.at({idx, dir});
			for (int w = 0; w < this->adder_depth_word_size; w++)
			{
				int c_o;
				if (w < this->adder_depth_word_size - 1)
				{
					c_o = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
				else
				{
					c_o = -1;
				}
				auto a = this->adder_depth_computation_input_variables.at({r, idx, dir, w});
				auto sum = this->adder_depth_computation_input_post_mux_add_variables.at({r, idx, dir, w});
				this->create_half_adder({a, false}, {b, false}, {sum, false}, {c_o, false});
				b = c_o;
			}
		}
	}
}

void cmm::create_adder_needs_mux_constraints(int idx, formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_adder_needs_mux_constraints");
	}
	for (auto &dir : this->input_directions) {
		auto adder_needs_mux_var = this->adder_needs_mux_variables.at({idx, dir});
		std::vector<int> or_lits(1, -adder_needs_mux_var);
		for (auto r1 = 0; r1 < this->c_num_configs()-1; r1++) {
			// adder in config
			auto needs_mux_var = this->adder_in_config_needs_mux_variables.at({r1, idx, dir});
			std::vector<std::pair<int, bool>> clause = {{needs_mux_var, false}};
			for (auto r2 = r1 + 1; r2 < this->c_num_configs(); r2++) {
				auto sharing_var = this->config_can_be_shared_variables.at({r1, r2, idx, dir});
				clause.emplace_back(sharing_var, false);
				this->create_arbitrary_clause({{needs_mux_var, true}, {sharing_var, true}});
			}
			this->create_arbitrary_clause(clause);
			// adder as a whole
			or_lits.emplace_back(needs_mux_var);
			this->create_1x1_implication(needs_mux_var, adder_needs_mux_var);
		}
		this->create_or(or_lits);
	}
}

void cmm::create_outputs_need_mux_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_outputs_need_mux_constraints");
	}
	for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
		auto output_needs_mux_var = this->output_needs_mux_variables.at(idx);
		std::vector<int> or_lits(1, -output_needs_mux_var);
		for (auto r1 = 0; r1 < this->c_num_configs()-1; r1++) {
			// output in config
			auto needs_mux_var = this->output_in_config_needs_mux_variables.at({r1, idx});
			std::vector<std::pair<int, bool>> clause = {{needs_mux_var, false}};
			for (auto r2 = r1 + 1; r2 < this->c_num_configs(); r2++) {
				auto sharing_var = this->output_can_be_shared_variables.at({r1, r2, idx});
				clause.emplace_back(sharing_var, false);
				this->create_arbitrary_clause({{needs_mux_var, true}, {sharing_var, true}});
			}
			this->create_arbitrary_clause(clause);
			// output as a whole
			or_lits.emplace_back(needs_mux_var);
			this->create_1x1_implication(needs_mux_var, output_needs_mux_var);
		}
		this->create_or(or_lits);
	}
}

void cmm::create_output_depth_selection_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_output_depth_selection_constraints");
	}
	auto num_inputs = this->c_num_inputs() + this->num_adders;
	auto select_word_size = this->ceil_log2(num_inputs);
	auto next_pow_two = (1 << select_word_size);
	for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
		for (int r = 0; r < this->c_num_configs(); r++) {
			int mux_idx = 0;
			std::map<std::pair<int, int>, int> signal_variables;
			for (int i = 0; i < num_inputs; i++)
			{
				for (int w = 0; w < this->adder_depth_word_size; w++)
				{
					signal_variables[{i, w}] = this->adder_depth_variables.at({r, i, w});
				}
			}
			std::map<std::pair<int, int>, int> next_signal_variables;
			for (int mux_stage = 0; mux_stage < select_word_size; mux_stage++)
			{
				auto num_muxs_per_stage = (1 << mux_stage);
				auto mux_select_var_idx = this->input_output_select_selection_variables.at({r, idx, select_word_size - mux_stage - 1});
				for (int mux_idx_in_stage = 0; mux_idx_in_stage < num_muxs_per_stage; mux_idx_in_stage++)
				{
					if (mux_stage == select_word_size - 1)
					{
						// connect with another node output
						auto zero_input_node_idx = 2 * mux_idx_in_stage;
						auto one_input_node_idx = zero_input_node_idx + 1;
						if (zero_input_node_idx >= num_inputs)
							zero_input_node_idx = num_inputs - 1;
						if (one_input_node_idx >= num_inputs)
							one_input_node_idx = num_inputs - 1;
						for (int w = 0; w < this->adder_depth_word_size; w++)
						{
							auto mux_output_var_idx = this->adder_depth_computation_output_source_mux_variables.at({r, idx, mux_idx, w});
							auto zero_input_var_idx = this->adder_depth_variables.at({r, zero_input_node_idx, w});
							auto one_input_var_idx = this->adder_depth_variables.at({r, one_input_node_idx, w});
							if (zero_input_node_idx == one_input_node_idx)
							{
								// both inputs are equal -> mux output == mux input (select line does not matter...)
								this->create_1x1_equivalence(zero_input_var_idx, mux_output_var_idx);
							}
							else
							{
								this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, mux_select_var_idx, mux_output_var_idx);
							}
						}
					}
					else
					{
						// connect with mux from higher stage
						auto num_muxs_in_next_stage = (1 << (mux_stage + 1));
						auto zero_mux_idx_in_next_stage = 2 * mux_idx_in_stage;
						auto zero_input_mux_idx = num_muxs_in_next_stage - 1 + zero_mux_idx_in_next_stage;
						auto one_input_mux_idx = zero_input_mux_idx + 1;
						for (int w = 0; w < this->adder_depth_word_size; w++)
						{
							auto mux_output_var_idx = this->adder_depth_computation_output_source_mux_variables.at({r, idx, mux_idx, w});
							auto zero_input_var_idx = this->adder_depth_computation_output_source_mux_variables.at({r, idx, zero_input_mux_idx, w});
							auto one_input_var_idx = this->adder_depth_computation_output_source_mux_variables.at({r, idx, one_input_mux_idx, w});
							this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, mux_select_var_idx, mux_output_var_idx);
						}
					}
					// increment current mux idx
					mux_idx++;
				}
			}
		}
	}
}

void cmm::create_adder_depth_computation_post_mux_add_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_adder_depth_computation_post_mux_add_constraints");
	}
	// increment by "need_mux" bit to increase adder depth count
	// just use a ripple-carry adder based on half adders for this
	for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
		for (int r = 0; r < this->c_num_configs(); r++) {
			int b = this->output_needs_mux_variables.at(idx);
			for (int w = 0; w < this->adder_depth_word_size; w++)
			{
				int c_o;
				if (w < this->adder_depth_word_size - 1)
				{
					c_o = ++this->variable_counter;
					this->create_new_variable(this->variable_counter);
				}
				else
				{
					c_o = -1;
				}
				auto a = this->adder_depth_computation_output_source_variables.at({r, idx, w});
				auto sum = this->adder_depth_computation_output_post_mux_add_variables.at({r, idx, w});
				this->create_half_adder({a, false}, {b, false}, {sum, false}, {c_o, false});
				b = c_o;
			}
		}
	}
}

void cmm::create_adder_depth_computation_limit_at_outputs_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_adder_depth_computation_limit_at_outputs_constraints");
	}
	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
			int upper_limit = this->opt_adder_depth;
			std::vector<std::pair<int, bool>> clause_prototype;
			for (int w = this->adder_depth_word_size - 1; w >= 0; w--)
			{
				auto upper_limit_bit = (upper_limit >> w) & 1;
				auto x_w = this->adder_depth_computation_output_post_mux_add_variables.at({r, idx, w});
				if (upper_limit_bit)
				{
					clause_prototype.emplace_back(x_w, true);
				}
				else
				{
					auto clause = clause_prototype;
					clause.emplace_back(x_w, true);
					this->create_arbitrary_clause(clause);
				}
			}
		}
	}
}

void cmm::create_mux_register_sum_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_mux_register_sum_constraints");
	}
	auto sum_word_size = this->ceil_log2(this->upper_bound_reconf_mux_reg_sum+1);
	std::vector<std::pair<std::vector<int>, bool>> x;
	// add adder mux info to sum
	for (int idx = this->c_num_inputs(); idx < this->c_num_inputs() + this->num_adders; idx++) {
		x.emplace_back(std::vector<int>(), false);
		x.back().first.emplace_back(this->adder_needs_mux_variables.at({idx, input_direction::left}));
		x.emplace_back(std::vector<int>(), false);
		x.back().first.emplace_back(this->adder_needs_mux_variables.at({idx, input_direction::right}));
	}
	// add outputs to sum
	for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
		x.emplace_back(std::vector<int>(), false);
		x.back().first.emplace_back(this->output_needs_mux_variables.at(idx));
	}
	// compute sum
	auto result_vector = this->create_bitheap(x);
	for (int w = 0; w < sum_word_size; w++) {
		this->reconf_mux_reg_sum_variables[w] = result_vector.at(w);
	}
}

void cmm::create_mux_register_sum_limitation_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		mode != formulation_mode::only_reconf_pipe_limit and
		this->supports_incremental_solving()
	) return;
	if (!this->model_reconfiguration()) {
		throw std::runtime_error("SANITY CHECK FAILED: create_mux_register_sum_limitation_constraints");
	}
	auto sum_word_size = this->ceil_log2(this->upper_bound_reconf_mux_reg_sum+1);
	std::vector<int> x;
	for (int w = 0; w < sum_word_size; w++) {
		x.emplace_back(this->reconf_mux_reg_sum_variables.at(w));
	}
	this->create_upper_limit(x, this->max_reconf_mux_registers, false);
}

void cmm::create_reconf_output_selection_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;

	for (int r = 0; r < this->c_num_configs(); r++) {
		for (int idx = 0; idx < this->c_num_output_ports(r); idx++) {
			auto num_possible_inputs = this->num_adders + this->c_num_inputs();
			auto select_word_size = this->ceil_log2(num_possible_inputs);
			if (this->verbosity == verbosity_mode::debug_mode)
			{
				std::cout << "          creating output select upper bound constraints for node #" << idx << " with #possible inputs = " << num_possible_inputs << " and select word size " << select_word_size << std::endl;
			}
			std::vector<int> bits(select_word_size);
			for (int w = 0; w < select_word_size; w++)
			{
				bits[w] = this->input_output_select_selection_variables.at({r, idx, w});
			}
			this->create_upper_limit(bits, num_possible_inputs-1, false);
			if (this->verbosity == verbosity_mode::debug_mode)
			{
				std::cout << "          creating output select multiplexer constraints for node #" << idx << std::endl;
			}
			auto next_pow_two = (1 << select_word_size);
			for (int v = 0; v < this->c_row_size(); v++)
			{
				int mux_idx = 0;
				std::map<std::pair<int, int>, int> signal_variables;
				for (int i = 0; i < num_possible_inputs; i++)
				{
					for (int w = 0; w < this->word_size; w++)
					{
						signal_variables[{i, w}] = this->output_value_variables.at({r, i, w, v});
					}
				}
				std::map<std::pair<int, int>, int> next_signal_variables;
				for (int mux_stage = 0; mux_stage < select_word_size; mux_stage++)
				{
					auto num_muxs_per_stage = (1 << mux_stage);
					auto mux_select_var_idx = this->input_output_select_selection_variables.at({r, idx, select_word_size - mux_stage - 1});
					for (int mux_idx_in_stage = 0; mux_idx_in_stage < num_muxs_per_stage; mux_idx_in_stage++)
					{
						if (mux_stage == select_word_size - 1)
						{
							// connect with another node output
							auto zero_input_node_idx = 2 * mux_idx_in_stage;
							auto one_input_node_idx = zero_input_node_idx + 1;
							if (zero_input_node_idx >= num_possible_inputs)
								zero_input_node_idx = num_possible_inputs - 1;
							if (one_input_node_idx >= num_possible_inputs)
								one_input_node_idx = num_possible_inputs - 1;
							for (int w = 0; w < this->word_size; w++)
							{
								auto mux_output_var_idx = this->output_select_mux_variables.at({r, idx, mux_idx, w, v});
								auto zero_input_var_idx = this->output_value_variables.at({r, zero_input_node_idx, w, v});
								auto one_input_var_idx = this->output_value_variables.at({r, one_input_node_idx, w, v});
								if (zero_input_node_idx == one_input_node_idx)
								{
									// both inputs are equal -> mux output == mux input (select line does not matter...)
									this->create_1x1_equivalence(zero_input_var_idx, mux_output_var_idx);
								}
								else
								{
									this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, mux_select_var_idx, mux_output_var_idx);
								}
							}
						}
						else
						{
							// connect with mux from higher stage
							auto num_muxs_in_next_stage = (1 << (mux_stage + 1));
							auto zero_mux_idx_in_next_stage = 2 * mux_idx_in_stage;
							auto zero_input_mux_idx = num_muxs_in_next_stage - 1 + zero_mux_idx_in_next_stage;
							auto one_input_mux_idx = zero_input_mux_idx + 1;
							for (int w = 0; w < this->word_size; w++)
							{
								auto mux_output_var_idx = this->output_select_mux_variables.at({r, idx, mux_idx, w, v});
								auto zero_input_var_idx = this->output_select_mux_variables.at({r, idx, zero_input_mux_idx, w, v});
								auto one_input_var_idx = this->output_select_mux_variables.at({r, idx, one_input_mux_idx, w, v});
								this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, mux_select_var_idx, mux_output_var_idx);
							}
						}
						// increment current mux idx
						mux_idx++;
					}
				}
			}
		}
	}
}

void cmm::create_reconf_output_shift_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;


	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int idx = 0; idx < this->c_num_output_ports(r); idx++)
		{
			for (int v = 0; v < this->c_row_size(); v++)
			{
				for (auto stage = 0; stage < this->shift_word_size; stage++)
				{
					auto shift_width = (1 << stage);
					auto select_input_var_idx = this->input_output_shift_value_variables.at({r, idx, stage});
					auto first_disallowed_shift_bit = this->word_size - shift_width;
					for (auto w = 0; w < this->word_size; w++)
					{
						auto w_prev = w - shift_width;
						auto connect_zero_const = w_prev < 0;
						int zero_input_var_idx;
						int zero_input_sign_bit_idx;
						int one_input_var_idx;
						auto mux_output_var_idx = this->output_shift_internal_mux_output_variables.at({r, idx, stage, w, v});
						if (stage == 0)
						{
							// shifter input is the output of the selection mux
							zero_input_var_idx = this->output_select_mux_output_variables.at({r, idx, w, v});
							zero_input_sign_bit_idx = this->output_select_mux_output_variables.at({r, idx, this->word_size - 1, v});
							if (!connect_zero_const)
							{
								one_input_var_idx = this->output_select_mux_output_variables.at({r, idx, w_prev, v});
							}
						}
						else
						{
							// connect output of previous stage
							zero_input_var_idx = this->output_shift_internal_mux_output_variables.at({r, idx, stage - 1, w, v});
							zero_input_sign_bit_idx = this->output_shift_internal_mux_output_variables.at({r, idx, stage - 1, this->word_size - 1, v});
							if (!connect_zero_const)
							{
								one_input_var_idx = this->output_shift_internal_mux_output_variables.at({r, idx, stage - 1, w_prev, v});
							}
						}
						if (w >= first_disallowed_shift_bit)
						{
							if (this->calc_twos_complement)
							{
								if (connect_zero_const)
								{
									this->create_2x1_mux_zero_const(zero_input_var_idx, select_input_var_idx,
																	mux_output_var_idx);
								}
								else
								{
									this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, select_input_var_idx,
														mux_output_var_idx);
								}
								if (w == this->word_size - 1)
								{
									// these clauses are different for the sign bit
									this->create_signed_shift_overflow_protection(select_input_var_idx, zero_input_sign_bit_idx,
																				one_input_var_idx);
								}
								else
								{
									this->create_signed_shift_overflow_protection(select_input_var_idx, zero_input_sign_bit_idx,
																				zero_input_var_idx);
								}
							}
							else
							{
								if (connect_zero_const)
								{
									this->create_1x1_equivalence(zero_input_var_idx, mux_output_var_idx);
									this->create_1x1_negated_implication(zero_input_var_idx, select_input_var_idx);
									this->create_1x1_negated_implication(mux_output_var_idx, select_input_var_idx);
								}
								else
								{
									this->create_2x1_mux_shift_disallowed(zero_input_var_idx, one_input_var_idx,
																		select_input_var_idx, mux_output_var_idx);
								}
							}
						}
						else
						{
							if (connect_zero_const)
							{
								this->create_2x1_mux_zero_const(zero_input_var_idx, select_input_var_idx, mux_output_var_idx);
							}
							else
							{
								this->create_2x1_mux(zero_input_var_idx, one_input_var_idx, select_input_var_idx,
													mux_output_var_idx);
							}
						}
					}
					// sign bits before and after shifting must be identical if calculating in 2's complement
					if (this->calc_twos_complement)
					{
						int shift_input_sign_bit_idx = this->output_select_mux_output_variables.at({r, idx, this->word_size - 1, v});
						int shift_output_sign_bit_idx = this->output_shift_output_variables.at({r, idx, this->word_size - 1, v});
						this->create_1x1_equivalence(shift_input_sign_bit_idx, shift_output_sign_bit_idx);
					}
				}
			}
		}
	}
}

void cmm::create_reconf_output_negation_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;

	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int idx = 0; idx < this->c_num_output_ports(r); idx++)
		{
			auto negate_var_idx = this->input_output_negate_value_variables.at({r, idx});
			for (int v = 0; v < this->c_row_size(); v++)
			{
				int carry_in = negate_var_idx;
				for (int w = 0; w < this->word_size; w++)
				{
					if (!this->calc_twos_complement or this->implement_coeff_signs_as_requested) {
						// no negation allowed
						this->create_arbitrary_clause({{negate_var_idx, true}});
					}
					// compute negation
					// 1's complement
					int input_var_idx = this->output_shift_output_variables.at({r, idx, w, v});
					auto xor_var_idx = this->output_negate_value_variables.at({r, idx, w, v});
					this->create_2x1_xor(negate_var_idx, input_var_idx, xor_var_idx);
					// +1 for 2's complement
					int carry_out;
					if (w < this->word_size-1) {
						carry_out = ++this->variable_counter;
						this->create_new_variable(this->variable_counter);
					}
					else {
						carry_out = -1;
					}
					auto output_var_idx = this->output_actual_value_variables.at({r, idx, w, v});
					this->create_half_adder({xor_var_idx, false}, {carry_in, false}, {output_var_idx, false}, {carry_out, false});
					carry_in = carry_out;
				}
			}
		}
	}
}

void cmm::create_reconf_output_identical_inversion_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	
	for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
		// if two coefficients from different configs are mapped to this port, 
		// then they must be present with the same inversion status (i.e., both inverted or both as requested)
		//for (auto &it1 : this->requested_vectors) {
		for (size_t req_vec_idx1 = 0; req_vec_idx1 < this->requested_vectors.size(); req_vec_idx1++) {
			auto &it1 = this->requested_vectors.at(req_vec_idx1);
			auto r1 = it1.first.first;
			auto vec_1 = it1.first.second;
			auto m1 = this->coeff_idx_mapping.at(req_vec_idx1);
			//for (auto &it2 : this->requested_vectors) {
			for (size_t req_vec_idx2 = 0; req_vec_idx2 < this->requested_vectors.size(); req_vec_idx2++) {
				auto &it2 = this->requested_vectors.at(req_vec_idx2);
				auto r2 = it2.first.first; 
				auto vec_2 = it2.first.second;
				if (r2 <= r1) continue;
				auto m2 = this->coeff_idx_mapping.at(req_vec_idx2);
				// forbid -m1 and m2
				if (mcm_output_variable_exists(r1, -m1)) {
					auto var_1 = this->mcm_output_variables.at({r1, idx, -m1});
					auto var_2 = this->mcm_output_variables.at({r2, idx, m2});
					this->create_arbitrary_clause({{var_1, true}, {var_2, true}});
				}
				// forbid m1 and -m2
				if (mcm_output_variable_exists(r2, -m2)) {
					auto var_1 = this->mcm_output_variables.at({r1, idx, m1});
					auto var_2 = this->mcm_output_variables.at({r2, idx, -m2});
					this->create_arbitrary_clause({{var_1, true}, {var_2, true}});
				}
			}
		}
	}
}

void cmm::create_reconf_output_sharing_constraints(formulation_mode mode) {
	if (
		mode != formulation_mode::reset_all and 
		this->supports_incremental_solving()
	) return;
	for (int idx = 0; idx < this->c_num_output_ports(); idx++) {
		for (int r1 = 0; r1 < this->c_num_configs(); r1++) {
			auto num_outputs_r1 = this->c_num_output_ports(r1);
			if (num_outputs_r1 <= idx) {
				// output does not exist for this config
				continue;
			}
			for (int r2 = r1+1; r2 < this->c_num_configs(); r2++) {
				auto num_outputs_r2 = this->c_num_output_ports(r2);
				if (num_outputs_r2 <= idx) {
					// output does not exist for this config
					continue;
				}
				auto sharing_var = this->output_can_be_shared_variables.at({r1, r2, idx});
				// output CANNOT be shared between config r1 and r2
				// -> if sources do not match
				auto input_mux_word_size = this->ceil_log2(this->num_adders + this->c_num_inputs());
				for (int w = 0; w < input_mux_word_size; w++) {
					auto mux_select_var_r1 = this->input_output_select_selection_variables.at({r1, idx, w});
					auto mux_select_var_r2 = this->input_output_select_selection_variables.at({r2, idx, w});
					this->create_equivalence_sharing_implication(mux_select_var_r1, mux_select_var_r2, sharing_var);
				}
				// -> if shifts do not match
				for (int w = 0; w < this->shift_word_size; w++) {
					int shift_var_r1 = this->input_output_shift_value_variables.at({r1, idx, w});
					int shift_var_r2 = this->input_output_shift_value_variables.at({r2, idx, w});
					this->create_equivalence_sharing_implication(shift_var_r1, shift_var_r2, sharing_var);
				}
				// -> if negations do not match
				auto negation_var_r1 = this->input_output_negate_value_variables.at({r1, idx});
				auto negation_var_r2 = this->input_output_negate_value_variables.at({r2, idx});
				this->create_equivalence_sharing_implication(negation_var_r1, negation_var_r2, sharing_var);
			}
		}
	}	
}

void cmm::create_full_adder(std::pair<int, bool> a, std::pair<int, bool> b, std::pair<int, bool> c_i,
							std::pair<int, bool> sum, std::pair<int, bool> c_o)
{
#if ADD_OPT_CLAUSES
	// build only clauses for the sum computation if only the sum was requested (i.e., c_o = -1)
	if (c_o.first == -1)
	{
		// 1)
		this->create_arbitrary_clause({{a.first, a.second},
									   {b.first, not b.second},
									   {c_i.first, c_i.second},
									   {sum.first, sum.second}});
		// 2)
		this->create_arbitrary_clause({{a.first, not a.second},
									   {b.first, b.second},
									   {c_i.first, c_i.second},
									   {sum.first, sum.second}});
		// 3)
		this->create_arbitrary_clause({{a.first, a.second},
									   {b.first, b.second},
									   {c_i.first, c_i.second},
									   {sum.first, not sum.second}});
		// 4)
		this->create_arbitrary_clause({{a.first, not a.second},
									   {b.first, not b.second},
									   {c_i.first, c_i.second},
									   {sum.first, not sum.second}});
		// 5)
		this->create_arbitrary_clause({{a.first, a.second},
									   {b.first, not b.second},
									   {c_i.first, not c_i.second},
									   {sum.first, not sum.second}});
		// 6)
		this->create_arbitrary_clause({{a.first, not a.second},
									   {b.first, b.second},
									   {c_i.first, not c_i.second},
									   {sum.first, not sum.second}});
		// 7)
		this->create_arbitrary_clause({{a.first, a.second},
									   {b.first, b.second},
									   {c_i.first, not c_i.second},
									   {sum.first, sum.second}});
		// 8)
		this->create_arbitrary_clause({{a.first, not a.second},
									   {b.first, not b.second},
									   {c_i.first, not c_i.second},
									   {sum.first, sum.second}});
		return;
	}
	// build carry clauses and use them to generate an optimized set of sum clauses
	// c_o computation (from a, b, c_i):
	// 1)
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, not b.second},
								   {c_o.first, c_o.second}});
	// 2)
	this->create_arbitrary_clause({{a.first, a.second},
								   {c_i.first, c_i.second},
								   {c_o.first, not c_o.second}});
	// 3)
	this->create_arbitrary_clause({{b.first, b.second},
								   {c_i.first, c_i.second},
								   {c_o.first, not c_o.second}});
	// 4)
	this->create_arbitrary_clause({{a.first, a.second},
								   {b.first, b.second},
								   {c_o.first, not c_o.second}});
	// 5)
	this->create_arbitrary_clause({{b.first, not b.second},
								   {c_i.first, not c_i.second},
								   {c_o.first, c_o.second}});
	// 6)
	this->create_arbitrary_clause({{a.first, not a.second},
								   {c_i.first, not c_i.second},
								   {c_o.first, c_o.second}});
	// sum computation (from a, b, c_i, c_o):
	// 1)
	this->create_arbitrary_clause({{a.first, a.second}, {c_o.first, not c_o.second}, {sum.first, not sum.second}});
	// 2)
	this->create_arbitrary_clause({{b.first, b.second}, {c_o.first, not c_o.second}, {sum.first, not sum.second}});
	// 3)
	this->create_arbitrary_clause({{c_i.first, c_i.second}, {c_o.first, not c_o.second}, {sum.first, not sum.second}});
	// 4)
	this->create_arbitrary_clause({{a.first, a.second}, {b.first, b.second}, {c_i.first, c_i.second}, {sum.first, not sum.second}});
	// 5)
	this->create_arbitrary_clause({{a.first, not a.second}, {c_o.first, c_o.second}, {sum.first, sum.second}});
	// 6)
	this->create_arbitrary_clause({{b.first, not b.second}, {c_o.first, c_o.second}, {sum.first, sum.second}});
	// 7)
	this->create_arbitrary_clause({{c_i.first, not c_i.second}, {c_o.first, c_o.second}, {sum.first, sum.second}});
	// 8)
	this->create_arbitrary_clause({{a.first, not a.second}, {b.first, not b.second}, {c_i.first, not c_i.second}, {sum.first, sum.second}});
#else
	// this->create_add_sum(a, b, c_i, sum);
	//  1)
	this->create_arbitrary_clause({{a.first, a.second},
								   {b.first, not b.second},
								   {c_i.first, c_i.second},
								   {sum.first, sum.second}});
	// 2)
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, b.second},
								   {c_i.first, c_i.second},
								   {sum.first, sum.second}});
	// 3)
	this->create_arbitrary_clause({{a.first, a.second},
								   {b.first, b.second},
								   {c_i.first, c_i.second},
								   {sum.first, not sum.second}});
	// 4)
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, not b.second},
								   {c_i.first, c_i.second},
								   {sum.first, not sum.second}});
	// 5)
	this->create_arbitrary_clause({{a.first, a.second},
								   {b.first, not b.second},
								   {c_i.first, not c_i.second},
								   {sum.first, not sum.second}});
	// 6)
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, b.second},
								   {c_i.first, not c_i.second},
								   {sum.first, not sum.second}});
	// 7)
	this->create_arbitrary_clause({{a.first, a.second},
								   {b.first, b.second},
								   {c_i.first, not c_i.second},
								   {sum.first, sum.second}});
	// 8)
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, not b.second},
								   {c_i.first, not c_i.second},
								   {sum.first, sum.second}});

	if (c_o.first <= 0)
		return;
	// this->create_add_carry(a, b, c_i, c_o);
	//  1)
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, not b.second},
								   {c_o.first, c_o.second}});
	// 2)
	this->create_arbitrary_clause({{a.first, a.second},
								   {c_i.first, c_i.second},
								   {c_o.first, not c_o.second}});
	// 3)
	this->create_arbitrary_clause({{b.first, b.second},
								   {c_i.first, c_i.second},
								   {c_o.first, not c_o.second}});
	// 4)
	this->create_arbitrary_clause({{a.first, a.second},
								   {b.first, b.second},
								   {c_o.first, not c_o.second}});
	// 5)
	this->create_arbitrary_clause({{b.first, not b.second},
								   {c_i.first, not c_i.second},
								   {c_o.first, c_o.second}});
	// 6)
	this->create_arbitrary_clause({{a.first, not a.second},
								   {c_i.first, not c_i.second},
								   {c_o.first, c_o.second}});
#endif
}

void cmm::create_half_adder(std::pair<int, bool> a, std::pair<int, bool> b, std::pair<int, bool> sum,
							std::pair<int, bool> c_o)
{
	// this->create_2x1_xor(a, b, sum);
	//  1) a b -sum
	this->create_arbitrary_clause({{a.first, a.second},
								   {b.first, b.second},
								   {sum.first, not sum.second}});
	// 2) a -b sum
	this->create_arbitrary_clause({{a.first, a.second},
								   {b.first, not b.second},
								   {sum.first, sum.second}});
	// 3) -a b sum
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, b.second},
								   {sum.first, sum.second}});
	// 4) -a -b -sum
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, not b.second},
								   {sum.first, not sum.second}});

	if (c_o.first <= 0)
		return;
	// this->create_2x1_and(a, b, c_o);
	//  1) -a -b c_o
	this->create_arbitrary_clause({{a.first, not a.second},
								   {b.first, not b.second},
								   {c_o.first, c_o.second}});
	// 2) a -c_o
	this->create_arbitrary_clause({{a.first, a.second},
								   {c_o.first, not c_o.second}});
	// 3) b -c_o
	this->create_arbitrary_clause({{b.first, b.second},
								   {c_o.first, not c_o.second}});
}

int cmm::init_const_one_bit()
{
	if (this->const_one_bit < 1)
	{
		this->const_one_bit = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
		this->force_bit(this->const_one_bit, 1);
	}
	return this->const_one_bit;
}

int cmm::init_const_zero_bit()
{
	if (this->const_zero_bit < 1)
	{
		this->const_zero_bit = ++this->variable_counter;
		this->create_new_variable(this->variable_counter);
		this->force_bit(this->const_zero_bit, 0);
	}
	return this->const_zero_bit;
}

std::vector<int> cmm::create_bitheap(const std::vector<std::pair<std::vector<int>, bool>> &x)
{
	std::vector<int> result_variables;
	std::map<int, std::vector<std::pair<int, bool>>> y;
	int num_bits = 0;
	for (auto &it : x)
	{
		auto bits = it.first;
		auto sub = it.second;
		if (bits.size() > num_bits)
			num_bits = bits.size();
		if (sub)
		{
			// add 1 for 2k inversion
			y[0].emplace_back(this->init_const_one_bit(), false);
			// add inverted bits
			for (int bit_pos = 0; bit_pos < bits.size(); bit_pos++)
			{
				y[bit_pos].emplace_back(bits[bit_pos], true);
			}
		}
		else
		{
			// add bits
			for (int bit_pos = 0; bit_pos < bits.size(); bit_pos++)
			{
				y[bit_pos].emplace_back(bits[bit_pos], false);
			}
		}
	}
	int i = 0;
	while (i < num_bits)
	{
		while (y[i].size() > 1)
		{
			if (y[i].size() == 2)
			{
				// half adder
				// create new literals for sum and carry
				auto sum = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				auto carry = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				// get bits to add from container
				auto a = y[i].back();
				y[i].pop_back();
				auto b = y[i].back();
				y[i].pop_back();
				// create clauses
				this->create_half_adder(a, b, {sum, false}, {carry, false});
				// add new bits to bitheap
				y[i].emplace_back(sum, false);
				y[i + 1].emplace_back(carry, false);
				if (i + 2 > num_bits)
					num_bits = i + 2;
			}
			else
			{
				// full adder
				// create new literals for sum and carry
				auto sum = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				auto carry = ++this->variable_counter;
				this->create_new_variable(this->variable_counter);
				// get bits to add from container
				auto a = y[i].back();
				y[i].pop_back();
				auto b = y[i].back();
				y[i].pop_back();
				auto c = y[i].back();
				y[i].pop_back();
				// create clauses
				this->create_full_adder(a, b, c, {sum, false}, {carry, false});
				y[i].emplace_back(sum, false);
				y[i + 1].emplace_back(carry, false);
				if (i + 2 > num_bits)
					num_bits = i + 2;
			}
		}
		if (y[i].size() != 1)
		{
			std::cerr << "Failed compressing bits at position " << i << " -> " << y[i].size() << " bits are left instead of 1"
					  << std::endl;
			throw std::runtime_error("error during bitheap clause generation");
		}
		if (y[i][0].second)
		{
			std::cerr << "Failed compressing bits at position " << i << " -> the output bit is inverted..." << std::endl;
			throw std::runtime_error("error during bitheap clause generation");
		}
		result_variables.emplace_back(y[i][0].first);
		// advance to next bit position
		i++;
	}
	return result_variables;
}

void cmm::prohibit_current_solution()
{
	std::vector<std::pair<int, bool>> clause_base;
	std::set<int> inputs_permutable_indices;
	std::map<int, bool> is_subtracter;
	std::map<int, std::pair<int, bool>> negate_select_literals;
	std::map<int, std::vector<std::pair<int, bool>>> input_literals_l;
	std::map<int, std::vector<std::pair<int, bool>>> input_literals_r;
	int v; // variable buffer
	for (int r = 0; r < this->c_num_configs(); r++)
	{
		for (int i = this->c_row_size(); i < this->num_adders + this->c_row_size(); i++)
		{
			// pre add shift
			bool shift_eq_zero = true;
			for (int s = 0; s < this->shift_word_size; s++)
			{
				v = this->input_shift_value_variables.at({r, i, s});
				clause_base.emplace_back(v, this->get_result_value(v));
				shift_eq_zero = shift_eq_zero and !this->get_result_value(v);
			}
			if (shift_eq_zero)
			{
				// if the shift is equal to zero then the assignment to left/right input can be swapped without consequences
				inputs_permutable_indices.insert(i);
			}
			auto mux_word_size = this->ceil_log2(i);
			if (mux_word_size > 0)
			{
				// left input mux
				for (int s = 0; s < mux_word_size; s++)
				{
					v = this->input_select_selection_variables.at({r, i, cmm::left, s});
					if (shift_eq_zero)
					{
						input_literals_l[i].emplace_back(v, this->get_result_value(v));
					}
					else
					{
						clause_base.emplace_back(v, this->get_result_value(v));
					}
				}
				// right input mux
				for (int s = 0; s < mux_word_size; s++)
				{
					v = this->input_select_selection_variables.at({r, i, cmm::right, s});
					if (shift_eq_zero)
					{
						input_literals_r[i].emplace_back(v, this->get_result_value(v));
					}
					else
					{
						clause_base.emplace_back(v, this->get_result_value(v));
					}
				}
			}
			// negate value
			v = this->input_negate_value_variables.at({r, i});
			is_subtracter[i] = this->get_result_value(v);
			clause_base.emplace_back(v, is_subtracter[i]);
			// negate select
			if (is_subtracter[i])
			{
				// only include negate select if a subtraction was performed
				v = this->input_negate_select_variables.at({r, i});
				if (shift_eq_zero)
				{
					// permutable inputs are handled separately, later
					negate_select_literals[i] = {v, this->get_result_value(v)};
				}
				else
				{
					// non-permutable indices must be added to the clause base
					clause_base.emplace_back(v, this->get_result_value(v));
				}
			}
			// post add shift
			if (this->enable_node_output_shift)
			{
				for (int s = 0; s < this->shift_word_size; s++)
				{
					v = this->input_post_adder_shift_value_variables.at({r, i, s});
					if (r > 0) continue; // only do this for r=0
					clause_base.emplace_back(v, this->get_result_value(v));
				}
			}
		}
	}
	auto num_clauses_to_add = (1 << inputs_permutable_indices.size());
	for (int clause_counter = 0; clause_counter < num_clauses_to_add; clause_counter++)
	{
		auto clause = clause_base; // copy clause base
		// add permutable inputs to clause
		int idx_counter = 0;
		for (auto idx : inputs_permutable_indices)
		{
			auto swap_inputs = (clause_counter >> idx_counter) & 1;
			auto mux_word_size = this->ceil_log2(idx);
			// handle input literals
			for (int w = 0; w < mux_word_size; w++)
			{
				auto lit_l = input_literals_l.at(idx).at(w);
				auto var_idx_l = lit_l.first;
				auto val_idx_l = lit_l.second;
				auto lit_r = input_literals_r.at(idx).at(w);
				auto var_idx_r = lit_r.first;
				auto val_idx_r = lit_r.second;
				if (swap_inputs)
				{
					// left/right swapped
					clause.emplace_back(var_idx_l, val_idx_r);
					clause.emplace_back(var_idx_r, val_idx_l);
				}
				else
				{
					// left/right NOT swapped
					clause.emplace_back(var_idx_l, val_idx_l);
					clause.emplace_back(var_idx_r, val_idx_r);
				}
			}
			// handle subtract selection
			if (is_subtracter[idx])
			{
				// prohibit inverted sign bit
				auto lit_n = negate_select_literals.at(idx);
				auto var_idx_n = lit_n.first;
				auto val_idx_n = lit_n.second;
				if (swap_inputs)
				{
					clause.emplace_back(var_idx_n, not val_idx_n);
				}
				else
				{
					clause.emplace_back(var_idx_n, val_idx_n);
				}
			}
			idx_counter++;
		}
		// add clause
		this->already_enumerated_solutions_cache.emplace_back(clause);
		if (this->supports_incremental_solving())
		{
			this->create_arbitrary_clause(clause);
		}
	}
}

void cmm::set_enumerate_all(bool new_enumerate_all)
{
	this->enumerate_all = new_enumerate_all;
}

int cmm::compute_full_bit_level_costs_from_solution()
{
	int current_bit_level_costs = 0;
	for (int idx = this->c_row_size(); idx < this->num_adders + this->c_row_size(); idx++)
	{
		int sum_over_abs_values = 0;
		bool all_values_negative = true;
		for (int v = 0; v < this->c_row_size(); v++)
		{
			if (this->output_values.at({RECONF_CONST, idx, v}) > 0)
			{
				all_values_negative = false;
			}
			if (this->pipelining_enabled)
			{
				// actual value (after post adder right shift) is relevant for register costs
				sum_over_abs_values += std::abs(this->output_values.at({RECONF_CONST, idx, v}));
			}
			else
			{
				// adder output word size is relevant here
				sum_over_abs_values += std::abs(this->add_result_values.at({RECONF_CONST, idx, v}));
			}
		}
		if (all_values_negative)
		{
			// tie breaker if sum_over_abs_values is a power of 2 and all values are negative
			// => then, the solution needs 1 bit more
			sum_over_abs_values++;
		}
		int bits_coefficient_word_size = static_cast<int>(std::ceil(std::log2(sum_over_abs_values)));
		int shifter_input_non_zero_LSBs = 0;
		while (true)
		{ // exit by explicit break statement
			if (idx < 2)
				break;
			bool all_even = true;
			for (int v = 0; v < this->c_row_size(); v++)
			{
				auto shifter_input = this->input_select_mux_output.at({RECONF_CONST, idx, cmm::left, v});
				if (((shifter_input >> shifter_input_non_zero_LSBs) & 1) == 1)
				{
					all_even = false;
					break;
				}
			}
			if (!all_even)
				break;
			shifter_input_non_zero_LSBs++;
		}
		int num_LSBs_cut = 0;
		if (!this->pipelining_enabled and (this->subtract.at({RECONF_CONST, idx}) == 0 or this->negate_select.at({RECONF_CONST, idx}) == 0))
		{
			// for pipelined adder graphs we must also store LSBs in registers
			// BUT for non-pipelined adder graphs we can omit full adders for the shifted LSBs:
			//   for a + b
			//   and a - (b << s)
			num_LSBs_cut += (this->shift_value.at({RECONF_CONST, idx}) + shifter_input_non_zero_LSBs);
		}
		bool can_cut_MSB = false;
		if (!this->pipelining_enabled and this->c_row_size() == 1)
		{
			// can only cut the MSB for SCM/MCM
			// and when pipelining is disabled
			can_cut_MSB =
				(this->output_values.at({RECONF_CONST, idx, 0}) >= 0 and this->input_select_mux_output[{RECONF_CONST, idx, cmm::left, 0}] >= 0) or
				(this->output_values.at({RECONF_CONST, idx, 0}) >= 0 and this->input_select_mux_output[{RECONF_CONST, idx, cmm::right, 0}] >= 0) or
				(this->output_values.at({RECONF_CONST, idx, 0}) < 0 and this->input_select_mux_output[{RECONF_CONST, idx, cmm::left, 0}] < 0) or
				(this->output_values.at({RECONF_CONST, idx, 0}) < 0 and this->input_select_mux_output[{RECONF_CONST, idx, cmm::right, 0}] < 0);
		}
		int bit_level_costs_for_this_node = bits_coefficient_word_size - (static_cast<int>(can_cut_MSB) + num_LSBs_cut);
		const std::string word_size_source_str = (this->pipelining_enabled ? "coefficient" : "adder output");
		if (this->verbosity != verbosity_mode::quiet_mode)
		{
			std::cout << "Additional bit-level costs for node " << idx << " = " << bit_level_costs_for_this_node << " (" << word_size_source_str << " word size = " << bits_coefficient_word_size << ", LSBs cut = " << num_LSBs_cut << ", MSBs cut = " << (int)can_cut_MSB << ")" << std::endl;
		}
		current_bit_level_costs += bit_level_costs_for_this_node;
	}
	return current_bit_level_costs;
}

int cmm::compute_reconf_mux_sharing_from_solution()
{
	int current_sharing_value = 0;
	// sharing between adder node inputs
	for (int idx = this->c_row_size(); idx < this->num_adders + this->c_row_size(); idx++)
	{
		for (auto dir : this->input_directions)
		{
			for (int r1 = 0; r1 < this->c_num_configs(); r1++)
			{
				if (this->num_bypassed_adders > 0 and this->is_bypassed_adder.at({idx}) and dir == input_direction::right and r1 < this->c_num_configs() - 1) {
					// this MUX does not exist in bypassed adders -> always count as "shared"
					current_sharing_value++;
					continue;
				}
				for (int r2 = r1 + 1; r2 < this->c_num_configs(); r2++)
				{
					// check if input indices match
					int input_idx_r1 = this->input_select.at({r1, idx, dir});
					int input_idx_r2 = this->input_select.at({r2, idx, dir});
					if (input_idx_r1 != input_idx_r2)
						continue;
					// check if shift values match
					int shift_val_r1;
					int shift_val_r2;
					if (dir == input_direction::left)
					{
						shift_val_r1 = this->shift_value.at({r1, idx});
						shift_val_r2 = this->shift_value.at({r2, idx});
					}
					else
					{
						shift_val_r1 = this->other_shift_value.at({r1, idx});
						shift_val_r2 = this->other_shift_value.at({r2, idx});
					}
					if (shift_val_r1 != shift_val_r2)
						continue;
					// found one to share :)
					current_sharing_value++;
					break;
				}
			}
		}
	}
	// sharing between outputs
	for (int idx = 0; idx < this->c_num_output_ports(); idx++)
	{
		for (int r1 = 0; r1 < this->c_num_configs(); r1++)
		{
			auto num_outputs_r1 = this->c_num_output_ports(r1);
			for (int r2 = r1 + 1; r2 < this->c_num_configs(); r2++)
			{
				auto num_outputs_r2 = this->c_num_output_ports(r2);
				if (num_outputs_r1 <= idx or num_outputs_r2 <= idx)
				{
					// output does not exist for this config
					continue;
				}
				// get requested output vectors
				std::vector<int> req_vec_r1;
				std::vector<int> req_vec_r2;
				int m_r1;
				int m_r2;
				bool found_m_r1 = false;
				bool found_m_r2 = false;
				//for (auto &req_vec_it : this->requested_vectors) {
				for (size_t req_vec_idx = 0; req_vec_idx < this->requested_vectors.size(); req_vec_idx++) {
					auto &req_vec_it = this->requested_vectors.at(req_vec_idx);
					auto r_it = req_vec_it.first.first;
					auto vec_it = req_vec_it.first.second;
					auto m_it = this->coeff_idx_mapping.at(req_vec_idx);
					auto port_idx_it = this->output_port_assignments.at(req_vec_idx);
					if (r_it == r1 and port_idx_it == idx) {
						req_vec_r1 = vec_it;
						m_r1 = m_it;
						found_m_r1 = true;
					}
					if (r_it == r2 and port_idx_it == idx) {
						req_vec_r2 = vec_it;
						m_r2 = m_it;
						found_m_r2 = true;
					}
				}
				if (!found_m_r1 or !found_m_r2) {
					throw std::runtime_error("Failed to determine mux sharing because of corrupt solution");
				}
				// check if input indices match
				auto input_idx_r1 = this->output_node_assignments.at({r1, m_r1});
				auto input_idx_r2 = this->output_node_assignments.at({r2, m_r2});
				if (input_idx_r1 != input_idx_r2) {
					continue;
				}
				// check if negations match
				bool same_sign_r1 = true;
				bool same_sign_r2 = true;
				bool output_r1_all_zero = true;
				bool output_r2_all_zero = true;
				for (auto v = 0; v < this->c_row_size(); v++)
				{
					auto req_is_neg_r1 = req_vec_r1.at(v) < 0;
					auto act_is_neg_r1 = this->output_values.at({r1, input_idx_r1, v}) < 0;
					if (req_is_neg_r1 != act_is_neg_r1) {
						same_sign_r1 = false;
					}
					if (this->output_values.at({r1, input_idx_r1, v}) != 0) {
						output_r1_all_zero = false;
					}
					auto req_is_neg_r2 = req_vec_r2.at(v) < 0;
					auto act_is_neg_r2 = this->output_values.at({r2, input_idx_r2, v}) < 0;
					if (req_is_neg_r2 != act_is_neg_r2) {
						same_sign_r2 = false;
					}
					if (this->output_values.at({r2, input_idx_r2, v}) != 0) {
						output_r2_all_zero = false;
					}
				}
				// invalid solution if negations do not match!
				// and do not care about negations of all-zero vectors
				if (same_sign_r1 != same_sign_r2 and !output_r1_all_zero and !output_r2_all_zero) {
					// negations do not match
					return -1;
				}
				// check if shift values match
				bool all_zero_r1 = true;
				bool all_zero_r2 = true;
				auto matching_shift_r1 = 0;
				auto matching_shift_r2 = 0;
				bool match_r1 = false;
				while (!match_r1) {
					match_r1 = true;
					for (auto v = 0; v < this->c_row_size(); v++) {
						auto req_elem = req_vec_r1.at(v) << this->fundamental_fractional_bits;
						if (req_elem != 0) all_zero_r1 = false;
						auto act_elem = this->output_values.at({r1, input_idx_r1, v});
						act_elem = act_elem <<  matching_shift_r1;
						if (!same_sign_r1) act_elem *= -1;
						if (req_elem != act_elem) {
							match_r1 = false;
							matching_shift_r1++;
							break;
						}
					}
				}
				bool match_r2 = false;
				while (!match_r2) {
					match_r2 = true;
					for (auto v = 0; v < this->c_row_size(); v++) {
						auto req_elem = req_vec_r2.at(v) << this->fundamental_fractional_bits;
						if (req_elem != 0) all_zero_r2 = false;
						auto act_elem = this->output_values.at({r2, input_idx_r2, v});
						act_elem = act_elem <<  matching_shift_r2;
						if (!same_sign_r2) act_elem *= -1;
						if (req_elem != act_elem) {
							match_r2 = false;
							matching_shift_r2++;
							break;
						}
					}
				}
				// shift values always match if one of them is an all-zero vector
				if (!all_zero_r1 and !all_zero_r2 and matching_shift_r1 != matching_shift_r2) {
					// shift values do not match
					continue;
				}
				// found one to share :)
				current_sharing_value++;
				break;
			}
		}
	}
	// finished
	return current_sharing_value;
}

int cmm::compute_reconf_mux_registers_from_solution() {
	int num_regs = 0;
	// just count the number of multiplexer nodes in the adder graph (nodes with the tag 'M')
	this->adder_graph_str = this->get_adder_graph_description();
	std::string::size_type pos = 0;
	std::string target = "'M'";
	while ((pos = this->adder_graph_str.find(target, pos)) != std::string::npos) {
		++num_regs;
		pos += target.length();
	}
	return num_regs;
}

void cmm::actually_solve()
{
	this->num_add_opt = true;
	this->num_reconf_mux_opt = true;
	this->num_reconf_mux_reg_opt = true;
	this->num_FA_opt = true;
	this->already_enumerated_solutions_cache.clear();
	if (this->verbosity == verbosity_mode::debug_mode)
	{
		if (this->enumerate_all)
		{
			std::cout << "ENUMERATION MODE!" << std::endl;
		}
		std::cout << "Coefficient(s) after preprocessing:" << std::endl;
		std::cout << cmm::get_matrix_as_pretty_string(this->C) << std::endl;
		std::cout << "Word size: " << this->word_size << std::endl;
		std::cout << "Max shift: " << this->max_shift << std::endl;
	}
	bool trivial = true;
	// inputs that comprise ONLY unit vectors with the same sign FOR ALL CONFIGURATIONS are trivial
	bool all_positive = true;
	bool all_negative = true;
	for (size_t r = 0; r < this->c_num_configs(); r++) 
	{
		auto &matrix = this->C.at(r);
		for (auto &v : matrix)
		{
			if (!cmm::is_unit_vector(v) or (this->implement_coeff_signs_as_requested and !cmm::is_non_negative_vector(v)))
			{
				trivial = false;
				break;
			}
			if (this->inverted_coeff_requested.at({r, v}) or !this->is_non_negative_vector(v)) {
				all_positive = false;
			}
			else if (this->is_non_negative_vector(v) and !this->is_zero_vector(v)) {
				all_negative = false;
			}
		}
	}
	if (trivial and (all_negative or all_positive))
	{
		if (this->verbosity != verbosity_mode::quiet_mode) {
			std::cerr << "-> This might be a trivial problem instance!" << std::endl;
		}
		this->found_solution = true;
		this->ran_into_timeout = false;
		// define coefficient values
		for (int r = 0; r < this->c_num_configs(); r++)
		{
			for (int idx = 0; idx < this->c_num_inputs(); idx++)
			{
				for (int jdx = 0; jdx < this->c_num_inputs(); jdx++)
				{
					if (idx == jdx)
					{
						this->output_values[{r, idx, jdx}] = (1 << this->fundamental_fractional_bits);
					}
					else
					{
						this->output_values[{r, idx, jdx}] = 0;
					}
				}
				if (this->pipelining_enabled) {
					this->pipeline_stage[{r, idx}] = 0;
				}
			}
		}
		// define output assignments
		std::map<int, int> output_port_cnt;
		std::map<int, std::vector<int>> output_shifts_per_port;
		for (size_t req_vec_idx = 0; req_vec_idx < this->requested_vectors.size(); req_vec_idx++) {
			auto &it = this->requested_vectors.at(req_vec_idx);
			auto r = it.first.first;
			auto vec = it.first.second;
			auto m = this->coeff_idx_mapping.at(req_vec_idx);
			// port
			this->output_port_assignments[req_vec_idx] = output_port_cnt[r]++;
			// node / negation / shift
			for (int v = 0; v < this->c_row_size(); v++)
			{
				auto vec_entry = vec.at(v);
				if (vec_entry != 0) {
					this->output_node_assignments[{r, m}] = v;
					this->output_negations[{r, m}] = (vec_entry < 0) ? 1 : 0;
					this->output_shifts[{r, m}] = 0;
					while(abs(vec_entry) != (1 << this->output_shifts.at({r, m}))) {
						this->output_shifts.at({r, m})++;
					}
					output_shifts_per_port[this->output_port_assignments.at(req_vec_idx)].emplace_back(this->output_shifts.at({r, m}));
				}
			}
		}
		bool any_port_needs_mux = false;
		bool all_ports_need_mux = true;
		// check shifts
		for (auto &it : output_shifts_per_port) {
			auto shifts = it.second;
			auto last_shift = shifts.back();
			bool this_port_needs_mux = false;
			for (auto &s : shifts) {
				if (s != last_shift) this_port_needs_mux = true;
			}
			if (this_port_needs_mux) {
				any_port_needs_mux = true;
			}
			else {
				all_ports_need_mux = false;
			}
		}
		bool shifts_ok = !(any_port_needs_mux and !all_ports_need_mux);
		if (shifts_ok) {
			this->num_adders = 0;
			if (this->verbosity != verbosity_mode::quiet_mode) {
				std::cout << "-> This is a trivial problem instance!" << std::endl;
			}
			return;
		}
		else {
			// clean up
			std::cout << "-> This is *not* a trivial problem instance!" << std::endl;
			this->found_solution = false;
		}
	}
	// try to find minimum adder count
	formulation_mode mode = formulation_mode::reset_all;
	while (!this->found_solution)
	{
		this->remaining_timeout = this->timeout;
		++this->num_adders;
		// update upper bound for mux register costs
		this->upper_bound_reconf_mux_reg_sum = 2*this->num_adders + this->c_num_output_ports();
		if (this->max_adders_given_by_user >= 0 and this->num_adders > this->max_adders_given_by_user)
		{
			// give up
			if (this->verbosity != verbosity_mode::quiet_mode)
			{
				std::cout << "Reached user-defined maximum number of adders (" << this->max_adders_given_by_user << ") without finding a solution" << std::endl;
			}
			this->num_add_opt = false;
			this->num_reconf_mux_opt = false;
			this->num_reconf_mux_reg_opt = false;
			this->num_FA_opt = false;
			return;
		}
		this->optimization_loop(mode);
		if (this->ran_into_timeout)
		{
			// timeout => can't say anything about optimality
			this->num_add_opt = false;
		}
	}
	// optimize reconfiguration multiplexer costs if necessary
	if (this->c_num_configs() > 1 and !this->enumerate_all)
	{
		mode = formulation_mode::reset_all;
		while (this->found_solution)
		{
			this->timeout = this->remaining_timeout;
			auto current_min_reconf_mux_sharing = this->compute_reconf_mux_sharing_from_solution();
			auto output_sharing_ok = current_min_reconf_mux_sharing >= 0;
			if (output_sharing_ok) {
				if (this->verbosity != verbosity_mode::quiet_mode and this->min_reconf_mux_sharing == RECONF_SHARING_UNLIMITED)
				{
					std::cout << "Initial solution can share " << current_min_reconf_mux_sharing << " MUX ports" << std::endl;
					this->print_solution();
				}
				else if (current_min_reconf_mux_sharing < this->min_reconf_mux_sharing)
				{
					std::cout << "The following solution claims to share at least " << this->min_reconf_mux_sharing << " reconfiguration MUX ports but actually shares only " << current_min_reconf_mux_sharing << std::endl;
					this->print_solution();
					throw std::runtime_error(
						"SAT solver did not meet MUX sharing limit! Limit was " + std::to_string(this->min_reconf_mux_sharing) +
						" but solver returned solution with " + std::to_string(current_min_reconf_mux_sharing) + " shared MUX ports!");
				}
				else
				{
					if (this->verbosity != verbosity_mode::quiet_mode)
					{
						std::cout << "Current solution shares " << current_min_reconf_mux_sharing << " MUX ports" << std::endl;
						if (this->min_reconf_mux_sharing != RECONF_SHARING_UNLIMITED)
						{
							std::cout << "The solver reported " << this->num_reconf_sharing_value << " shared MUX ports" << std::endl;
						}
						this->print_solution();
					}
				}
				// try to share at least one port more
				if (this->pipelining_enabled) {
					// use the value from the solver because it sometimes inserts "ghost" MUXs only for pipeline balancing
					this->min_reconf_mux_sharing = this->num_reconf_sharing_value + 1;
				}
				else {
					// use the computed value since the solver sometimes underestimates the actual sharing
					this->min_reconf_mux_sharing = current_min_reconf_mux_sharing + 1;
				}
				if (this->upper_bound_max_sharing_value >= 0 and this->min_reconf_mux_sharing > this->upper_bound_max_sharing_value) {
					// trivial minimum value reached
					break;
				}
			}
			else {
				// invalid initial solution
				if (this->verbosity != verbosity_mode::quiet_mode) {
					throw std::runtime_error("Current solution does not work for reconfigurable circuits because of an output inversion mismatch... This should never happen!");
				}
				this->min_reconf_mux_sharing = 0;
			}
			this->optimization_loop(mode);
			mode = formulation_mode::only_reconf_limit;
			if (this->ran_into_timeout)
			{
				// timeout => can't say anything about optimality
				this->num_reconf_mux_opt = false;
			}
		}
		// finished MUX cost minimizations! reset solver for following optimizations
		this->found_solution = true;
		mode = formulation_mode::reset_all;
		// decrement by one so the sharing limit is satisfiable, again
		this->min_reconf_mux_sharing--;
		// check if timeout was encountered during MUX port minimization
		if (this->ran_into_timeout)
		{
			// timeout => can't say anything about optimality
			this->num_reconf_mux_reg_opt = false;
		}
		// for pipelining: now minimize the number of individual MUX registers
		// but only if some time is left
		if (this->pipelining_enabled and !this->ran_into_timeout) {
			while (this->found_solution)
			{
				// track remaining solving time
				this->timeout = this->remaining_timeout;
				// compute current number of MUX registers
				auto current_reconf_mux_registers = this->compute_reconf_mux_registers_from_solution();
				// trivial minimum value reached?
				if (current_reconf_mux_registers == 0) {
					break;
				}
				// sanity check
				if (this->max_reconf_mux_registers != RECONF_MUX_REGISTERS_UNLIMITED and current_reconf_mux_registers > this->max_reconf_mux_registers) {
					throw std::runtime_error("Current solution needs "+std::to_string(current_reconf_mux_registers)+" MUX registers but limit was "+std::to_string(this->max_reconf_mux_registers)+" -> this should never happen!");
				}
				// try to decrease limit by 1
				this->max_reconf_mux_registers = current_reconf_mux_registers - 1;
				this->optimization_loop(mode);
				mode = formulation_mode::only_reconf_pipe_limit;
				if (this->ran_into_timeout)
				{
					// timeout => can't say anything about optimality
					this->num_reconf_mux_reg_opt = false;
				}
			}
			// finished MUX register cost minimizations! reset solver for following optimizations
			this->found_solution = true;
			mode = formulation_mode::reset_all;
			this->max_reconf_mux_registers++;
		}
	}
	else if (this->minimize_full_adders and !this->enumerate_all)
	{
		// no reconfiguration mux optimization, only FA cost minimization
		mode = formulation_mode::all_FA_clauses;
	}

	// check if we should even optimize the number of full adders and return if not
	if (!this->minimize_full_adders and !this->enumerate_all)
	{
		this->num_FA_opt = false; // don't know if solution is optimal w.r.t. full adders
		return;
	}

	mode = formulation_mode::all_FA_clauses;
	int num_solutions_counter = 0;
	while (this->found_solution)
	{
		num_solutions_counter++;
		this->timeout = this->remaining_timeout;
		// count current # of full adders
		// except for the last node because its output always has a constant number of full adders
		int current_full_adders = compute_full_bit_level_costs_from_solution();
		if (this->max_full_adders == FULL_ADDERS_UNLIMITED)
		{
			if (this->verbosity != verbosity_mode::quiet_mode)
			{
				std::cout << "Initial solution needs " << current_full_adders << " additional full adders" << std::endl;
				this->print_solution();
			}
		}
		else if (current_full_adders > this->max_full_adders)
		{
			if (this->verbosity != verbosity_mode::quiet_mode)
			{
				std::cout << "The following solution claims to utilize at most " << this->max_full_adders << " full adders but actually uses " << current_full_adders << std::endl;
				this->print_solution();
			}
			throw std::runtime_error(
				"SAT solver exceeded full adder limit! Limit was " + std::to_string(this->max_full_adders) +
				" but solver returned solution with " + std::to_string(current_full_adders) + " FAs!");
		}
		else
		{
			if (this->verbosity != verbosity_mode::quiet_mode)
			{
				std::cout << "Current solution needs " << current_full_adders << " additional full adders" << std::endl;
				if (this->max_full_adders != FULL_ADDERS_UNLIMITED)
				{
					std::cout << "The solver reported " << this->num_FAs_value << " additional full adders" << std::endl;
				}
				this->print_solution();
			}
		}
		// handle FA limit based on enumeration or not
		if (this->enumerate_all)
		{
			// ENUMERATE ALL POSSIBLE SOLUTIONS but prohibit the last found one
			// -> no need to impose max full adders limit
			this->max_full_adders = FULL_ADDERS_UNLIMITED;
			this->prohibit_current_solution();
		}
		else
		{
			// must add the number of MSBs that could not be cut because the SAT solver allocs an extra LUT for each of them
			this->max_full_adders = current_full_adders - 1;
			if (this->max_full_adders < -(this->num_adders * (this->max_shift + 1)))
			{
				// trivial minimum value reached
				return;
			}
		}
		this->optimization_loop(mode);
		mode = formulation_mode::only_FA_limit;
		if (this->ran_into_timeout)
		{
			// timeout => can't say anything about optimality
			this->num_FA_opt = false;
		}
	}
	this->found_solution = true;
	if (this->enumerate_all)
	{
		std::cout << "Enumerated " << num_solutions_counter << " solutions" << std::endl;
	}
}

void cmm::minimize_adder_depth()
{
	this->force_min_adder_depth = true;
}

void cmm::compute_opt_adder_depth_value()
{
	if (!this->force_min_adder_depth and !this->pipelining_enabled)
	{
		return;
	}
	if (this->opt_adder_depth > 0) {
		// manually given by the user
		return;
	}
	// each configuration comes with a different minimum adder depth
	// -> the overall minimum adder depth is the maximum of those
	this->opt_adder_depth = 0;
	for (auto &matrix : this->C)
	{
		for (auto &v : matrix)
		{
			// compute #nonzeros in canonical signed digit representation
			// for each vector element
			int non_zeros_csd = 0;
			for (auto &c : v)
			{
				size_t c_word_size;
				if (c < 0)
				{
					c_word_size = static_cast<size_t>(std::ceil(std::log2(-c)));
				}
				else
				{
					c_word_size = static_cast<size_t>(std::ceil(std::log2(c + 1)));
				}
				// init csd representation with binary number representation
				c_word_size += 2; // need two bits more to compute csd representation (maybe 1 would've been enough but who cares)
				std::vector<int> csd(c_word_size, 0);
				for (size_t i = 0; i < c_word_size; i++)
				{
					auto bit_val = (c >> i) & 1;
					if (bit_val)
						csd.at(i) = 1;
				}
				// convert to canonical form
				for (size_t i = 0; i < c_word_size; i++)
				{
					auto bit_val_i_is_1 = csd.at(i) == 1;
					if (!bit_val_i_is_1)
						continue;
					size_t j = i + 1;
					while (j < c_word_size)
					{
						if (csd.at(j) == 1)
						{
							j++;
							continue;
						}
						else if (csd.at(j) == 0)
						{
							if (j < i + 2)
							{
								// only found "01"
								break;
							}
							// found at least "011" or even more ones
							// transform into "-101" and fill middle with zeros in case we found more than two ones
							csd.at(i) = -1;
							csd.at(j) = 1;
							for (size_t k = i + 1; k < j; k++)
							{
								csd.at(k) = 0;
							}
							break;
						}
						else
						{ // csd.at(j) == -1
							break;
						}
					}
				}
				// count nonzeros
				for (auto &bit : csd)
				{
					if (bit == 0)
					{
						continue;
					}
					else
					{
						non_zeros_csd++;
					}
				}
			}
			// compute ADopt = max(ceil(log2(sum over all non_zero_csd)))
			this->opt_adder_depth = std::max(this->opt_adder_depth, static_cast<int>(std::ceil(std::log2(non_zeros_csd))));
		}
	}
}

void cmm::preprocess_reconf() {
	if (this->c_num_configs() < 2) return;
	// define mux limit = 0
	if (this->c_num_configs() > 1) {
		this->min_reconf_mux_sharing = 0;
	}
	// adjust word size limit
	this->re_define_word_size_for_reconf();
}

void cmm::preprocess_constants()
{
	if (this->verbosity != verbosity_mode::quiet_mode)
	{
		std::cout << "Coefficients before preprocessing:" << std::endl;
		std::cout << cmm::get_matrix_as_pretty_string(this->C) << std::endl;
	}
	this->num_inputs_before_normalize = this->c_row_size();
	// normalize (if wanted)
	for (size_t r = 0; r < this->c_num_configs(); r++)
	{
		std::vector<std::vector<int>> new_C;
		for (auto &c_it : this->C[r])
		{
			// check if it can be normalized
			bool invert_c = false;
			for (auto &v : c_it)
			{
				if (v == 0)
				{
					continue; // keep searching
				}
				else if (v > 0)
				{
					break; // do not invert c
				}
				else
				{
					// v < 0 => invert signs in c
					invert_c = true;
				}
			}
			// do it (only for non-reconfigurable circuits and only if wanted) and handle container
			if (invert_c and this->c_num_configs() < 2)
			{
				if (this->calc_twos_complement and this->implement_coeff_signs_as_requested)
				{
					this->inverted_coeff_requested[{r, c_it}] = false;
				}
				else
				{
					if (this->implement_coeff_signs_as_requested)
					{
						throw std::runtime_error("You requested a negative coefficient WITHOUT allowing sign inversions AND WITHOUT allowing negative numbers. This does not work. Please change your setting!");
					}
					for (auto &v : c_it)
					{
						v = -v;
					}
					this->inverted_coeff_requested[{r, c_it}] = true;
				}
			}
			else
			{
				this->inverted_coeff_requested[{r, c_it}] = false;
			}
			// check for duplicates and put into new_C if there isn't
			// keep duplicates for reconfigurable circuits!
			bool already_in_container = false;
			for (auto &new_c_it : new_C)
			{
				bool is_equal = true;
				for (size_t i = 0; i < c_it.size(); i++)
				{
					if (c_it.at(i) != new_c_it.at(i))
						is_equal = false;
				}
				if (is_equal and this->c_num_configs() < 2)
					already_in_container = true;
			}
			if (!already_in_container)
				new_C.emplace_back(c_it); //new_C.emplace(new_C.begin(), c_it);
		}
		this->C[r] = new_C;
	}
	// the lower bound for the search is the maximum number of unique outputs over all configurations
	// -> or the user defined number of adders in case the user actually specified it and it is higher
	this->num_adders = this->num_adders_given_by_user;
	for (size_t r = 0; r < this->c_num_configs(); r++)
	{
		auto num_adders_in_this_config = 0;
		for (auto &v : this->C[r]) {
			if (this->is_power_of_two_vector(v)) continue;
			num_adders_in_this_config++;
		}
		this->num_adders = std::max(this->num_adders, num_adders_in_this_config);
	}
	this->num_adders--; // -1 because the optimization loop starts by adding 1
	this->num_adders = std::max(this->num_adders, -1);
	// eliminate all-zero vectors if...
	// 1) reconfiguration is disabled
	if (this->c_num_configs() < 2) {
		bool vec_eliminated = true;
		while (vec_eliminated) {
			vec_eliminated = false;
			for (auto &matrix : this->C)
			{
				for (auto it = matrix.begin(); it != matrix.end(); it++)
				{
					// do not erase non-zero vectors
					if (!std::all_of(it->begin(), it->end(), [](int v) { return v == 0; }))
					{
						continue;
					}
					matrix.erase(it);
					this->num_adders--;
					vec_eliminated = true;
					break; // start over when something was removed
				}
				if (vec_eliminated)
					break; // start over when something was removed
			}
		}
	}
	// eliminate power-of-two vectors if...
	// 1) pipelining is NOT enabled or output stages are NOT equalized 
	// AND
	// 2) reconfiguration is disabled
	if ((!this->pipelining_enabled or !this->force_output_stages_equal) and this->c_num_configs() < 2)
	{
		// if it's disabled, we must eliminate all unit vectors from the list of constants
		// and adjust the lower bound on the number of adders
		bool vec_eliminated = true;
		while (vec_eliminated)
		{
			vec_eliminated = false;
			for (auto &matrix : this->C)
			{
				for (auto it = matrix.begin(); it != matrix.end(); it++)
				{
					// do not erase non-unit vectors
					if (!cmm::is_unit_vector(*it))
					{
						continue;
					}
					// do not erase negative unit vectors if the user explicitly wants them
					if (this->implement_coeff_signs_as_requested and !cmm::is_non_negative_vector(*it))
					{
						continue;
					}
					matrix.erase(it);
					this->num_adders--;
					vec_eliminated = true;
					break;
				}
				if (vec_eliminated)
					break; // start over when something was removed
			}
		}
	}
	// check if C has negative values while negative numbers are not allowed and throw an error if that's the case
	for (auto &matrix : this->C)
	{
		for (auto &v : matrix)
		{
			for (auto &c : v)
			{
				if (c < 0 and !this->calc_twos_complement)
				{
					// throw an exception
					throw std::runtime_error("input contains at least one negative number while 'allow_negative_coefficients' parameter is set to 0 => please set it to 1 via the UI");
				}
			}
		}
	}
	// account for weird corner cases with negative numbers
	if (this->implement_coeff_signs_as_requested or this->c_row_size() > 1 or this->pipelining_enabled)
	{
		this->word_size++;
	}
	// sanity check
	if (this->c_num_configs() > 1) {
		int num_ports = this->c_num_output_ports(0);
		for (int r=1; r<this->c_num_configs(); r++) {
			if (this->c_num_output_ports(r) != num_ports) {
				throw std::runtime_error("Number of output coefficients for all configurations must be equal, but config 0 has "+std::to_string(num_ports)+" outputs and config "+std::to_string(r)+" has "+std::to_string(this->c_num_output_ports(r))+" outputs");
			}
		}
	}
	// some debug output
	if (this->verbosity != verbosity_mode::quiet_mode)
	{
		std::cout << "Coefficients after preprocessing:" << std::endl;
		std::cout << cmm::get_matrix_as_pretty_string(this->C) << std::endl;
		std::cout << "Internal word size: " << this->word_size << std::endl;
		std::cout << "Max shift: " << this->max_shift << std::endl;
		std::cout << "Shift word size: " << this->shift_word_size << std::endl;
		std::cout << "Min #adders: " << this->num_adders + 1 << std::endl;
	}
	this->establish_coeff_idx_mapping();
}

void cmm::establish_coeff_idx_mapping()
{
	this->coeff_idx_mapping.resize(this->requested_vectors.size());
	//for (auto &it : this->requested_vectors) {
	std::map<int, int> used_ports;
	for (size_t req_vec_idx = 0; req_vec_idx < this->requested_vectors.size(); req_vec_idx++) {
		auto &it = this->requested_vectors.at(req_vec_idx);
		auto r = it.first.first;
		if (this->model_reconfiguration()) {
			//this->coeff_idx_mapping.at(req_vec_idx) = req_vec_idx+1;
			this->coeff_idx_mapping.at(req_vec_idx) = ++used_ports[r];
		}
		else {
			auto requested_vector = it.first.second;
			auto actual_vector = it.second.first;
			if (this->inverted_coeff_requested[{r, actual_vector}]) {
				for (auto &c : actual_vector) {
					// invert the actual vector if it was requested inverted
					c = -c;
				}
			}
			auto vectors_equal = [&](auto &vec1, auto &vec2, const auto &invert) {
				if (vec1.size() != vec2.size()) return false;
				for (size_t i = 0; i < vec1.size(); i++) {
					if (!invert and (vec1[i] != vec2[i])) return false;
					if (invert and (vec1[i] != -vec2[i])) return false;
				}
				return true;
			};
			int cnt = 0;
			bool found_it = false;
			// check if it's a non-trivial coefficient
			for (auto &c : this->C.at(r)) {
				cnt++;
				bool is_inverted = false;
				if (!vectors_equal(c, actual_vector, false)) {
					// it's not equal to the requested vector
					// -> are we allowed to invert it?
					if (!this->calc_twos_complement or !this->implement_coeff_signs_as_requested) {
						// yes, we are allowed to invert it
						is_inverted = true;
					}
					else {
						continue; // not equal to the requested vector, not allowed to invert it
					}
					if (!vectors_equal(c, actual_vector, true)) {
						// not equal to the requested vector inverted either
						continue;
					}
				}
				//this->coeff_idx_mapping[{r, requested_vector}] = is_inverted ? -cnt : cnt;
				this->coeff_idx_mapping[req_vec_idx] = is_inverted ? -cnt : cnt;
				found_it = true;
			}
			if (!found_it) {
				// it must be a trivial vector
				// assign to invalid mapping
				//this->coeff_idx_mapping[{r, requested_vector}] = cnt+1;
				this->coeff_idx_mapping[req_vec_idx] = TRIVIAL_VECTOR_MAPPING;
			}
		}
	}
}

void cmm::re_define_word_size_for_reconf() {
	if (this->word_size_manually_defined) return; // do not override user setting, even if it's stupid
	auto old_word_size = this->word_size;
	this->word_size = 1;
	for (auto &it : this->requested_vectors) {
		auto vec = it.first.second;
		auto shift = it.second.second;
		for (auto &c : vec) {
			auto w_size_c = this->ceil_log2(std::abs(c)) + 1;
			if (c < 0) {
				if (!this->calc_twos_complement) {
					throw std::runtime_error("You requested a negative coefficient WITHOUT allowing negative numbers for reconfigurable coefficients. Please activate 'allow_negative_coefficients' in the UI and try again.");
				}
				if (std::ceil(std::log2(std::abs(c))) == std::floor(std::log2(std::abs(c)))) {
					// negative power of two -> need to increment by 1 because of weird reasons
					w_size_c++;
				}
			}
			this->word_size = std::max(this->word_size, w_size_c + shift);
		}
	}
	this->word_size += this->fundamental_fractional_bits;
	// also define shift and adjust word size for 2's complement
	this->max_shift = std::max(this->word_size - 1, 1); // a shift smaller than 1 does not make sense
	if (this->calc_twos_complement)
	{
		// account for sign bit
		this->word_size++;
	}
	this->shift_word_size = std::max(this->ceil_log2(this->max_shift + 1), 1);
}

void cmm::create_max_cell(int a_i, int b_i, int x_i, int y_i, int c_o, int x_o, int y_o)
{
	// clauses to compute c_o
	//  a_i  b_i -c_o
	this->create_arbitrary_clause({{a_i, false},
								   {b_i, false},
								   {c_o, true}});
	//  a_i -x_i -y_i -c_o
	this->create_arbitrary_clause({{a_i, false},
								   {x_i, true},
								   {y_i, true},
								   {c_o, true}});
	//  b_i  x_i -y_i -c_o
	this->create_arbitrary_clause({{b_i, false},
								   {x_i, false},
								   {y_i, true},
								   {c_o, true}});
	// -b_i  x_i  c_o
	this->create_arbitrary_clause({{b_i, true},
								   {x_i, false},
								   {c_o, false}});
	// -b_i  y_i  c_o
	this->create_arbitrary_clause({{b_i, true},
								   {y_i, false},
								   {c_o, false}});
	// -a_i -x_i  c_o
	this->create_arbitrary_clause({{a_i, true},
								   {x_i, true},
								   {c_o, false}});
	// -a_i  y_i  c_o
	this->create_arbitrary_clause({{a_i, true},
								   {y_i, false},
								   {c_o, false}});
	// -a_i -b_i  c_o (REDUNDANT BUT MAY HELP UNIT PROPAGATION!?!?!?!?!?!)
	this->create_arbitrary_clause({{a_i, true},
								   {b_i, true},
								   {c_o, false}});
	// clauses to compute x_o
	if (x_o != -1)
	{
		// -x_i -y_i  x_o
		this->create_arbitrary_clause({{x_i, true},
									   {y_i, true},
									   {x_o, false}});
		//  b_i  y_i  x_o
		this->create_arbitrary_clause({{b_i, false},
									   {y_i, false},
									   {x_o, false}});
		//  x_i -y_i -x_o
		this->create_arbitrary_clause({{x_i, false},
									   {y_i, true},
									   {x_o, true}});
		// -b_i  y_i -x_o
		this->create_arbitrary_clause({{b_i, true},
									   {y_i, false},
									   {x_o, true}});
	}
	// clauses to compute y_o
	if (y_o != -1)
	{
		// -y_i  y_o
		this->create_arbitrary_clause({{y_i, true},
									   {y_o, false}});
		//  a_i -b_i  y_o
		this->create_arbitrary_clause({{a_i, false},
									   {b_i, true},
									   {y_o, false}});
		// -a_i  b_i  y_o
		this->create_arbitrary_clause({{a_i, true},
									   {b_i, false},
									   {y_o, false}});
		// -a_i -b_i  y_i -y_o
		this->create_arbitrary_clause({{a_i, true},
									   {b_i, true},
									   {y_i, false},
									   {y_o, true}});
		//  a_i  b_i  y_i -y_o
		this->create_arbitrary_clause({{a_i, false},
									   {b_i, false},
									   {y_i, false},
									   {y_o, true}});
	}
}

void cmm::enable_pipelining()
{
	this->pipelining_enabled = true;
}

void cmm::equalize_output_stages()
{
	this->force_output_stages_equal = true;
}

void cmm::equalize_output_stages_across_configs()
{
	this->force_output_stages_equal = true;
	this->force_output_stages_equal_across_configs = true;
}

void cmm::set_normalize_adder_graph()
{
	this->normalize_adder_graph = true;
}

bool cmm::is_unit_vector(const std::vector<int> &vec, int num_fractional_bits)
{
	return std::accumulate(vec.begin(), vec.end(), 0, [](const int &running_abs, const int &x)
						   { return running_abs + std::abs(x); }) == (1 << num_fractional_bits);
}

bool cmm::is_zero_vector(const std::vector<int> &vec)
{
	return std::accumulate(vec.begin(), vec.end(), 0, [](const int &running_abs, const int &x)
						   { return running_abs + std::abs(x); }) == 0;
}

bool cmm::is_power_of_two_vector(const std::vector<int> &vec)
{
	if (std::accumulate(vec.begin(), vec.end(), 0, [](const int &running_abs, const int &x)
						   { return running_abs + std::abs(x); }) == 0) return true; // only zeros
	std::vector<int> norm_vec = vec;
	while (std::all_of(norm_vec.begin(), norm_vec.end(), [](const int &x)
					   { return x % 2 == 0; }))
	{
		for (size_t i = 0; i < norm_vec.size(); i++)
		{
			norm_vec.at(i) = norm_vec.at(i) / 2;
		}
	}
	return cmm::is_unit_vector(norm_vec);
}

bool cmm::is_non_negative_vector(const std::vector<int> &vec)
{
	return std::all_of(vec.begin(), vec.end(), [](const int &x)
					   { return x >= 0; });
}

int cmm::get_word_size_sub()
{
	if (this->c_row_size() > 1)
	{
		// SOP/CMM: cannot cut MSBs
		return this->ceil_log2(this->num_adders * this->max_shift + 1);
	}
	else
	{
		// SCM/MCM: can cut MSBs
		return this->ceil_log2(this->num_adders * (this->max_shift + 1) + 1);
	}
}

void cmm::implement_signs_as_requested()
{
	this->implement_coeff_signs_as_requested = true;
}

bool cmm::mcm_output_variable_exists(int config_idx, int mcm_constant_idx) {
	if (mcm_constant_idx >= 0) {
		return true;
	}
	else {
		return !this->implement_coeff_signs_as_requested and this->calc_twos_complement and (this->sign_inversion_allowed[{config_idx, abs(mcm_constant_idx)}] or this->model_reconfiguration());
	}
}