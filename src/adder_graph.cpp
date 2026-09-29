#include "adder_graph.h"
#include <map>
#include <set>
#include <list>
#include <iostream>

adder_graph::adder_graph(int num_configs, int num_inputs, int num_outputs, int num_adders, int fundamental_fractional_bits): 
    num_configs(num_configs), num_inputs(num_inputs), num_outputs(num_outputs), num_adders(num_adders), fundamental_fractional_bits(fundamental_fractional_bits) {
    // reserve coefficient memory
    this->coeffs = std::vector<std::vector<std::vector<int64_t>>>(this->num_adders + this->num_inputs, std::vector<std::vector<int64_t>>(this->num_configs, std::vector<int64_t>(this->num_inputs, 0)));

    // initialize the rest
    // reserve node parameter memory
    this->inputs_l = std::vector<std::vector<int>>(this->num_adders + this->num_inputs, std::vector<int>(this->num_configs, DEFAULT_VALUE));
    this->inputs_r = std::vector<std::vector<int>>(this->num_adders + this->num_inputs, std::vector<int>(this->num_configs, DEFAULT_VALUE));
    this->input_shifts_l = std::vector<std::vector<int>>(this->num_adders + this->num_inputs, std::vector<int>(this->num_configs, DEFAULT_VALUE));
    this->input_shifts_r = std::vector<std::vector<int>>(this->num_adders + this->num_inputs, std::vector<int>(this->num_configs, DEFAULT_VALUE));
    this->node_output_shifts = std::vector<int>(this->num_adders + this->num_inputs, DEFAULT_VALUE);
    this->node_is_bypassed = std::vector<bool>(this->num_adders + this->num_inputs, false);
    this->node_stages = std::vector<std::vector<int>>(this->num_adders + this->num_inputs, std::vector<int>(this->num_configs, DEFAULT_VALUE));
    this->node_is_subtracter = std::vector<std::vector<bool>>(this->num_adders + this->num_inputs, std::vector<bool>(this->num_configs, false));

    // already fill in some information for input nodes
    for (int i=0; i<this->num_inputs; i++) {
        // no output shift
        this->node_output_shifts[i] = 0;
        for (int r=0; r<this->num_configs; r++) {
            // coefficients are unit vectors (account for number of fractional bits)
            this->coeffs[i][r][i] = 1 << this->fundamental_fractional_bits;
            // inputs start at stage zero
            this->node_stages[i][r] = 0;
        }
    }

    // reserve output parameter memory
    this->output_adder_indices = std::vector<std::vector<int>>(this->num_outputs, std::vector<int>(this->num_configs, DEFAULT_VALUE));
    this->output_shifts = std::vector<std::vector<int>>(this->num_outputs, std::vector<int>(this->num_configs, DEFAULT_VALUE));
    this->output_coeffs = std::vector<std::vector<std::vector<int64_t>>>(this->num_outputs, std::vector<std::vector<int64_t>>(this->num_configs, std::vector<int64_t>(this->num_inputs, DEFAULT_VALUE_OUTPUT_COEFF)));
    this->need_output_reg = std::vector<bool>(this->num_outputs, false);
}

void adder_graph::manually_define_adder_stage(int adder_idx, int config, int stage) {
    try {
        this->node_stages.at(adder_idx).at(config) = stage;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::manually_define_adder_stage invalid node index or config index requested");
    }
}

void adder_graph::manually_insert_output_register(int output_idx) {
    try {
        this->need_output_reg.at(output_idx) = true;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::manually_insert_output_register invalid output index requested");
    }
}

void adder_graph::set_subtract(int node_idx, int config, bool is_subtracter) {
    try {
        this->node_is_subtracter.at(node_idx).at(config) = is_subtracter;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_subtract invalid node index or config index requested");
    }
}

void adder_graph::set_coeff(int node_idx, int config, std::vector<int64_t> new_coeff) {
    try {
        this->coeffs.at(node_idx).at(config) = new_coeff;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_coeff invalid node index or config index requested");
    }
}

void adder_graph::set_coeff(int node_idx, int config, int vec_idx, int64_t new_coeff) {
    try {
        this->coeffs.at(node_idx).at(config).at(vec_idx) = new_coeff;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_coeff invalid node index or config index or vector index requested");
    }
}

void adder_graph::set_output_coeff(int output_idx, int config, std::vector<int64_t> new_coeff) {
    try {
        this->output_coeffs.at(output_idx).at(config) = new_coeff;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_output_coeff invalid output index or config index requested");
    }
}

void adder_graph::set_output_coeff(int output_idx, int config, int vec_idx, int64_t new_coeff) {
    try {
        this->output_coeffs.at(output_idx).at(config).at(vec_idx) = new_coeff;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_output_coeff invalid output index or config index or vector index requested");
    }
}

void adder_graph::set_left_input(int node_idx, int config, int new_input_node_idx) {
    try {
        this->inputs_l.at(node_idx).at(config) = new_input_node_idx;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_left_input invalid node index or config index requested");
    }
}

void adder_graph::set_right_input(int node_idx, int config, int new_input_node_idx) {
    try {
        this->inputs_r.at(node_idx).at(config) = new_input_node_idx;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_right_input invalid node index or config index requested");
    }
}

void adder_graph::set_left_input_shift(int node_idx, int config, int new_input_shift) {
    try {
        this->input_shifts_l.at(node_idx).at(config) = new_input_shift;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_left_input_shift invalid node index or config index requested");
    }
}

void adder_graph::set_right_input_shift(int node_idx, int config, int new_input_shift) {
    try {
        this->input_shifts_r.at(node_idx).at(config) = new_input_shift;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_right_input_shift invalid node index or config index requested");
    }
}

void adder_graph::set_node_output_shift(int node_idx, int new_output_shift) {
    try {
        this->node_output_shifts.at(node_idx) = new_output_shift;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_node_output_shift invalid node index requested");
    }
}

void adder_graph::set_adder_bypassed(int node_idx) {
    try {
        this->node_is_bypassed.at(node_idx) = true;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_adder_bypassed invalid node index requested");
    }
}

void adder_graph::set_output_input(int output_idx, int config, int new_input_node_idx) {
    try {
        this->output_adder_indices.at(output_idx).at(config) = new_input_node_idx;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_output_input invalid output index or config index requested");
    }
}

void adder_graph::set_output_shift(int output_idx, int config, int new_input_shift) {
    try {
        this->output_shifts.at(output_idx).at(config) = new_input_shift;
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::set_output_shift invalid output index or config index requested");
    }
}

void adder_graph::preprocess() {
    this->adder_graph_elements.clear();
    if (this->num_configs < 2) return;
}

void adder_graph::put_string_into_adder_graph(std::stringstream &adder_graph, const std::string &put_into_adder_graph) {
    if (put_into_adder_graph.empty()) return;
    if (this->adder_graph_elements.find(put_into_adder_graph) != this->adder_graph_elements.end()) return; // string already in adder graph
    if (!this->adder_graph_elements.empty()) adder_graph << ",";
    this->adder_graph_elements.insert(put_into_adder_graph);
    adder_graph << put_into_adder_graph;
}

std::string adder_graph::get_adder_graph_as_str(bool is_pipelined, bool normalize_adder_graph, bool implement_coeff_signs_as_requested) {
    // preprocess adder graph
    this->preprocess();
    std::stringstream ag;
    ag << "{";
    // adder nodes
    for (int adder_idx = this->num_inputs; adder_idx < this->num_adders + this->num_inputs; adder_idx++) {
        // determine adder stage (max of all configs)
        // int adder_stage = 0;
        // for (int config = 0; config < this->num_configs; config++) {
        //     // actually compute max
        //     adder_stage = std::max(adder_stage, this->get_stage(adder_idx, config));
        // }
        int adder_stage = this->get_stage(adder_idx);
        // determine output shift
        std::stringstream output_shift_str;
        if (!normalize_adder_graph) {
            output_shift_str << "," << this->node_output_shifts.at(adder_idx);
        }
        // do we need a mux for the left input?
        bool need_left_input_mux = this->adder_node_needs_mux_l(adder_idx);
        // determine left input
        std::stringstream left_input_coeff_str;
        std::stringstream left_input_shift_str;
        std::stringstream left_input_mux_str;
        int left_input_stage = 0;
        for (int config = 0; config < this->num_configs; config++) {
            if (config > 0) {
                left_input_coeff_str << ";";
            }
            auto input_idx = this->inputs_l.at(adder_idx).at(config);
            //left_input_stage = std::max(left_input_stage, this->get_stage(input_idx, config));
            left_input_stage = std::max(left_input_stage, this->get_stage(input_idx));
            for (int i = 0; i < this->num_inputs; i++) {
                if (i > 0) {
                    left_input_coeff_str << ",";
                }
                left_input_coeff_str << this->coeffs.at(input_idx).at(config).at(i);
            }
        }
        if (need_left_input_mux) {
            // MUX increases stage by 1
            left_input_stage++;
            // normalize mux input shift
            int mux_shift_normalized = std::numeric_limits<int>::max();
            for (int config = 0; config < this->num_configs; config++) {
                auto s = this->input_shifts_l.at(adder_idx).at(config);
                if (s == DEFAULT_VALUE) continue;
                mux_shift_normalized = std::min(mux_shift_normalized, s);
            }
            // left input shift is the smallest mux input shift, since the MUX switches between input shifts
            if (normalize_adder_graph and this->node_output_shifts.at(adder_idx) > 0) {
                // in this case, all MUX input shifts must be 0 anyways
                left_input_shift_str << -this->node_output_shifts.at(adder_idx);
            }
            else {
                left_input_shift_str << mux_shift_normalized;
            }
            // left input coefficients include the NORMALIZED shift value
            left_input_coeff_str.str("");
            for (int config = 0; config < this->num_configs; config++) {
                if (config > 0) {
                    left_input_coeff_str << ";";
                }
                auto input_idx = this->inputs_l.at(adder_idx).at(config);
                for (int i = 0; i < this->num_inputs; i++) {
                    if (i > 0) {
                        left_input_coeff_str << ",";
                    }
                    auto s = this->input_shifts_l.at(adder_idx).at(config) - mux_shift_normalized;
                    left_input_coeff_str << (this->coeffs.at(input_idx).at(config).at(i) << s);
                }
            }
            // create multiplexer node for left input (and respect normalized shifts)
            left_input_mux_str << "{'M',[" << left_input_coeff_str.str() << "]," << left_input_stage;
            // determine unique inputs
            std::map<int, std::set<int>> unique_mux_inputs;
            for (int config = 0; config < this->num_configs; config++) {
                unique_mux_inputs[this->inputs_l.at(adder_idx).at(config)].insert(config);
            }
            for (auto &it : unique_mux_inputs) {
                auto mux_input_idx = it.first;
                auto mux_input_configs = it.second;
                // coeffs
                left_input_mux_str << ",[";
                for (int config = 0; config < this->num_configs; config++) {
                    if (config > 0) left_input_mux_str << ";";
                    for (int i = 0; i < this->num_inputs; i++) {
                        if (i > 0) left_input_mux_str << ",";
                        left_input_mux_str << this->coeffs.at(mux_input_idx).at(config).at(i);
                    }
                }
                left_input_mux_str << "],";
                // stage
                // int left_input_mux_stage = -1;
                // for (int config = 0; config < this->num_configs; config++) {
                //     left_input_mux_stage = std::max(left_input_mux_stage, this->get_stage(mux_input_idx, config));
                // }
                int left_input_mux_stage = this->get_stage(mux_input_idx);
                left_input_mux_str << left_input_mux_stage;
                // shifts
                left_input_mux_str << ",[";
                for (int config = 0; config < this->num_configs; config++) {
                    if (config > 0) left_input_mux_str << ";";
                    auto s = this->input_shifts_l.at(adder_idx).at(config);
                    if (s == DEFAULT_VALUE or mux_input_configs.find(config) == mux_input_configs.end()) {
                        left_input_mux_str << "NaN";
                    }
                    else {
                        left_input_mux_str << s - mux_shift_normalized;
                    }
                }
                left_input_mux_str << "]";
            }
            // finish mux node
            left_input_mux_str << "}";
        }
        else {
            // use left input shift from container
            if (normalize_adder_graph and this->node_output_shifts.at(adder_idx) > 0) {
                left_input_shift_str << -this->node_output_shifts.at(adder_idx);
            }
            else {
                left_input_shift_str << this->input_shifts_l.at(adder_idx).front();
            }
        }
        // do we need to account for an additional register instead of the mux?
        bool need_left_input_reg = adder_stage - left_input_stage == 2 and !need_left_input_mux and is_pipelined;
        if (need_left_input_reg) {
            // increase stage
            left_input_stage++;
            // create string
            left_input_mux_str << "{'R',[" << left_input_coeff_str.str() << "]," << adder_stage-1 << ",[" << left_input_coeff_str.str() << "]," << adder_stage-2 << "}";
        }
        // do we need a mux for the right input?
        bool need_right_input_mux = this->adder_node_needs_mux_r(adder_idx);
        // determine right input
        std::stringstream right_input_coeff_str;
        //std::stringstream right_input_coeff_str_incl_shift;
        std::stringstream right_input_coeff_sub_str;
        //std::stringstream right_input_coeff_sub_str_incl_shift;
        std::stringstream right_input_shift_str;
        std::stringstream right_input_mux_str;
        int right_input_stage = 0;
        for (int config = 0; config < this->num_configs; config++) {
            if (config > 0) {
                right_input_coeff_str << ";";
                right_input_coeff_sub_str << ";";
            }
            auto input_idx = this->inputs_r.at(adder_idx).at(config);
            auto is_sub = this->node_is_subtracter.at(adder_idx).at(config);
            // right_input_stage = std::max(right_input_stage, this->get_stage(input_idx, config));
            right_input_stage = std::max(right_input_stage, this->get_stage(input_idx));
            for (int i = 0; i < this->num_inputs; i++) {
                if (i > 0) {
                    right_input_coeff_str << ",";
                    right_input_coeff_sub_str << ",";
                }
                auto shift_r = this->input_shifts_r.at(adder_idx).at(config);
                right_input_coeff_str << this->coeffs.at(input_idx).at(config).at(i);
                if (is_sub) {
                    right_input_coeff_sub_str << -this->coeffs.at(input_idx).at(config).at(i);
                }
                else {
                    right_input_coeff_sub_str << this->coeffs.at(input_idx).at(config).at(i);
                }
            }
        }
        if (need_right_input_mux) {
            // MUX increases stage by 1
            right_input_stage++;
            // normalize mux input shift
            int mux_shift_normalized = std::numeric_limits<int>::max();
            for (int config = 0; config < this->num_configs; config++) {
                auto s = this->input_shifts_r.at(adder_idx).at(config);
                if (s == DEFAULT_VALUE) continue;
                mux_shift_normalized = std::min(mux_shift_normalized, s);
            }
            // right input shift is the smallest mux input shift, since the MUX switches between input shifts
            if (normalize_adder_graph and this->node_output_shifts.at(adder_idx) > 0) {
                // in this case, all MUX input shifts must be 0 anyways
                right_input_shift_str << -this->node_output_shifts.at(adder_idx);
            }
            else {
                // "normal" situation
                right_input_shift_str << mux_shift_normalized;
            }
            // right input coeff string includes normalized shifts
            right_input_coeff_str.str("");
            right_input_coeff_sub_str.str("");
            for (int config = 0; config < this->num_configs; config++) {
                if (config > 0) {
                    right_input_coeff_str << ";";
                    right_input_coeff_sub_str << ";";
                }
                auto input_idx = this->inputs_r.at(adder_idx).at(config);
                auto is_sub = this->node_is_subtracter.at(adder_idx).at(config);
                for (int i = 0; i < this->num_inputs; i++) {
                    if (i > 0) {
                        right_input_coeff_str << ",";
                        right_input_coeff_sub_str << ",";
                    }
                    auto s = this->input_shifts_r.at(adder_idx).at(config) - mux_shift_normalized;
                    right_input_coeff_str << (this->coeffs.at(input_idx).at(config).at(i) << s);
                    if (is_sub) {
                        right_input_coeff_sub_str << (-this->coeffs.at(input_idx).at(config).at(i) << s);
                    }
                    else {
                        right_input_coeff_sub_str << (this->coeffs.at(input_idx).at(config).at(i) << s);
                    }
                }
            }
            // create multiplexer node for right input
            right_input_mux_str << "{'M',[" << right_input_coeff_str.str() << "]," << right_input_stage;
            // determine unique inputs
            std::map<int, std::set<int>> unique_mux_inputs;
            for (int config = 0; config < this->num_configs; config++) {
                unique_mux_inputs[this->inputs_r.at(adder_idx).at(config)].insert(config);
            }
            for (auto &it : unique_mux_inputs) {
                auto mux_input_idx = it.first;
                auto mux_input_configs = it.second;
                // coeffs
                right_input_mux_str << ",[";
                for (int config = 0; config < this->num_configs; config++) {
                    if (config > 0) right_input_mux_str << ";";
                    for (int i = 0; i < this->num_inputs; i++) {
                        if (i > 0) right_input_mux_str << ",";
                        right_input_mux_str << this->coeffs.at(mux_input_idx).at(config).at(i);
                    }
                }
                right_input_mux_str << "],";
                // stage
                // int right_input_mux_stage = 0;
                // for (int config = 0; config < this->num_configs; config++) {
                //     right_input_mux_stage = std::max(right_input_mux_stage, this->get_stage(mux_input_idx, config));
                // }
                int right_input_mux_stage = this->get_stage(mux_input_idx);
                right_input_mux_str << right_input_mux_stage;
                // shifts
                right_input_mux_str << ",[";
                for (int config = 0; config < this->num_configs; config++) {
                    if (config > 0) right_input_mux_str << ";";
                    auto s = this->input_shifts_r.at(adder_idx).at(config);
                    if (s == DEFAULT_VALUE or mux_input_configs.find(config) == mux_input_configs.end()) {
                        right_input_mux_str << "NaN";
                    }
                    else {
                        right_input_mux_str << s - mux_shift_normalized;
                    }
                }
                right_input_mux_str << "]";
            }
            // finish mux node
            right_input_mux_str << "}";
        }
        else {
            // use right input shift from container
            if (normalize_adder_graph and this->node_output_shifts.at(adder_idx) > 0) {
                right_input_shift_str << -this->node_output_shifts.at(adder_idx);
            }
            else {
                right_input_shift_str << this->input_shifts_r.at(adder_idx).front();
            }
        }
        // do we need to account for an additional register instead of the mux?
        bool need_right_input_reg = adder_stage - right_input_stage == 2 and !need_right_input_mux and is_pipelined;
        if (need_right_input_reg) {
            // increase stage
            right_input_stage++;
            // create string
            right_input_mux_str << "{'R',[" << right_input_coeff_str.str() << "]," << adder_stage-1 << ",[" << right_input_coeff_str.str() << "]," << adder_stage-2 << "}";
        }
        // determine coefficient
        std::stringstream coeff_str;
        for (int config = 0; config < this->num_configs; config++) {
            if (config > 0) coeff_str << ";";
            for (int i = 0; i < this->num_inputs; i++) {
                if (i > 0) coeff_str << ",";
                coeff_str << this->coeffs.at(adder_idx).at(config).at(i);
            }
        }
        // is it a pure register?
        bool is_equal_to_left_input = true;
        for (int config = 0; config < this->num_configs; config++) {
            bool is_eq = true;
            for (int i = 0; i < this->num_inputs; i++) {
                if (this->coeffs.at(adder_idx).at(config).at(i) != this->coeffs.at(this->inputs_l.at(adder_idx).at(config)).at(config).at(i)) {
                    is_eq = false;
                    break;
                }
            }
            if (!is_eq) {
                is_equal_to_left_input = false;
                break;
            }
        }
        bool is_equal_to_right_input = true;
        for (int config = 0; config < this->num_configs; config++) {
            bool is_eq = true;
            for (int i = 0; i < this->num_inputs; i++) {
                if (this->coeffs.at(adder_idx).at(config).at(i) != this->coeffs.at(this->inputs_r.at(adder_idx).at(config)).at(config).at(i)) {
                    is_eq = false;
                    break;
                }
            }
            if (!is_eq) {
                is_equal_to_right_input = false;
                break;
            }
        }
        // put optional multiplexers into adder graph
        auto is_bypassed = this->node_is_bypassed.at(adder_idx);
        this->put_string_into_adder_graph(ag, left_input_mux_str.str());
        if (!is_bypassed) {
            // only put in right MUX if adder is not bypassed
            this->put_string_into_adder_graph(ag, right_input_mux_str.str());
        }
        // put adder info into adder graph
        if (is_pipelined and (is_equal_to_left_input or is_equal_to_right_input) and !need_left_input_mux and !need_right_input_mux) {
            // pure register
            std::stringstream reg_str;
            reg_str << "{'R',[" << coeff_str.str() << "]," << adder_stage << ",[" << coeff_str.str() << "]," << adder_stage-1 << "}";
            this->put_string_into_adder_graph(ag, reg_str.str());
        }
        else if (!is_bypassed) {
            // "normal" adder -> only put it in if it is not bypassed
            std::stringstream add_str;
            add_str << "{'A',[" << coeff_str.str() << "]," << adder_stage << output_shift_str.str() 
                    << ",[" << left_input_coeff_str.str() << "]," << left_input_stage << "," << left_input_shift_str.str() 
                    << ",[" << right_input_coeff_sub_str.str() << "]," << right_input_stage << "," << right_input_shift_str.str() << "}";
            this->put_string_into_adder_graph(ag, add_str.str());
        }
    }
    // output nodes
    std::set<std::string> already_inserted_output_nodes;
    for (int output_idx = 0; output_idx < this->num_outputs; output_idx++) {
        std::vector<int> output_inverted(this->num_configs, DEFAULT_VALUE);
        // are all outputs inverted or non-inverted?
        for (int config = 0; config < this->num_configs; config++) {
            auto input_idx = this->output_adder_indices.at(output_idx).at(config);
            if (input_idx == DEFAULT_VALUE) {
                continue;
            }
            for (int i = 0; i < this->num_inputs; i++) {
                auto output_coeff = this->output_coeffs.at(output_idx).at(config).at(i);
                if (output_coeff == DEFAULT_VALUE_OUTPUT_COEFF) {
                    continue;
                }
                auto adder_coeff = this->coeffs.at(input_idx).at(config).at(i);
                output_inverted.at(config) = (adder_coeff < 0 and output_coeff >= 0) or (adder_coeff >= 0 and output_coeff < 0) ? 1 : 0;
            }
        }
        // do we need a multiplexer in front?
        bool need_mux = this->output_node_needs_mux(output_idx, output_inverted, implement_coeff_signs_as_requested);
        // determine values
        std::stringstream output_coeff_str;
        std::stringstream adder_coeff_str;
        std::stringstream output_shift_str;
        std::stringstream output_mux_str;
        std::stringstream output_src_str;
        std::stringstream output_src_corr_sign_str;
        int output_stage = 0;
        for (int config = 0; config < this->num_configs; config++) {
            if (config > 0) {
                output_coeff_str << ";";
            }
            auto input_idx = this->output_adder_indices.at(output_idx).at(config);
            if (input_idx != DEFAULT_VALUE) {
                // output_stage = std::max(output_stage, this->get_stage(input_idx, config));
                output_stage = std::max(output_stage, this->get_stage(input_idx));
            }
            for (int i = 0; i < this->num_inputs; i++) {
                if (i > 0) {
                    output_coeff_str << ",";
                }
                auto c = this->output_coeffs.at(output_idx).at(config).at(i);
                if (c != DEFAULT_VALUE_OUTPUT_COEFF) {
                    output_coeff_str << c;
                }
                else {
                    output_coeff_str << "NaN";
                }
            }
        }
        if (need_mux) {
            // MUX increases stage by 1
            output_stage++;
            // normalize mux input shift
            int mux_shift_normalized = std::numeric_limits<int>::max();
            for (int config = 0; config < this->num_configs; config++) {
                auto s = this->output_shifts.at(output_idx).at(config);
                if (s == DEFAULT_VALUE) continue;
                mux_shift_normalized = std::min(mux_shift_normalized, s);
            }
            // adder coeff string is equal to the mux output string, which is equal to the output string
            adder_coeff_str.str("");
            for (int config = 0; config < this->num_configs; config++) {
                if (config > 0) {
                    adder_coeff_str << ";";
                    output_src_str << ";";
                }
                auto input_idx = this->output_adder_indices.at(output_idx).at(config);
                for (int i = 0; i < this->num_inputs; i++) {
                    if (i > 0) {
                        adder_coeff_str << ",";
                        output_src_str << ",";
                    }
                    auto s = this->output_shifts.at(output_idx).at(config) - mux_shift_normalized;
                    adder_coeff_str << (this->coeffs.at(input_idx).at(config).at(i) << s);
                    auto sign = (this->coeffs.at(input_idx).at(config).at(i) < 0 and this->output_coeffs.at(output_idx).at(config).at(i) >= 0) or (this->coeffs.at(input_idx).at(config).at(i) >= 0 and this->output_coeffs.at(output_idx).at(config).at(i) < 0) ? -1 : 1;
                    output_src_str << (sign * this->coeffs.at(input_idx).at(config).at(i) << s);
                }
            }
            // output shift is equal to the smallest one, since the MUX switches between input shifts
            output_shift_str << mux_shift_normalized;
            // create output multiplexer node
            output_mux_str << "{'M',[" << adder_coeff_str.str() << "]," << output_stage;
            // determine unique inputs
            std::map<int, std::set<int>> unique_mux_inputs;
            for (int config = 0; config < this->num_configs; config++) {
                auto idx = this->output_adder_indices.at(output_idx).at(config);
                if (idx == DEFAULT_VALUE) continue;
                unique_mux_inputs[idx].insert(config);
            }
            for (auto &it : unique_mux_inputs) {
                auto mux_input_idx = it.first;
                auto mux_input_configs = it.second;
                // coefficients
                output_mux_str << ",[";
                for (int config = 0; config < this->num_configs; config++) {
                    if (config > 0) output_mux_str << ";";
                    for (int i = 0; i < this->num_inputs; i++) {
                        if (i > 0) output_mux_str << ",";
                        output_mux_str << this->coeffs.at(mux_input_idx).at(config).at(i);
                    }
                }
                output_mux_str << "],";
                // stage
                // int max_stage = 0;
                // for (int config = 0; config < this->num_configs; config++) {
                //     max_stage = std::max(max_stage, this->get_stage(mux_input_idx, config));
                // }
                int max_stage = this->get_stage(mux_input_idx);
                output_mux_str << max_stage;
                // shifts
                output_mux_str << ",[";
                for (int config = 0; config < this->num_configs; config++) {
                    if (config > 0) output_mux_str << ";";
                    auto s = this->output_shifts.at(output_idx).at(config);
                    if (s == DEFAULT_VALUE or mux_input_configs.find(config) == mux_input_configs.end()) {
                        output_mux_str << "NaN";
                    }
                    else {
                        output_mux_str << s - mux_shift_normalized;
                    }
                }
                output_mux_str << "]";
            }
            // finish mux node
            output_mux_str << "}";
        }
        else {
            // use the first valid shift from container
            for (int config = 0; config < this->num_configs; config++) {
                auto s = this->output_shifts.at(output_idx).at(config);
                if (s != DEFAULT_VALUE) {
                    output_shift_str << s;
                    break;
                }
            }
            // use the output source for the adder coeff string
            int adder_idx;
            for (int config = 0; config < this->num_configs; config++) {
                auto idx = this->output_adder_indices.at(output_idx).at(config);
                if (idx != DEFAULT_VALUE) {
                    adder_idx = idx;
                    break;
                }
            }
            for (int config = 0; config < this->num_configs; config++) {
                if (config > 0) {
                    adder_coeff_str << ";";
                    output_src_str << ";";
                    output_src_corr_sign_str << ";";
                }
                for (int i = 0; i < this->num_inputs; i++) {
                    if (i > 0) {
                        adder_coeff_str << ",";
                        output_src_str << ",";
                        output_src_corr_sign_str << ",";
                    }
                    if (adder_idx != DEFAULT_VALUE) {
                        adder_coeff_str << this->coeffs.at(adder_idx).at(config).at(i);
                        auto sign = (this->coeffs.at(adder_idx).at(config).at(i) < 0 and this->output_coeffs.at(output_idx).at(config).at(i) >= 0) or (this->coeffs.at(adder_idx).at(config).at(i) >= 0 and this->output_coeffs.at(output_idx).at(config).at(i) < 0) ? -1 : 1;
                        output_src_str << (sign * this->coeffs.at(adder_idx).at(config).at(i));
                        output_src_corr_sign_str << this->coeffs.at(adder_idx).at(config).at(i);
                    }
                    else {
                        adder_coeff_str << "NaN";
                        output_src_str << "NaN";
                    }
                }
            }
        }
        // do we need to account for an additional register instead of the mux?
        if (this->need_output_reg.at(output_idx) and is_pipelined and !need_mux) {
            // increase stage
            output_stage++;
            // create string
            output_mux_str << "{'R',[" << output_src_corr_sign_str.str() << "]," << output_stage << ",[" << output_src_corr_sign_str.str() << "]," << output_stage-1 << "}";
        }
        // put optional multiplexer into adder graph
        this->put_string_into_adder_graph(ag, output_mux_str.str());
        // add strings to adder graph
        std::stringstream o_str;
        o_str << "{'O',[" << output_coeff_str.str() << "]," << output_stage << ",[" << output_src_str.str() << "]," << output_stage << "," << output_shift_str.str() << "}";
        if (already_inserted_output_nodes.find(o_str.str()) != already_inserted_output_nodes.end()) {
            // skip this output -> we already have another one which is EXACTLY the same
        }
        else {
            // this is a new one -> put it into the adder graph
            this->put_string_into_adder_graph(ag, o_str.str());
            already_inserted_output_nodes.insert(o_str.str());
        }
    }
    ag << "}";
    // return result
    return ag.str();
}

bool adder_graph::adder_node_needs_mux_l(const int &adder_idx) {
    return this->container_contents_diff(this->inputs_l.at(adder_idx)) or this->container_contents_diff(this->input_shifts_l.at(adder_idx));
}

bool adder_graph::adder_node_needs_mux_r(const int &adder_idx) {
    return this->container_contents_diff(this->inputs_r.at(adder_idx)) or this->container_contents_diff(this->input_shifts_r.at(adder_idx));
}

bool adder_graph::output_node_needs_mux(const int &output_idx, const std::vector<int> &output_inverted, const bool &implement_coeff_signs_as_requested) {
    auto indices_diff = this->output_container_contents_diff(this->output_adder_indices.at(output_idx), DEFAULT_VALUE);
    auto shifts_diff = this->output_container_contents_diff(this->output_shifts.at(output_idx), DEFAULT_VALUE);
    auto negations_diff = this->output_container_contents_diff(output_inverted, DEFAULT_VALUE);
    return indices_diff or shifts_diff or (implement_coeff_signs_as_requested and negations_diff);
}

int adder_graph::get_stage(int node_idx) {
    int stage = 0;
    for (int config = 0; config < this->num_configs; config++) {
        stage = std::max(stage, this->get_stage(node_idx, config));
    }
    return stage;
}

int adder_graph::get_stage(int node_idx, int config) {
    // base case: stage already determined
    try {
        if (this->node_stages.at(node_idx).at(config) != this->DEFAULT_VALUE) {
            return this->node_stages.at(node_idx).at(config);
        }
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::get_stage: cannot determine stage information for corrupt adder graph");
    }
    // recursive case: have to determine stage based on inputs
    int input_idx_l;
    int input_idx_r;
    try {
        input_idx_l = this->inputs_l.at(node_idx).at(config);
        input_idx_r = this->inputs_r.at(node_idx).at(config);
    }
    catch (std::out_of_range&) {
        throw std::runtime_error("adder_graph::get_stage: cannot determine stage information for incomplete adder graph");
    }
    // int input_stage_l = this->get_stage(input_idx_l, config);
    // int input_stage_r = this->get_stage(input_idx_r, config);
    int input_stage_l = this->get_stage(input_idx_l);
    int input_stage_r = this->get_stage(input_idx_r);
    if (this->adder_node_needs_mux_l(node_idx)) input_stage_l++;
    if (this->adder_node_needs_mux_r(node_idx)) input_stage_r++;
    auto this_stage = std::max(input_stage_l, input_stage_r);
    if (!this->node_is_bypassed.at(node_idx)) {
        this_stage++;
    }
    this->node_stages.at(node_idx).at(config) = this_stage;
    return this_stage;
}