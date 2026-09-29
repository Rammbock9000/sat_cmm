from os.path import dirname, join, abspath, isdir, isfile
from os import mkdir, makedirs, remove
from adder_graph import AdderGraph, parse_adder_graph, get_number_of_configs, get_number_of_inputs, is_adder_graph_normalized
from pipeline_adder_graph import pipeline_adder_graph
from go_reconf import all_experiments
from gen_vhdl import generate_vhdl_from_adder_graph_string

MUXSWEEP_EXPERIMENTS = [join("idx7", f"nodes{n}_maxmux{m}", "rnd_rpmcm_w10_o5_c3") for n in range(10, 13+1) for m in range(1, 20+1)]

import sys
sys.path.append(join(dirname(dirname(dirname(abspath(__file__)))), "test"))
from test_utility import call_arbitrary_program


def read_inputs(inputs_file_path):
    if not isfile(inputs_file_path):
        return []
    with open(inputs_file_path, "r") as f:
        exp = []
        for line in f:
            line = line.rstrip("\n\r ")
            if len(line) == 0:
                continue
            exp.append(line)
    return exp


def get_filename(coeff_str):
    return coeff_str.replace("|", "_AND_").replace(";", "_").replace("-", "m") + ".txt"


def get_adder_graph_from_file(result_file_path):
    if not isfile(result_file_path):
        return None
    ag = None
    with open(result_file_path, "r") as f:
        for line in f:
            line = line.rstrip("\n\r ")
            if not "Adder graph: " in line:
                continue
            ag = line.replace("Adder graph: ", "")
    return ag


def cleanup_ghdl(vhdl_file_path):
    vhd_obj_path = vhdl_file_path.replace(".vhd", ".o")
    tb_obj_path = vhdl_file_path.replace(".vhd", "_tb.o")
    if isfile(vhd_obj_path):
        remove(vhd_obj_path)
    if isfile(tb_obj_path):
        remove(tb_obj_path)
    if isfile("adder_node.o"):
        remove("adder_node.o")


def get_num_fract_bits(bench_dir_name):
    for i in range(10):
        if f"_f{i}" in bench_dir_name:
            return i
    return 0


def main():
    if len(sys.argv) > 1:
        re_generate_all_vhdl_files = bool(int(sys.argv[1]))
    else:
        re_generate_all_vhdl_files = False
    inputs_base_dir = join(dirname(dirname(abspath(__file__))), "inputs", "reconf")
    results_base_dir = join(dirname(dirname(abspath(__file__))), "results")
    vhdl_base_dir = join(dirname(dirname(abspath(__file__))), "vhdl")
    adder_node_vhd_path = join(dirname(dirname(dirname(abspath(__file__)))), "vhdl", "adder_node.vhd")
    use_opt_adder_node = True
    input_word_size = 16
    num_tb_test_cases = 69420
    register_sandwich = True
    if not isdir(vhdl_base_dir):
        mkdir(vhdl_base_dir)
    bench_dir_names = [
        f"reconf_p{p}_n{n}_f{f}" for p in (0,1) for n in (0,1) for f in (0,1)
    ] + ["ref_reconf_p0_f0", "ref_reconf_p0_f1", "ref_reconf_p0_f2"] + [
        f"reconf_p0_n1_f0_a{a}_g{g}" for a in range(1, 5+1) for g in range(a+1)] + [
        f"reconf_p1_n1_f0_a{a}_g{g}" for a in range(1, 5+1) for g in range(a+1)
    ] + ["reconf_p0_n1_f0_long_timeout"] + ["pagsuite"] + ["reconf_p1_n1_f0_muxsweep"
    ] + [f"reconf_p0_n1_f{f}_{x}days" for f in (2,3,4) for x in (3,7,14,21)]
    for bench_dir_name in bench_dir_names:
        # retrieve settings
        is_pipelined = "reconf_p1" in bench_dir_name
        is_muxsweep = "_muxsweep" in bench_dir_name
        num_fract_bits = get_num_fract_bits(bench_dir_name)
        # benchmark results dir
        bench_dir_path = join(results_base_dir, bench_dir_name)
        bench_pipe_dir_path = join(results_base_dir, bench_dir_name + "_pipe")
        if not isdir(bench_dir_path):
            continue
        if not is_pipelined and not isdir(bench_pipe_dir_path):
            mkdir(bench_pipe_dir_path)
        # vhdl generation dir
        vhdl_dir_path = join(vhdl_base_dir, bench_dir_name)
        if not isdir(vhdl_dir_path):
            mkdir(vhdl_dir_path)
        # vhdl generation dir for posterior pipelining of non-pipelined circuits
        pipeline_vhdl_dir_path = vhdl_dir_path + "_pipe"
        if not is_pipelined and not isdir(pipeline_vhdl_dir_path):
            mkdir(pipeline_vhdl_dir_path)
        # iterate over all experiments
        for exp in MUXSWEEP_EXPERIMENTS if is_muxsweep else all_experiments:
            exp_dir_path = join(bench_dir_path, exp)
            exp_pipe_dir_path = join(bench_pipe_dir_path, exp)
            if not isdir(exp_dir_path):
                continue
            if not is_pipelined and not isdir(exp_pipe_dir_path):
                makedirs(exp_pipe_dir_path)
            exp_csv_path = join(inputs_base_dir, "rnd_rpmcm_w10_o5_c3" if is_muxsweep else exp) + ".csv"
            coeff_strs = read_inputs(exp_csv_path)
            # create vhdl dirs if necessary
            vhdl_exp_dir_path = join(vhdl_dir_path, exp)
            if not isdir(vhdl_exp_dir_path):
                makedirs(vhdl_exp_dir_path)
            pipe_vhdl_exp_dir_path = join(pipeline_vhdl_dir_path, exp)
            if not isdir(pipe_vhdl_exp_dir_path) and not is_pipelined:
                makedirs(pipe_vhdl_exp_dir_path)
            # iterate over all coeffs in experiment
            for coeff_str in coeff_strs:
                result_file_name = get_filename(coeff_str)
                result_file_path = join(exp_dir_path, result_file_name)
                if not isfile(result_file_path):
                    continue
                ag_str = get_adder_graph_from_file(result_file_path)
                if ag_str is None:
                    continue
                # create vhdl and sim via ghdl
                print(f"Process {result_file_path}...")
                num_inputs = get_number_of_inputs(ag_str)
                num_configs = get_number_of_configs(ag_str)
                is_normalized = is_adder_graph_normalized(ag_str)
                vhdl_file_name = result_file_name.replace(".txt", ".vhd")
                vhdl_file_path = join(vhdl_exp_dir_path, vhdl_file_name)
                if re_generate_all_vhdl_files or not isfile(vhdl_file_path):
                    generate_vhdl_from_adder_graph_string(ag_str, num_inputs, num_configs, input_word_size, is_pipelined, is_normalized, num_fract_bits, vhdl_file_path, num_tb_test_cases, register_sandwich, use_opt_adder_node)
                    returncode, _, _ = call_arbitrary_program("ghdl", ("-a", adder_node_vhd_path, vhdl_file_path, vhdl_file_path.replace(".vhd", "_tb.vhd")))
                    if returncode != 0:
                        remove(vhdl_file_path)
                        raise Exception(f"GHDL analysis failed for {bench_dir_name}/{exp}/{coeff_str}")
                    returncode, _, _ = call_arbitrary_program("ghdl", ("elab-run", "test_tb", f"--stop-time={num_tb_test_cases*2+1000}ns", "--vcd=test.vcd"))
                    if returncode != 0:
                        remove(vhdl_file_path)
                        raise Exception(f"GHDL testbench failed for {bench_dir_name}/{exp}/{coeff_str}")
                    cleanup_ghdl(vhdl_file_name)
                # create vhdl for pipelined adder graph and sim via ghdl and copy adder graph
                # skip that for pagsuite since it is already pipelined
                if not is_pipelined: # and "pagsuite" not in bench_dir_name:
                    print(f"Process pipe {result_file_path}...")
                    is_pagsuite = "pagsuite" in bench_dir_name
                    if not is_pagsuite:
                        # pagsuite adder graphs are already pipelined -> no need to pipeline them again
                        ag_str = pipeline_adder_graph(ag_str, num_fract_bits)
                    vhdl_file_path = join(pipe_vhdl_exp_dir_path, vhdl_file_name)
                    if re_generate_all_vhdl_files or not isfile(vhdl_file_path):
                        generate_vhdl_from_adder_graph_string(ag_str, num_inputs, num_configs, input_word_size, True, is_normalized, num_fract_bits, vhdl_file_path, num_tb_test_cases, register_sandwich, use_opt_adder_node)
                        returncode, _, _ = call_arbitrary_program("ghdl", ("-a", adder_node_vhd_path, vhdl_file_path, vhdl_file_path.replace(".vhd", "_tb.vhd")))
                        if returncode != 0:
                            remove(vhdl_file_path)
                            cleanup_ghdl(vhdl_file_name)
                            raise Exception(f"Pipe GHDL analysis failed for {bench_dir_name}/{exp}/{coeff_str}")
                        returncode, _, _ = call_arbitrary_program("ghdl", ("elab-run", "test_tb", f"--stop-time={num_tb_test_cases*2+1000}ns"))
                        cleanup_ghdl(vhdl_file_name)
                        if returncode != 0:
                            remove(vhdl_file_path)
                            raise Exception(f"Pipe GHDL testbench failed for {bench_dir_name}/{exp}/{coeff_str}")
                        ag_result_path = join(exp_pipe_dir_path, result_file_name)
                        with open(ag_result_path, "w") as f:
                            f.write("Finished solving after 0.000 seconds\n")
                            f.write(f"Adder graph: {ag_str}\n")


if __name__ == '__main__':
    main()
