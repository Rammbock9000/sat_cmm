#include <iostream>
#include <sstream>
#include <string>
#include <chrono>
#include <memory>
#include <cctype>
#include <algorithm>
#include <cmm_executable.h>

#include <cmm.h>

#ifdef USE_CADICAL
#include <cmm_cadical.h>
#endif

#ifdef USE_KISSAT
#include <cmm_kissat.h>
#endif

#ifdef USE_Z3
#include <cmm_z3.h>
#endif

int main(int argc, char **argv) {
	std::unique_ptr<cmm> solver;
	std::vector<std::vector<std::vector<int>>> C;
	int timeout = 300;
	cmm::verbosity_mode verbosity = cmm::verbosity_mode::normal_mode;
	bool allow_negative_numbers = false;
	std::string solver_name = "no_solver";
	int threads = 1;
	bool also_minimize_full_adders = false;
	bool allow_node_output_shift = false;
    bool normalize_adder_graph = false;
	bool write_cnf = false;
	bool enumerate_all = false;
	int allow_coefficient_sign_inversion = 0;
    int user_defined_internal_word_size = -1;
	int min_num_adders = -1;
	int max_num_adders = -1;
	int max_num_muxes = -1;
    int fundamental_fractional_bits = 0;
	int num_bypassed_adders = 0;
	bool min_adder_depth = false;
	bool pipelining = false;
	bool eq_output_stages = false;
	bool eq_output_stages_across_configs = false;
    bool keep_output_order = true;
    std::string executable_binary;
    std::string executable_pre_cnf_params;
    std::string executable_post_cnf_params;
    std::string solver_log_filename = "temp.log";
    std::string solver_err_filename = "temp.err";
    std::string solver_cnf_filename = "temp.cnf";
#ifdef USE_Z3
	solver_name = "z3";
#endif
#ifdef USE_CADICAL
	solver_name = "cadical";
#endif
#ifdef USE_KISSAT
	solver_name = "kissat";
#endif
	if (argc < 2) {
		std::cout << "Please call satcmm like this: ./satcmm \"constant(s)\" [arg1=val1 arg2=val2 ...]"
			      << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout << "How to specify the constant(s):" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
		std::cout << "  => constant(s) [mandatory]: \"int:int:int;...;...\" specify the constant matrix" << std::endl;
		std::cout << "      => separate columns with colons and rows with semicolons" << std::endl;
		std::cout<<R"(      => you need to put this argument into "..." on UNIX-based systems)" << std::endl;
		std::cout<<R"(      => this corresponds to "A:B:C" for SOP and "A;B;C" for MCM and "A" for SCM)" << std::endl;
		std::cout<<R"(      => e.g., specify "11:21;33:-44" to get an adder graph that computes both 11*x1+21*x2 and 33*x1-44*x2)"
			      << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout << "Choose your optimization settings:" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout << "  => minimize_full_adders=<0/1> [default=0]: minimize the full adder count for the optimal number of adders by setting this to 1"
                  << std::endl;
        std::cout << "  => allow_post_adder_right_shift=<0/1> [default=0]: account for the optional right shift after the addition"
                  << std::endl;
        std::cout << "  => normalize_adder_graph=<0/1> [default=0]: only generate normalized adder graphs (i.e., where each node *either* has a left shift *or* an output shift, but never both)" << std::endl;
        std::cout << "  => allow_negative_coefficients=<0/1> [default=0]: allow the use of negative coefficients to decrease the FA count"
                  << std::endl;
        std::cout << "  => min_adder_depth=<0/1> [default=0]: force the solution to have minimum adder depth (useful for low-latency applications)"
                  << std::endl;
        std::cout << "  => pipelining=<0/1> [default=0]: let the solver optimize under the assumption that the adder graph will be fully pipelined after each adder stage => WORK IN PROGRESS"
                  << std::endl;
        std::cout << "  => equalize_output_stages=<0/1> [default=0]: force all outputs (within the same configuration) into the same pipeline stage (only relevant for pipelining)"
                  << std::endl;
        std::cout << "  => equalize_output_stages_across_configs=<0/1> [default=0]: force all outputs OF ALL CONFIGURATIONS into the same pipeline stage (only relevant for pipelining in combination with reconfigurability)"
                  << std::endl;
        std::cout << "  => allow_coefficient_sign_inversion=<0/1/2> [default=0]: 2 - generate coefficients EXACTLY as requested (e.g., you request a -5 with allow_negative_coefficients=1 and you get an adder graph for -5 even though it needs 1 adder more than an adder graph for +5); 1 - allow the SAT solver to invert the sign of ANY requested coefficient to reduce the FA count; 0 - always implement the normalized versions of all coefficients"
                  << std::endl;
        std::cout << "  => keep_output_order=<0/1> [default=1]: keep the outputs in the order as requested (only relevant for reconfigurable multipliers)"
                  << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout << "Solver backend:" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
		std::cout << "  => solver_name=<string> [default depends on installation]: kissat, cadical, z3, executable are currently supported" << std::endl;
		std::cout << "  => timeout=<uint> [default=300]: number of seconds allowed per SAT instance" << std::endl;
		std::cout << "  => threads=<uint> [default=1]: number of threads allowed to use" << std::endl;
		std::cout << "  => quiet=<0/1> [default=1]: enable/suppress debug outputs by setting this to 0/1" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout << "If you want to call some executable as your solver backend (e.g., some non-supported solver like Minisat):" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout<<R"(  => executable_binary=<string> [default=""]: path to binary used if solver_name=executable (execute an installed solver via system call instead of a C++ API); it should expect a .cnf file in DIMACS format and should produce an output "s (UN)SATISFIABLE" for (un)satisfiable instance in addition to solution literals as "v lit1 lit2 ..." according to the rules given by the SAT competition (url: satcompetition.org))" << std::endl;
        std::cout << "  => pre_cnf_params=<string> [default=\"\"]: command-line parameters that are given to the executable *before* the path to the cnf file" << std::endl;
        std::cout << "  => post_cnf_params=<string> [default=\"\"]: command-line parameters that are given to the executable *after* the path to the cnf file" << std::endl;
        std::cout << "  => solver_log_filename=<string> [default=\"temp.log\"]: the std::out file used for communication between this program and the executable solver" << std::endl;
        std::cout << "  => solver_err_filename=<string> [default=\"temp.err\"]: the std::err file used for communication between this program and the executable solver" << std::endl;
        std::cout << "  => solver_cnf_filename=<string> [default=\"temp.cnf\"]: the .cnf file used for communication between this program and the executable solver" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout << "Some general settings:" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
		std::cout << "  => write_cnf_files=<0/1>: write all SAT programs to CNF files [default=0]" << std::endl;
		std::cout << "  => define_solver_word_size=<uint>: manually define the internal word size used for solving [default: set automatically based on provided coefficients]" << std::endl;
		std::cout << "  => min_num_adders=<uint> [default=0]: minimum number of adders" << std::endl;
		std::cout << "  => max_num_adders=<uint> [default=unlimited]: maximum number of adders" << std::endl;
		std::cout << "  => max_num_muxes=<uint> [default=unlimited]: maximum number of individual MUXes (only for reconfigurable circuits!)" << std::endl;
		std::cout << "  => fundamental_fractional_bits=<uint> [default=0]: number of fractional bits the non-output fundamentals can take" << std::endl;
        std::cout << "  => bypassed_adders=<uint> [default=0]: specify the number of bypassed adders, in order to enable MUX-MUX connections (only relevant for reconfigurable multipliers) -> the bypassed adders act like wires are removed during post-processing; ATTENTION: this might mess up the adder depth in some corner cases, so be careful!" << std::endl;
		std::cout << "  => enumerate_all=<0/1> [default=0]: enumerate all possible solutions for optimal adder count instead of only searching for the optimum (this mode ignores the setting for <minimize full adders>; only feasible if the problem size is small enough => consider setting a timeout)" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout << "Here's an example:" << std::endl;
        std::cout << "-----------------------------------------------------------------------------------" << std::endl;
        std::cout << "./satcmm \"43:11;7:23\" solver_name=cadical timeout=123 allow_negative_coefficients=1" << std::endl;
		return 0;
	}

	// parse the first argument as a matrix of constants
	// for reconfigurability, several matrices can be specified, separated by '|'
	std::string s(argv[1]);
	try {
		std::string matrix_buf;
		std::stringstream ss(s);
		while (std::getline(ss, matrix_buf, '|')) {
			C.emplace_back(std::vector<std::vector<int>>());
			std::stringstream c_str(matrix_buf);
			std::stringstream s_str;
			std::string vector_buff;
			std::string buff;
			std::vector<std::string> v;
			while (std::getline(c_str, vector_buff, ';')) {
				v.emplace_back(vector_buff);
			}
			for (int i = 0; i < v.size(); i++) {
				s_str << v[i];
				std::vector<int> vector_row;

				while (std::getline(s_str, buff, ':')) {
					vector_row.emplace_back(std::stoi(buff));
				}
				C.back().emplace_back(vector_row);
				s_str.clear();
			}
		}

		
	}
	catch (...) {
		std::stringstream err_msg;
		err_msg << "failed to convert " << s << " to integer(s) (arg #1)" << std::endl;
		throw std::runtime_error(err_msg.str());
	}

    for (int i=2; i<argc; i++) {
        std::string s_argv(argv[i]);
        std::stringstream ss;
        ss << s_argv;
        std::vector<std::string> arg_elements;
        std::string buffer;
        while (std::getline(ss, buffer, '=')) {
            arg_elements.emplace_back(buffer);
        }
        if (arg_elements.size() < 2) {
            std::cout << "UI WARNING: ignoring user argument '" << s_argv << "' -> only arguments in the form of arg=<value> are supported" << std::endl;
            continue;
        }
        std::string key = arg_elements.at(0);
        std::string val;
        if (arg_elements.size() == 2) {
            // we got something in the form arg=<value> with exactly 1 '='
            val = arg_elements.at(1);
        }
        else {
            // we got something in the form arg=<value> with more than 1 '='
            // e.g., for the parameter "post_cnf_params" we can have an argument like "post_cnf_params='--time=300'"
            for (size_t arg_elem_it=1; arg_elem_it<arg_elements.size(); arg_elem_it++) {
                if (arg_elem_it > 1) {
                    val += "=";
                }
                val += arg_elements.at(arg_elem_it);
            }
        }
        std::string original_val = val; // copy it for case-sensitive parameters (e.g., path to executable_binary)
        std::transform(val.begin(), val.end(), val.begin(), [](unsigned char c) { return std::tolower(c); });
        if (key == "solver_name") {
            solver_name = val;
        }
        else if (key == "executable_binary") {
            executable_binary = original_val;
        }
        else if (key == "pre_cnf_params") {
            executable_pre_cnf_params = original_val;
        }
        else if (key == "post_cnf_params") {
            executable_post_cnf_params = original_val;
        }
        else if (key == "solver_log_filename") {
            solver_log_filename = original_val;
        }
        else if (key == "solver_err_filename") {
            solver_err_filename = original_val;
        }
        else if (key == "solver_cnf_filename") {
            solver_cnf_filename = original_val;
        }
        else if (key == "timeout") {
            try {
                timeout = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "threads") {
            try {
                threads = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "quiet") {
            try {
                auto quiet = (bool) std::stoi(val);
                if (quiet) {
                    verbosity = cmm::verbosity_mode::normal_mode;
                } else {
                    verbosity = cmm::verbosity_mode::debug_mode;
                }
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "keep_output_order") {
            try {
                keep_output_order = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "minimize_full_adders") {
            try {
                also_minimize_full_adders = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "allow_post_adder_right_shift") {
            try {
                allow_node_output_shift = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "normalize_adder_graph") {
            try {
                normalize_adder_graph = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "allow_negative_coefficients") {
            try {
                allow_negative_numbers = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "write_cnf_files") {
            try {
                write_cnf = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "allow_coefficient_sign_inversion") {
            try {
                allow_coefficient_sign_inversion = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "min_num_adders") {
            try {
                min_num_adders = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "max_num_adders") {
            try {
                max_num_adders = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "max_num_muxes") {
            try {
                max_num_muxes = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "fundamental_fractional_bits") {
            try {
                fundamental_fractional_bits = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "bypassed_adders") {
            try {
                num_bypassed_adders = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "enumerate_all") {
            try {
                enumerate_all = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "min_adder_depth") {
            try {
                min_adder_depth = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "pipelining") {
            try {
                pipelining = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "equalize_output_stages") {
            try {
                eq_output_stages = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "equalize_output_stages_across_configs") {
            try {
                eq_output_stages_across_configs = (bool) std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else if (key == "define_solver_word_size") {
            try {
                user_defined_internal_word_size = std::stoi(val);
            }
            catch (...) {
                std::stringstream err_msg;
                err_msg << "invalid argument provided for '" << key << "'" << std::endl;
                throw std::runtime_error(err_msg.str());
            }
        }
        else {
            std::stringstream err_msg;
            err_msg << "argument of type '" << key << "=<value>' not supported" << std::endl;
            throw std::runtime_error(err_msg.str());
        }
    }
	std::cout << "USER INPUTS:" << std::endl;
	std::cout << cmm::get_matrix_as_pretty_string(C) << std::endl;
	std::cout << "Timeout: " << timeout << " seconds" << std::endl;
	std::cout << "Solver: " << solver_name << std::endl;
	std::cout << "Threads: " << threads << std::endl;

	auto start_time = std::chrono::steady_clock::now();
	if (solver_name == "cadical") {
#ifdef USE_CADICAL
		solver = std::make_unique<cmm_cadical>(C, timeout, verbosity, allow_negative_numbers, write_cnf, fundamental_fractional_bits);
#else
		throw std::runtime_error("Link CaDiCaL lib to use CaDiCaL backend");
#endif
	} else if (solver_name == "kissat") {
#ifdef USE_KISSAT
		solver = std::make_unique<cmm_kissat>(C, timeout, verbosity, allow_negative_numbers, write_cnf, fundamental_fractional_bits);
#else
		throw std::runtime_error("Link kissat lib to use kissat backend");
#endif
	} else if (solver_name == "z3") {
#ifdef USE_Z3
        solver = std::make_unique<cmm_z3>(C, timeout, verbosity, threads, allow_negative_numbers, write_cnf, fundamental_fractional_bits);
#else
        throw std::runtime_error("Link Z3 lib to use Z3 backend");
#endif
    } else if (solver_name == "executable") {
        solver = std::make_unique<cmm_executable>(C, executable_binary, executable_pre_cnf_params, executable_post_cnf_params, solver_log_filename, solver_err_filename, solver_cnf_filename, verbosity, allow_negative_numbers, write_cnf, fundamental_fractional_bits);
	} else
		throw std::runtime_error("unknown solver name '" + solver_name + "'");
	solver->set_enumerate_all(enumerate_all);
	if (also_minimize_full_adders) solver->also_minimize_full_adders();
	if (allow_node_output_shift) solver->allow_node_output_shift();
    if (normalize_adder_graph) solver->set_normalize_adder_graph();
    if (!keep_output_order) solver->allow_reconfigurable_output_permutations();
    if (user_defined_internal_word_size > 0) solver->manually_define_internal_word_size(user_defined_internal_word_size);
	if (allow_coefficient_sign_inversion != 0) {
        // = 0: always implement the positive versions
        // = 1: allow sign inversions
        // = 2: always implement coefficients exactly as requested
        if (allow_coefficient_sign_inversion == 1) {
            solver->ignore_sign();
        }
        else if (allow_coefficient_sign_inversion == 2) {
            solver->implement_signs_as_requested();
        }
        else {
            throw std::runtime_error("invalid value for allow_coefficient_sign_inversion");
        }
    }
	if (min_num_adders >= 0) solver->set_min_add(min_num_adders);
	if (max_num_adders >= 0) solver->set_max_add(max_num_adders);
	if (max_num_muxes >= 0) solver->set_max_num_muxes(max_num_muxes);
	if (num_bypassed_adders > 0) solver->set_bypassed_adders(num_bypassed_adders);
	if (min_adder_depth) solver->minimize_adder_depth();
	if (pipelining) solver->enable_pipelining();
	if (eq_output_stages) solver->equalize_output_stages();
	if (eq_output_stages_across_configs) solver->equalize_output_stages_across_configs();
	try {
		solver->solve();
	}
	catch (std::runtime_error &e) {
		std::cout << "Failed solving due to error '" << e.what() << "'" << std::endl;
		return 1;
	}
	auto elapsed_time = static_cast<double>(std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now() - start_time).count()) / 1000.0;
	std::cerr << "Finished solving after " << elapsed_time << " seconds" << std::endl;
	solver->print_solution();
	auto [add_opt, mux_opt, mux_regs_opt, fas_opt] = solver->solution_is_optimal();
	std::cerr << "# Add optimal = " << add_opt << std::endl;
    if (solver->c_num_configs() > 1) {
        std::cerr << "# Mux optimal = " << mux_opt << std::endl;
        if (pipelining) {
            std::cerr << "# Mux registers optimal = " << mux_regs_opt << std::endl;
        }
    }
	std::cerr << "# FAs optimal = " << fas_opt << std::endl;
	return 0;
}
