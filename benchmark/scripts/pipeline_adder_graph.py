from adder_graph import AdderGraph, AdderGraphNode, parse_adder_graph, get_number_of_configs, get_number_of_inputs, is_adder_graph_normalized, get_adder_graph_nodes
import sys


def pipeline_adder_graph(adder_graph_str, num_fractional_bits):
    num_configs = get_number_of_configs(adder_graph_str)
    num_inputs = get_number_of_inputs(adder_graph_str)
    is_normalized = is_adder_graph_normalized(adder_graph_str)
    adder_graph: AdderGraph = parse_adder_graph(
        adder_graph_str=adder_graph_str,
        number_of_inputs=num_inputs,
        number_of_configs=num_configs,
        input_word_size=-1,
        is_normalized=is_normalized,
        is_pipelined=False,
        num_fractional_bits=num_fractional_bits)
    nodes_str: list[str] = get_adder_graph_nodes(adder_graph_str)
    output_nodes_str = [n_str for n_str in nodes_str if n_str.startswith("'O'")]
    pipelined_nodes_str = [n_str for n_str in nodes_str if not n_str.startswith("'O'")]
    num_pipeline_stages = adder_graph.adder_depth()
    # pipeline adder graph
    nodes_str = [n_str for n_str in nodes_str if not n_str.startswith("'O'")]  # filter out output nodes because they are handled separately
    added_regs = 0
    for pos, node_str in enumerate(nodes_str):
        coeff_str, _, remaining_str = node_str.partition(",[")[2].partition("],")
        associated_fundamentals = [[int(x) for x in coeff_vec_str.split(",")] for coeff_vec_str in coeff_str.split(";")]
        node_stage = int(remaining_str.partition(",")[0])
        cur_node: AdderGraphNode = adder_graph.find_non_output_node(associated_fundamentals, node_stage, False)
        src_nodes: list[AdderGraphNode] = [e.src_node for e in adder_graph.edges if e.dst_node == cur_node]
        # insert registers if necessary
        for src_node in src_nodes:
            num_pipe_regs = cur_node.node_stage - src_node.node_stage - 1
            for i in range(num_pipe_regs):
                src_coeff_str = [[str(x) for x in coeff_vec] for coeff_vec in src_node.associated_fundamentals]
                src_coeff_str = [",".join(coeff_vec) for coeff_vec in src_coeff_str]
                src_coeff_str = ";".join(src_coeff_str)
                reg_str = f"'R',[{src_coeff_str}],{src_node.node_stage + i + 1},[{src_coeff_str}],{src_node.node_stage + i}"
                if reg_str not in pipelined_nodes_str:
                    pipelined_nodes_str = pipelined_nodes_str[: pos + added_regs] + [reg_str] + pipelined_nodes_str[pos + added_regs:]
                    added_regs += 1
        # adjust src stages such that the pipeline is valid
        original_src_stages = [src_node.node_stage for src_node in src_nodes]
        node_str = node_str + "|"
        for original_src_stage in original_src_stages:
            node_str = node_str.replace(f"],{original_src_stage},", f"],{cur_node.node_stage-1},")
            node_str = node_str.replace(f"],{original_src_stage}|", f"],{cur_node.node_stage-1}|")
        node_str = node_str[:-1]
        pipelined_nodes_str = pipelined_nodes_str[:pos + added_regs] + [node_str] + pipelined_nodes_str[pos + added_regs + 1:]
    # add output registers and nodes
    for node_str in output_nodes_str:
        coeff_str, _, remaining_str = node_str.partition(",[")[2].partition("],")
        associated_fundamentals = [[int(x) for x in coeff_vec_str.split(",")] for coeff_vec_str in coeff_str.split(";")]
        node_stage = int(remaining_str.partition(",")[0])
        cur_node: AdderGraphNode = adder_graph.find_output_node(associated_fundamentals, node_stage)
        src_node: AdderGraphNode = [e.src_node for e in adder_graph.edges if e.dst_node == cur_node][0]
        # set output stage to the overall number of pipeline stages
        cur_node.node_stage = num_pipeline_stages
        # insert registers if necessary
        num_pipe_regs = cur_node.node_stage - src_node.node_stage
        for i in range(num_pipe_regs):
            src_coeff_str = [[str(x) for x in coeff_vec] for coeff_vec in src_node.associated_fundamentals]
            src_coeff_str = [",".join(coeff_vec) for coeff_vec in src_coeff_str]
            src_coeff_str = ";".join(src_coeff_str)
            reg_str = f"'R',[{src_coeff_str}],{src_node.node_stage + i + 1},[{src_coeff_str}],{src_node.node_stage + i}"
            if reg_str not in pipelined_nodes_str:
                pipelined_nodes_str.append(reg_str)
                added_regs += 1
        # make sure that all outputs are scheduled into the same clock cycle
        node_str = node_str + "|"
        node_str = node_str.replace(f"],{src_node.node_stage},", f"],{cur_node.node_stage},")
        node_str = node_str.replace(f"],{src_node.node_stage}|", f"],{cur_node.node_stage}|")
        node_str = node_str[:-1]
        # insert output node
        pipelined_nodes_str.append(node_str)
    # assemble and return
    return "{{" + "},{".join(pipelined_nodes_str) + "}}"


def main():
    if len(sys.argv) < 3:
        raise Exception(f"Call script with following arguments: <adder graph string> <number of fractional fundamental bits>")
    adder_graph_str = sys.argv[1]
    num_fractional_bits = int(sys.argv[2])
    pipelined_adder_graph_str = pipeline_adder_graph(adder_graph_str, num_fractional_bits)
    print(f"Pipelined adder graph: '{pipelined_adder_graph_str}'")



if __name__ == "__main__":
    main()
