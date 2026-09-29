
#include <vector>
#include <string>
#include <sstream>
#include <cstdint>
#include <limits>
#include <set>
#include <algorithm>

#ifndef SATCMM_ADDER_GRAPH_H
#define SATCMM_ADDER_GRAPH_H
class adder_graph {
public:
    /*!
     * @param num_configs: number of configurations (> 1 in case of a reconfigurable circuit)
     * @param num_inputs: number of CMM inputs (= 1 in case of SCM/MCM, > 1 in case of SOP/CMM)
     * @param num_outputs: number of CMM outputs (= 1 in case of SCM/SOP, > 1 in case of MCM/CMM)
     * @param num_adders: number of adders in the CMM circuit
     */
    adder_graph(int num_configs, int num_inputs, int num_outputs, int num_adders, int fundamental_fractional_bits);

    /* USE THESE FUNCTIONS TO DEFINE ADDER NODE STUFF */
    void set_subtract(int node_idx, int config, bool is_subtracter);
    void set_coeff(int node_idx, int config, std::vector<int64_t> new_coeff);
    void set_coeff(int node_idx, int config, int vec_idx, int64_t new_coeff);
    void set_left_input(int node_idx, int config, int new_input_node_idx);
    void set_right_input(int node_idx, int config, int new_input_node_idx);
    void set_left_input_shift(int node_idx, int config, int new_input_shift);
    void set_right_input_shift(int node_idx, int config, int new_input_shift);
    void set_node_output_shift(int node_idx, int new_output_shift);
    void set_adder_bypassed(int node_idx);

    /* USE THESE FUNCTIONS TO DEFINE OUTPUT STUFF */
    void set_output_input(int output_idx, int config, int new_input_node_idx);
    void set_output_shift(int output_idx, int config, int new_input_shift);
    void set_output_coeff(int output_idx, int config, std::vector<int64_t> new_coeff);
    void set_output_coeff(int output_idx, int config, int vec_idx, int64_t new_coeff);

    /* CONVERT THE INTERNAL DATA STRUCTURE INTO A STRING */
    std::string get_adder_graph_as_str(bool is_pipelined, bool normalize_adder_graph, bool implement_coeff_signs_as_requested);

    /* default value for un-initialized adder graph information */
    const int DEFAULT_VALUE = -1;
    const int64_t DEFAULT_VALUE_OUTPUT_COEFF = std::numeric_limits<int64_t>::min();

    /* manually define stage info (useful for pipelined RCMM regarding phantom MUXs) */
    void manually_define_adder_stage(int adder_idx, int config, int stage);
    void manually_insert_output_register(int output_idx);

private:
    bool adder_node_needs_mux_l(const int &adder_idx);
    bool adder_node_needs_mux_r(const int &adder_idx);
    bool output_node_needs_mux(const int &output_idx, const std::vector<int> &output_inverted, const bool &implement_coeff_signs_as_requested);

    template <typename T>
    bool container_contents_diff(const T& container);

    template <typename T>
    bool output_container_contents_diff(const T& container, const int &default_value);

    int num_configs;
    int num_inputs;
    int num_outputs;
    int num_adders;
    int fundamental_fractional_bits;

    std::vector<std::vector<int>> output_adder_indices;
    std::vector<std::vector<int>> output_shifts;
    std::vector<bool> need_output_reg;
    std::vector<std::vector<std::vector<int64_t>>> coeffs;
    std::vector<std::vector<int>> inputs_l;
    std::vector<std::vector<int>> inputs_r;
    std::vector<std::vector<int>> input_shifts_l;
    std::vector<std::vector<int>> input_shifts_r;
    std::vector<int> node_output_shifts;
    std::vector<bool> node_is_bypassed;
    std::vector<std::vector<std::vector<int64_t>>> output_coeffs;
    std::vector<std::vector<int>> node_stages;
    std::vector<std::vector<bool>> node_is_subtracter;

    /* use this to recursively calculate the stage of a given node */
    int get_stage(int node_idx);

    /* use this to recursively calculate the stage of a given node in a given config */
    int get_stage(int node_idx, int config);

    /*!
     * preprocess the adder graph, this includes:
     * -> reset some parameters back to their default values so multiplexers are correctly inserted
     */
    void preprocess();

    /*!
     * put a string into the adder graph
     * @param adder_graph_empty whether the adder graph is empty (i.e., no nodes have been added yet)
     * @param adder_graph the adder graph to put the string into
     * @param put_into_adder_graph the string to put into the adder graph
     */
    void put_string_into_adder_graph(std::stringstream &adder_graph, const std::string &put_into_adder_graph);
    /*!
     * all unique nodes inserted in the current adder graph
     */
    std::set<std::string> adder_graph_elements;
};

template <typename T>
bool adder_graph::container_contents_diff(const T& container) {
    return std::any_of(
        container.cbegin(),
        container.cend(),
        [container](int i){return i != container.front();}
    );
}

template <typename T>
bool adder_graph::output_container_contents_diff(const T& container, const int &default_value) {
    auto reference_val = default_value;
    for (auto &it : container) {
        if (it != default_value) {
            reference_val = it;
            break;
        }
    }
    return std::any_of(
        container.cbegin(),
        container.cend(),
        [container, default_value, reference_val](int i){return (i != default_value) and (i != reference_val);}
    );
}
#endif //SATCMM_ADDER_GRAPH_H