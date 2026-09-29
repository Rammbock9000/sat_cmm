import os
import sys
import math
from adder_graph import AdderGraph, parse_adder_graph


def create_vhdl(adder_graph: AdderGraph, output_file_path, num_tests, register_sandwich=False, use_opt_adder_node=True):
    pipe = adder_graph.is_pipelined
    lat = adder_graph.adder_depth() if pipe else 0
    lat_conf = adder_graph.last_conf_stage()
    if register_sandwich:
        # one input register and one output register
        lat_conf += 2
        lat += 2
    with open(output_file_path, 'w') as f:
        # load packages
        f.write("library ieee;\n")
        f.write("use ieee.std_logic_1164.all;\n")
        f.write("use ieee.numeric_std.all;\n")
        # create entity
        f.write("entity const_mul is\n")
        f.write("  port (\n")
        for i in range(len(adder_graph.input_nodes)):
            f.write(f"    x_{i}: in std_logic_vector({adder_graph.input_word_size-1} downto 0);\n")
        if adder_graph.number_of_configs > 1:
            f.write(f"    config_select: in std_logic_vector({math.ceil(math.log2(adder_graph.number_of_configs))-1} downto 0);\n")
        for i, o_node in enumerate(adder_graph.output_nodes):
            f.write(f"    y_{i}: out std_logic_vector({adder_graph.output_word_sizes[o_node]-adder_graph.num_fractional_bits-1} downto 0);\n")
        f.write("    clk: in std_logic\n")
        f.write(");\n")
        f.write("end entity;\n")
        # create architecture
        f.write("architecture const_mul of const_mul is\n")
        # create signals for config shift register
        if adder_graph.number_of_configs > 1:
            for p in range(lat_conf+1):
                f.write(f"  signal config_select_{p}: std_logic_vector({math.ceil(math.log2(adder_graph.number_of_configs))-1} downto 0);\n")
        # create signals for nodes
        for node in adder_graph.nodes:
            all_inputs = adder_graph.get_all_inputs(node)
            w_out = adder_graph.output_word_sizes[node]
            f.write(f"  signal c_{node.id}: signed({w_out-1} downto 0);\n")
            if node.node_type in ["input", "register"]:
                pass  # already handled
            elif node.node_type == "output":
                f.write(f"  signal c_{node.id}_resize: signed({w_out-1} downto 0);\n")
            elif node.node_type in ["add", "sub", "add_sub"]:
                if all(all(nf_it == 0 for nf_it in nf) for nf in node.associated_fundamentals):
                    pass  # no helper signals needed because that node outputs a constant zero anyways
                else:
                    s_out = node.output_shift
                    f.write(f"  signal c_{node.id}_i0_resize: signed({w_out+s_out-1} downto 0);\n")
                    f.write(f"  signal c_{node.id}_i1_resize: signed({w_out+s_out-1} downto 0);\n")
                    f.write(f"  signal c_{node.id}_i0_shift: signed({w_out+s_out-1} downto 0);\n")
                    f.write(f"  signal c_{node.id}_i1_shift: signed({w_out+s_out-1} downto 0);\n")
                    f.write(f"  signal c_{node.id}_arith: signed({w_out+s_out-1} downto 0);\n")
                    if use_opt_adder_node:
                        f.write(f"  signal c_{node.id}_oshift: signed({w_out-1} downto 0);\n")
                    else:
                        f.write(f"  signal c_{node.id}_oshift: signed({w_out+s_out-1} downto 0);\n")
                    if node.node_type == "add_sub":
                        if type(node.sub_pattern) == dict:
                            # this one can compute left+right, left-right, right-left
                            f.write(f"  signal c_{node.id}_sub_sel_left: std_logic;\n")
                            f.write(f"  signal c_{node.id}_sub_sel_right: std_logic;\n")
                        else:
                            # this one can compute left+right, left-right
                            f.write(f"  signal c_{node.id}_sub_sel: std_logic;\n")
            elif node.node_type == "mux":
                unique_inputs = {}
                found_ports = set()
                for (n, s, inv, p) in all_inputs:
                    if (n, s, inv) not in unique_inputs:
                        unique_inputs[(n, s, inv)] = []
                    unique_inputs[(n, s, inv)].append(p)
                    found_ports.add(p)
                for i in unique_inputs:
                    f.write(f"  signal c_{node.id}_{i[0].id}_{i[1]}_{i[2]}_resize: signed({w_out-1} downto 0);\n")
                    f.write(f"  signal c_{node.id}_{i[0].id}_{i[1]}_{i[2]}_shift: signed({w_out-1} downto 0);\n")
                num_unique_inputs = len(unique_inputs) + (1 if len(found_ports) != adder_graph.number_of_configs else 0)
                f.write(f"  signal c_{node.id}_sel: std_logic_vector({math.ceil(math.log2(num_unique_inputs))-1} downto 0);\n")
            else:
                raise Exception(f"Error in VHDL code generation: Unknown node type '{node.node_type}'")
        f.write("begin\n")
        # config shift register
        if adder_graph.number_of_configs > 1:
            f.write(f"  config_select_0 <= config_select;\n")
            if pipe:
                f.write("  process(clk)\n")
                f.write("  begin\n")
                f.write("    if rising_edge(clk) then\n")
                for p in range(lat_conf):
                    f.write(f"      config_select_{p+1} <= config_select_{p};\n")
                f.write("    end if;\n")
                f.write("  end process;\n")
            else:
                tab = "      " if register_sandwich else "  "
                if register_sandwich:
                    f.write("  process(clk)\n")
                    f.write("  begin\n")
                    f.write("    if rising_edge(clk) then\n")
                for p in range(lat_conf):
                    f.write(f"{tab}config_select_{p+1} <= config_select;\n")
                if register_sandwich:
                    f.write("    end if;\n")
                    f.write("  end process;\n")
        # helper function to resize signals
        def resize(signal_name, old_size, new_size):
            if old_size > new_size:
                # cut off MSBs
                return f"{signal_name}({new_size-1} downto 0)"
            elif new_size > old_size:
                # append sign bit on the MSB side
                return f"resize({signal_name}, {new_size})"
            else:
                # both signals have the same size
                return f"{signal_name}"
        # build operations
        for i, node in enumerate(adder_graph.input_nodes):
            f.write(f"  -- input node {i} with id {node.id}\n")
            if adder_graph.num_fractional_bits > 0:
                assignment_str = f"c_{node.id} <= signed(x_{i} & \"{'0'*adder_graph.num_fractional_bits}\");"
            else:
                assignment_str = f"c_{node.id} <= signed(x_{i});"
            if register_sandwich:
                f.write("  process(clk)\n")
                f.write("  begin\n")
                f.write("    if rising_edge(clk) then\n")
                f.write(f"      {assignment_str}\n")
                f.write("    end if;\n")
                f.write("  end process;\n")
            else:
                f.write(f"  {assignment_str}\n")
        for i, node in enumerate(adder_graph.output_nodes):
            f.write(f"  -- output node {i} with id {node.id}\n")
            if adder_graph.num_fractional_bits > 0:
                w_out = adder_graph.output_word_sizes[node]
                assignment_str = f"y_{i} <= std_logic_vector(c_{node.id}({w_out-1} downto {adder_graph.num_fractional_bits}));"
            else:
                assignment_str = f"y_{i} <= std_logic_vector(c_{node.id});"
            if register_sandwich:
                f.write("  process(clk)\n")
                f.write("  begin\n")
                f.write("    if rising_edge(clk) then\n")
                f.write(f"      {assignment_str}\n")
                f.write("    end if;\n")
                f.write("  end process;\n")
            else:
                f.write(f"  {assignment_str}\n")
        for node in adder_graph.nodes:
            all_inputs = adder_graph.get_all_inputs(node)
            w_out = adder_graph.output_word_sizes[node]
            if node.node_type not in ["input"]:
                f.write(f"  -- node of type '{node.node_type}' in stage {node.node_stage} with id {node.id} and associated fundamentals {node.associated_fundamentals}\n")
            if node.node_type == "input":
                pass  # already handled
            elif node.node_type == "output":
                (src_node, src_shift, src_inv) = [(u[0], u[1], u[2]) for u in all_inputs if u[3] == 0][0]
                prefix = "-" if src_inv else ""
                w_src = adder_graph.output_word_sizes[src_node]
                resize_str = resize(f"c_{src_node.id}", w_src, w_out)
                f.write(f"  c_{node.id}_resize <= {resize_str};\n")
                f.write(f"  c_{node.id} <= {prefix}shift_left(c_{node.id}_resize, {src_shift});\n")
            elif node.node_type == "register":
                if all(all(nf_it == 0 for nf_it in nf) for nf in node.associated_fundamentals):
                    # this guy outputs a constant zero
                    f.write(f"  c_{node.id} <= (others => '0');\n")
                else:
                    input_node = list([t[0] for t in all_inputs])[0]
                    input_shift = list([t[1] for t in all_inputs])[0]
                    post_fix = '"' + "0"*input_shift + '"'
                    if adder_graph.is_pipelined:
                        f.write("  process(clk)\n")
                        f.write("  begin\n")
                        f.write("    if rising_edge(clk) then\n")
                        f.write(f"      c_{node.id} <= c_{input_node.id} & {post_fix};\n")
                        f.write("    end if;\n")
                        f.write("  end process;\n")
                    else:
                        f.write(f"  c_{node.id} <= c_{input_node.id} & {post_fix};\n")
            elif node.node_type in ["add", "sub", "add_sub"]:
                if all(all(nf_it == 0 for nf_it in nf) for nf in node.associated_fundamentals):
                    # this guy outputs a constant zero
                    f.write(f"  c_{node.id} <= (others => '0');\n")
                else:
                    s_out = node.output_shift
                    (i0, shift0) = [(u[0], u[1]) for u in all_inputs if u[3] == 0][0]
                    (i1, shift1) = [(u[0], u[1]) for u in all_inputs if u[3] == 1][0]
                    w_i0 = adder_graph.output_word_sizes[i0]
                    w_i1 = adder_graph.output_word_sizes[i1]
                    if node.node_type == "add_sub":
                        if type(node.sub_pattern) == dict:
                            for direction in ("left", "right"):
                                f.write(f"  with config_select_{node.node_stage-1+(1 if register_sandwich else 0)} select c_{node.id}_sub_sel_{direction} <= \n")
                                for i, p in enumerate(node.sub_pattern[direction]):
                                    lhs = "'1'" if p else "'0'"
                                    if i == adder_graph.number_of_configs-1:
                                        rhs = "others;"
                                    else:
                                        rhs = '"' + format(i, f"0{math.ceil(math.log2(adder_graph.number_of_configs))}b") + '"' + ","
                                    f.write(f"    {lhs} when {rhs}\n")
                        else:
                            f.write(f"  with config_select_{node.node_stage-1+(1 if register_sandwich else 0)} select c_{node.id}_sub_sel <= \n")
                            for i, p in enumerate(node.sub_pattern):
                                lhs = "'1'" if p else "'0'"
                                if i == adder_graph.number_of_configs-1:
                                    rhs = "others;"
                                else:
                                    rhs = '"' + format(i, f"0{math.ceil(math.log2(adder_graph.number_of_configs))}b") + '"' + ","
                                f.write(f"    {lhs} when {rhs}\n")
                    if use_opt_adder_node:
                        is_mcm = adder_graph.number_of_inputs < 2
                        is_non_reconf = adder_graph.number_of_configs < 2
                        i0_geq_0 = i0.associated_fundamentals[0][0] >= 0
                        i1_geq_0 = i1.associated_fundamentals[0][0] >= 0
                        this_one_geq_0 = node.associated_fundamentals[0][0] >= 0
                        copy_msb_from_i0 = is_mcm and is_non_reconf and (this_one_geq_0 == i0_geq_0)
                        copy_msb_from_i1 = is_mcm and is_non_reconf and (this_one_geq_0 == i1_geq_0) and not copy_msb_from_i0
                        is_sub = node.node_type == "sub"
                        is_add_sub = node.node_type == "add_sub"
                        is_double_add_sub = type(node.sub_pattern) == dict
                        f.write(f"  inst_adder_node_{node.id}: entity work.adder_node\n")
                        f.write(f"    generic map (\n")
                        f.write(f"      w_x_i => {w_i0},\n")
                        f.write(f"      w_y_i => {w_i1},\n")
                        f.write(f"      w_o => {w_out},\n")
                        f.write(f"      s_x_i => {shift0},\n")
                        f.write(f"      s_y_i => {shift1},\n")
                        f.write(f"      s_o => {s_out},\n")
                        f.write(f"      copy_sign_x_i => {copy_msb_from_i0},\n")
                        f.write(f"      copy_sign_y_i => {copy_msb_from_i1},\n")
                        f.write(f"      is_reconf => {is_add_sub},\n")
                        f.write(f"      is_double_add_sub => {is_double_add_sub},\n")
                        f.write(f"      sub => {is_sub}\n")
                        f.write(f"    )\n")
                        f.write(f"    port map (\n")
                        if is_add_sub:
                            if is_double_add_sub:
                                f.write(f"      sub_a_i => c_{node.id}_sub_sel_left,\n")
                                f.write(f"      sub_b_i => c_{node.id}_sub_sel_right,\n")
                            else:
                                f.write(f"      sub_i => c_{node.id}_sub_sel,\n")
                        f.write(f"      x_i => c_{i0.id},\n")
                        f.write(f"      y_i => c_{i1.id},\n")
                        f.write(f"      z_o => c_{node.id}_oshift\n")
                        f.write(f"    );\n")
                    else:
                        resize_str = resize(f"c_{i0.id}", w_i0, w_out+s_out)
                        f.write(f"  c_{node.id}_i0_resize <= {resize_str};\n")
                        resize_str = resize(f"c_{i1.id}", w_i1, w_out+s_out)
                        f.write(f"  c_{node.id}_i1_resize <= {resize_str};\n")
                        f.write(f"  c_{node.id}_i0_shift <= shift_left(c_{node.id}_i0_resize, {shift0});\n")
                        f.write(f"  c_{node.id}_i1_shift <= shift_left(c_{node.id}_i1_resize, {shift1});\n")
                        if node.node_type == "add":
                            f.write(f"  c_{node.id}_arith <= c_{node.id}_i0_shift + c_{node.id}_i1_shift;\n")
                        elif node.node_type == "sub":
                            f.write(f"  c_{node.id}_arith <= c_{node.id}_i0_shift - c_{node.id}_i1_shift;\n")
                        else:
                            if type(node.sub_pattern) == dict:
                                f.write(f"  c_{node.id}_arith <= c_{node.id}_i0_shift - c_{node.id}_i1_shift when c_{node.id}_sub_sel_right = '1' else c_{node.id}_i1_shift - c_{node.id}_i0_shift when c_{node.id}_sub_sel_left = '1' else c_{node.id}_i0_shift + c_{node.id}_i1_shift;\n")
                            else:
                                f.write(f"  c_{node.id}_arith <= c_{node.id}_i0_shift - c_{node.id}_i1_shift when c_{node.id}_sub_sel = '1' else c_{node.id}_i0_shift + c_{node.id}_i1_shift;\n")
                        f.write(f"  c_{node.id}_oshift <= shift_right(c_{node.id}_arith, {s_out});\n")
                    if pipe:
                        f.write("  process(clk)\n")
                        f.write("  begin\n")
                        f.write("    if rising_edge(clk) then\n")
                        f.write(f"      c_{node.id} <= c_{node.id}_oshift({w_out-1} downto 0);\n")
                        f.write("    end if;\n")
                        f.write("  end process;\n")
                    else:
                        f.write(f"  c_{node.id} <= c_{node.id}_oshift({w_out-1} downto 0);\n")
            elif node.node_type == "mux":
                if all(all(nf_it == 0 for nf_it in nf) for nf in node.associated_fundamentals):
                    # this guy outputs a constant zero
                    f.write(f"  c_{node.id} <= (others => '0');\n")
                else:
                    unique_inputs = {}
                    found_ports = set()
                    for (n, s, inv, p) in all_inputs:
                        if (n, s, inv) not in unique_inputs:
                            unique_inputs[(n, s, inv)] = []
                        unique_inputs[(n, s, inv)].append(p)
                        found_ports.add(p)
                    if len(found_ports) < adder_graph.number_of_configs:
                        # the MUX also has a constant zero at one of its inputs
                        unique_inputs[(None, None, None)] = []
                        for p in range(adder_graph.number_of_configs):
                            if p not in found_ports:
                                unique_inputs[(None, None, None)].append(p)
                    num_unique_inputs = len(unique_inputs)
                    for i in unique_inputs:
                        if None in i:
                            continue  # this is the constant zero input
                        else:
                            w_src = adder_graph.output_word_sizes[i[0]]
                            resize_str = resize(f"c_{i[0].id}", w_src, w_out)
                            f.write(f"  c_{node.id}_{i[0].id}_{i[1]}_{i[2]}_resize <= {resize_str};\n")
                            prefix = "-" if i[2] else ""
                            f.write(f"  c_{node.id}_{i[0].id}_{i[1]}_{i[2]}_shift <= {prefix}shift_left(c_{node.id}_{i[0].id}_{i[1]}_{i[2]}_resize, {i[1]});\n")
                    f.write(f"  with config_select_{node.node_stage-1+(1 if register_sandwich else 0)} select c_{node.id}_sel <= \n")
                    cnt = 0
                    for i, ((n, s, inv), ports) in enumerate(unique_inputs.items()):
                        for p in ports:
                            cnt += 1
                            lhs = '"' + format(i, f"0{math.ceil(math.log2(num_unique_inputs))}b") + '"'
                            if cnt == adder_graph.number_of_configs:
                                rhs = "others;"
                            else:
                                rhs = '"' + format(p, f"0{math.ceil(math.log2(adder_graph.number_of_configs))}b") + '",'
                            f.write(f"    {lhs} when {rhs}\n")
                    const_zero = f"to_signed(0, {w_out})"
                    if pipe:
                        # use case statement
                        f.write("  process(clk)\n")
                        f.write("  begin\n")
                        f.write("    if rising_edge(clk) then\n")
                        f.write(f"      case c_{node.id}_sel is\n")
                        for i, ((n, s, inv), _) in enumerate(unique_inputs.items()):
                            if n is None:
                                selected_input = const_zero
                            else:
                                selected_input = f"c_{node.id}_{n.id}_{s}_{inv}_shift"
                            if i == num_unique_inputs-1:
                                choice = f"others"
                            else:
                                choice = '"' + format(i, f"0{math.ceil(math.log2(num_unique_inputs))}b") + '"'
                            f.write(f"        when {choice} => c_{node.id} <= {selected_input};\n")
                        f.write("      end case;\n")
                        f.write("    end if;\n")
                        f.write("  end process;\n")
                    else:
                        # use with-select
                        f.write(f"  with c_{node.id}_sel select c_{node.id} <=\n")
                        for i, (n, s, inv) in enumerate(unique_inputs):
                            if n is None:
                                lhs = const_zero
                            else:
                                lhs = f"c_{node.id}_{n.id}_{s}_{inv}_shift"
                            if i == num_unique_inputs-1:
                                rhs = f"others;"
                            else:
                                rhs = '"' + format(i, f"0{math.ceil(math.log2(num_unique_inputs))}b") + '",'
                            f.write(f"    {lhs} when {rhs}\n")
            else:
                raise Exception(f"Error in VHDL code generation: Unknown node type '{node.node_type}'")
        # finished
        f.write("end architecture;\n")
    # build testbench if necessary
    if num_tests < 1:
        return
    if ".vhdl" in output_file_path:
        tb_file_path = output_file_path.replace(".vhdl", "_tb.vhdl")
    else:
        tb_file_path = output_file_path.replace(".vhd", "_tb.vhd")
    with open(tb_file_path, 'w') as f:
        # load packages
        f.write("library ieee;\n")
        f.write("use ieee.std_logic_1164.all;\n")
        f.write("use ieee.numeric_std.all;\n")
        f.write("use ieee.math_real.all;\n")
        # entity (empty)
        f.write("entity test_tb is\n")
        f.write("end entity;\n")
        # architecture
        f.write("architecture test_tb of test_tb is\n")
        # declare dut IO signals
        for i, node in enumerate(adder_graph.input_nodes):
            f.write(f"  signal x_{i}: std_logic_vector({adder_graph.input_word_size-1} downto 0);\n")
        for i, node in enumerate(adder_graph.output_nodes):
            f.write(f"  signal y_{i}: std_logic_vector({adder_graph.output_word_sizes[node]-adder_graph.num_fractional_bits-1} downto 0);\n")
        if adder_graph.number_of_configs > 1:
            f.write(f"  signal config_select: std_logic_vector({math.ceil(math.log2(adder_graph.number_of_configs))-1} downto 0);\n")
        f.write("  signal clk: std_logic := '0';\n")
        # declare dut IO references and int conversions
        for i, node in enumerate(adder_graph.input_nodes):
            f.write(f"  signal x_{i}_int: signed({adder_graph.input_word_size-1} downto 0);\n")
        for i, node in enumerate(adder_graph.output_nodes):
            f.write(f"  signal y_{i}_int: signed({adder_graph.output_word_sizes[node]-adder_graph.num_fractional_bits-1} downto 0);\n")
            f.write(f"  signal y_{i}_ref: signed({adder_graph.output_word_sizes[node]-adder_graph.num_fractional_bits-1} downto 0);\n")
            for j in range(len(adder_graph.input_nodes)):
                for k in range(adder_graph.number_of_configs):
                    to_bin = lambda num, bits : ''.join(reversed( [str((num >> i) & 1) for i in range(bits)] ) )
                    int_val = node.associated_fundamentals[k][j] // 2**adder_graph.num_fractional_bits
                    word_size = math.ceil(math.log2(abs(int_val) + 1)) + 1
                    f.write(f'  constant c_{i}_{j}_{k}: signed := "{to_bin(int_val, word_size)}";\n')
            if pipe or register_sandwich:
                for p in range(lat+1):
                    f.write(f"  signal y_{i}_ref_{p}: signed({adder_graph.output_word_sizes[node]-adder_graph.num_fractional_bits-1} downto 0);\n")
        f.write(f"    signal ok: std_logic;\n")
        f.write("begin\n")
        # process for input generation and evaluation 
        f.write(f"  process\n")
        f.write(f"    variable seed1: positive;\n")
        f.write(f"    variable seed2: positive;\n")
        f.write(f"    variable rnd: real;\n")
        f.write(f"    variable rnd_int: integer;\n")
        f.write(f"    variable num_tests: integer := 0;\n")
        f.write(f"  begin\n")
        if pipe or register_sandwich:
            f.write(f"    if num_tests >= {num_tests+lat} then\n")
        else:
            f.write(f"    if num_tests >= {num_tests} then\n")
        f.write(f"      wait; -- finished\n")
        f.write(f"    end if;\n")
        f.write(f"    wait for 1 ns;\n")
        for i in range(len(adder_graph.input_nodes)):
            f.write(f"    uniform(seed1, seed2, rnd);\n")
            f.write(f"    rnd_int := integer(floor(rnd * {2**adder_graph.input_word_size}.0))-{2**(adder_graph.input_word_size-1)};\n")
            f.write(f"    x_{i} <= std_logic_vector(to_signed(rnd_int, {adder_graph.input_word_size}));\n")
        if adder_graph.number_of_configs > 1:
            f.write(f"    uniform(seed1, seed2, rnd);\n")
            f.write(f"    rnd_int := integer(floor(rnd * {adder_graph.number_of_configs}.0));\n")
            f.write(f"    config_select <= std_logic_vector(to_unsigned(rnd_int, {math.ceil(math.log2(adder_graph.number_of_configs))}));\n")
        f.write(f"    wait for 1 ns;\n")
        if pipe or register_sandwich:
            cond = " and ".join(f"y_{i}_int = y_{i}_ref_{lat}" for i in range(len(adder_graph.output_nodes)))
        else:
            cond = " and ".join(f"y_{i}_int = y_{i}_ref" for i in range(len(adder_graph.output_nodes)))
        f.write(f"    if {cond} then\n")
        f.write(f"      ok <= '1';\n")
        f.write(f"    else\n")
        f.write(f"      ok <= '0';\n")
        f.write(f"    end if;\n")
        if pipe or register_sandwich:
            f.write(f'    if num_tests >= {lat} then\n')
            f.write(f'      assert ({cond}) report "ERROR IN SIMULATION DETECTED!" severity FAILURE;\n')
            f.write(f'    end if;\n')
        else:
            f.write(f'    assert ({cond}) report "ERROR IN SIMULATION DETECTED!" severity FAILURE;\n')
        f.write(f"    num_tests := num_tests + 1;\n")
        if pipe or register_sandwich:
            f.write(f"    wait for 1 ns;\n")
            f.write(f"    clk <= '1';\n")
            f.write(f"    wait for 3 ns;\n")
            f.write(f"    clk <= '0';\n")
        f.write(f"  end process;\n")
        # inst dut
        f.write("  DUT: entity work.const_mul\n")
        f.write("    port map(\n")
        if adder_graph.number_of_configs > 1:
            f.write("      config_select => config_select,\n")
        for i, node in enumerate(adder_graph.input_nodes):
            f.write(f"      x_{i} => x_{i},\n")
        for i, node in enumerate(adder_graph.output_nodes):
            f.write(f"      y_{i} => y_{i},\n")
        f.write("      clk => clk\n")
        f.write("    );\n")
        # integer conversions
        for i, node in enumerate(adder_graph.input_nodes):
            f.write(f"  x_{i}_int <= signed(x_{i});\n")
        for i, node in enumerate(adder_graph.output_nodes):
            f.write(f"  y_{i}_int <= signed(y_{i});\n")
        # compute reference values
        for i, node in enumerate(adder_graph.output_nodes):
            if adder_graph.number_of_configs > 1:
                f.write(f"  with config_select select y_{i}_ref <= \n")
                for k in range(adder_graph.number_of_configs):
                    #lin_comb = " + ".join(f"({node.associated_fundamentals[k][j] // 2**adder_graph.num_fractional_bits})*x_{j}_int" for j in range(adder_graph.number_of_inputs))
                    lin_comb = " + ".join(f"(c_{i}_{j}_{k})*x_{j}_int" for j in range(adder_graph.number_of_inputs))
                    lin_comb = f"resize({lin_comb}, {adder_graph.output_word_sizes[node]-adder_graph.num_fractional_bits})"
                    if k < adder_graph.number_of_configs-1:
                        rhs = '"' + format(k, f"0{math.ceil(math.log2(adder_graph.number_of_configs))}b") + '",'
                    else:
                        rhs = "others;"
                    f.write(f"    {lin_comb} when {rhs}\n")
            else:
                #lin_comb = " + ".join(f"({node.associated_fundamentals[0][j] // 2**adder_graph.num_fractional_bits})*x_{j}_int" for j in range(adder_graph.number_of_inputs))
                lin_comb = " + ".join(f"(c_{i}_{j}_0)*x_{j}_int" for j in range(adder_graph.number_of_inputs))
                lin_comb = f"resize({lin_comb}, {adder_graph.output_word_sizes[node]-adder_graph.num_fractional_bits})"
                f.write(f"  y_{i}_ref <= {lin_comb};\n")
            if pipe or register_sandwich:
                f.write(f"  y_{i}_ref_0 <= y_{i}_ref;\n")
                f.write("  process(clk)\n")
                f.write("  begin\n")
                f.write("    if rising_edge(clk) then\n")
                for p in range(lat):
                    f.write(f"      y_{i}_ref_{p+1} <= y_{i}_ref_{p};\n")
                f.write("    end if;\n")
                f.write("  end process;\n")
            
        f.write("end architecture;\n")


def generate_vhdl_from_adder_graph_string(adder_graph_str, number_of_inputs, number_of_configs, input_word_size, is_pipelined, is_normalized, num_fractional_bits, output_file_path, num_tests, register_sandwich, use_opt_adder_node):
    # sanity checks
    if number_of_inputs <= 0:
        raise Exception("Invalid input: #Inputs must be a positive integer.")
    if number_of_configs <= 0:
        raise Exception("Invalid input: #Configs must be a positive integer.")
    if input_word_size <= 0:
        raise Exception("Invalid input: Input word size must be a positive integer.")
    if num_fractional_bits < 0:
        raise Exception("Invalid input: Number of fractional bits must be a non-negative integer.")
    if num_tests < 0:
        raise Exception("Invalid input: Number of tests must be a non-negative integer.")
    with open(output_file_path, 'w'):
        pass
    if not os.path.isfile(output_file_path):
        raise Exception(f"Invalid input: Could not create or access the file at {output_file_path}.")
    # go for it
    adder_graph = parse_adder_graph(adder_graph_str, number_of_inputs, number_of_configs, input_word_size, is_pipelined, is_normalized, num_fractional_bits)
    adder_graph.validate()
    create_vhdl(adder_graph, output_file_path, num_tests, register_sandwich, use_opt_adder_node)


def main():
    if len(sys.argv) != 12:
        raise Exception("Usage: python gen_vhdl.py "
        "<adder graph string> "
        "<number of inputs> "
        "<number of configs> "
        "<input word size> "
        "<is pipelined> "
        "<adder graph is normalized> "
        "<number of fractional bits in fundamentals> "
        "<output file path> "
        "<number of test cases in testbench> "
        "<register sandwich> "
        "<use optimized adder node code> ")
    accepted_bools_true = ("true", "1", "yes, my lord")
    accepted_bools_false = ("false", "0", "hell no!")
    accepted_bools = accepted_bools_true + accepted_bools_false
    try:
        adder_graph_str = sys.argv[1]
        number_of_inputs = int(sys.argv[2])
        number_of_configs = int(sys.argv[3])
        input_word_size = int(sys.argv[4])
        if sys.argv[5].lower() not in accepted_bools:
            raise IOError(f"Invalid parameter for <is pipelined>: {sys.argv[5]} -> must be one of the following: {accepted_bools}")
        is_pipelined = sys.argv[5].lower() in accepted_bools_true
        if sys.argv[6].lower() not in accepted_bools:
            raise IOError(f"Invalid parameter for <adder graph is normalized>: {sys.argv[6]} -> must be one of the following: {accepted_bools}")
        is_normalized = sys.argv[6].lower() in accepted_bools_true
        num_fractional_bits = int(sys.argv[7])
        output_file_path = sys.argv[8]
        num_tests = int(sys.argv[9])
        if sys.argv[10].lower() not in accepted_bools:
            raise IOError(f"Invalid parameter for <register sandwich>: {sys.argv[10]} -> must be one of the following: {accepted_bools}")
        register_sandwich = sys.argv[10].lower() in accepted_bools_true
        if sys.argv[11].lower() not in accepted_bools:
            raise IOError(f"Invalid parameter for <use optimized adder node code>: {sys.argv[11]} -> must be one of the following: {accepted_bools}")
        use_opt_adder_node = sys.argv[11].lower() in accepted_bools_true
    except ValueError:
        raise Exception("Invalid input: Input word size must be an integer.")
    # do it.
    generate_vhdl_from_adder_graph_string(adder_graph_str, number_of_inputs, number_of_configs, input_word_size, is_pipelined, is_normalized, num_fractional_bits, output_file_path, num_tests, register_sandwich, use_opt_adder_node)

if __name__ == "__main__":
    main()
