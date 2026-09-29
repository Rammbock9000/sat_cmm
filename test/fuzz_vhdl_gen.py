from fuzz import TestCase
from test_utility import call_program, call_arbitrary_program, external_solver, time_to_min_sec, chars_per_line, print_error_msg_to_file, print_success_msg_to_file, get_executable_solver_args, extract_last_adder_graph_from_stderr
import os
import sys
import time

# import vhdl code generator and pipelining script
sys.path.append(os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "benchmark", "scripts"))
from gen_vhdl import generate_vhdl_from_adder_graph_string
from pipeline_adder_graph import pipeline_adder_graph


def generate_test_case():
    probabilities = {
        # type
        "scm": 0.25,
        "mcm": 0.25,
        "sop": 0.25,
        "cmm": 0.25,
        # general parameters
        "use_output_shift": 1.0,
        "normalize_adder_graph": 0.5,
        "negative_coeffs": 0.5,
        "negative_intermediate_results_for_positive_coeffs": 0.5,
        "bit_level_opt": 0.0,
        "keep_output_order": 1.0,
        # pipelining
        "pipelining": 0.5,
        "output_eq": 1.0,
        "output_eq_across_configs": 1.0,
        "min_adder_depth": 0.0,
        # sign inversion of outputs
        "coefficient_sign_inversion_0": 0.33,
        "coefficient_sign_inversion_1": 0.33,
        "coefficient_sign_inversion_2": 0.34,
    }
    settings = {
        # word sizes
        "max_word_size_scm": 5,
        "max_word_size_mcm": 5,
        "max_word_size_sop": 3,
        "max_word_size_cmm": 3,
        # reconfigurability
        "max_num_configs": 3,
        "max_num_fractional_bits": 2,
        # num inputs/outputs
        "max_num_outputs_mcm": 3,
        "max_num_inputs_sop": 2,
        "max_num_inputs_cmm": 2,
        "max_num_outputs_cmm": 2,
    }
    tc = TestCase(probabilities=probabilities, settings=settings)
    return tc

def main():
    use_opt_add_node = True
    adder_node_vhd_path = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "vhdl", "adder_node.vhd")
    timer_start = time.time()
    solver = external_solver()
    num_tests = float("inf")
    timeout_in_sec = 60
    sim_num_tests = 12345
    register_sandwich = True
    if len(sys.argv) > 1:
        num_tests = int(sys.argv[1])
    err_log_file_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "fuzz_vhdl_errors.txt")
    with open(err_log_file_path, "w"):
        pass
    success_file_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "fuzz_vhdl_success.txt")
    with open(success_file_path, "w"):
        pass
    vhdl_base_path = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "vhdl")
    if not os.path.isdir(vhdl_base_path):
        os.mkdir(vhdl_base_path)
    vhdl_file_path = os.path.join(vhdl_base_path, "fuzz_vhdl.vhd")
    program_args = program_args = get_executable_solver_args("fuzz_vhdl", solver, timeout_in_sec=timeout_in_sec)
    num_failed_tests = 0
    i = -1
    while i+1 < num_tests:
        i += 1
        # generate random test case and get program arguments
        test_case = generate_test_case()
        test_name = test_case.get_test_name()
        additional_program_args = test_case.get_additional_program_args()
        # run program
        print(f" "*chars_per_line, end="\r")
        print(f"Run vhdl-fuzz test {i+1}/{num_tests}: {test_name} (run OatMeal)", end="\r")
        returncode, stdout, stderr = call_program(additional_program_args + program_args)
        if returncode != 0:
            # something already went wrong during optimization :( -> generate log
            num_failed_tests += 1
            print_error_msg_to_file(err_log_file_path, "VHDL-FUZZ OATMEAL", i+1, additional_program_args + program_args, test_name, returncode, stdout, stderr)
            continue
        # create vhdl code
        print(f" "*chars_per_line, end="\r")
        print(f"Run vhdl-fuzz test {i+1}/{num_tests}: {test_name} (gen VHDL)", end="\r")
        ag_str = extract_last_adder_graph_from_stderr(stderr)
        try:
            generate_vhdl_from_adder_graph_string(ag_str, test_case.num_inputs, test_case.num_configs, 16, test_case.pipelining, test_case.normalize_adder_graph, test_case.num_fractional_bits, vhdl_file_path, sim_num_tests, register_sandwich, use_opt_add_node)
        except Exception as e:
            # something went wrong during vhdl code generation :( -> generate log
            num_failed_tests += 1
            print_error_msg_to_file(err_log_file_path, "VHDL-FUZZ VHDLGEN", i+1, additional_program_args + program_args, test_name, returncode, ag_str, e)
            continue
        # run ghdl -> analysis
        print(f" "*chars_per_line, end="\r")
        print(f"Run vhdl-fuzz test {i+1}/{num_tests}: {test_name} (GHDL analysis)", end="\r")
        returncode, stdout, stderr = call_arbitrary_program("ghdl", ("-a", adder_node_vhd_path, vhdl_file_path, vhdl_file_path.replace(".vhd", "_tb.vhd")))
        if returncode != 0:
            # something went wrong during simulation :( -> generate log
            num_failed_tests += 1
            print_error_msg_to_file(err_log_file_path, "VHDL-FUZZ VHDLSIM (ANALYSIS)", i+1, additional_program_args + program_args, test_name, returncode, stdout + f"\n{ag_str}", stderr)
            continue
        # run ghdl -> elab-run
        period = 6 if test_case.pipelining else 2
        run_time_ns = period * sim_num_tests + 100  # a little buffer I guess
        print(f" "*chars_per_line, end="\r")
        print(f"Run vhdl-fuzz test {i+1}/{num_tests}: {test_name} (GHDL run)", end="\r")
        returncode, stdout, stderr = call_arbitrary_program("ghdl", ("elab-run", "test_tb", f"--stop-time={run_time_ns}ns"))
        if returncode != 0:
            # something went wrong during simulation :( -> generate log
            num_failed_tests += 1
            print_error_msg_to_file(err_log_file_path, "VHDL-FUZZ VHDLSIM (RUN)", i+1, additional_program_args + program_args, test_name, returncode, stdout + f"\n{ag_str}", stderr)
            continue
        # if original adder graph was not pipelined: 
        # generate pipelined adder graph and test its functionality
        if not test_case.pipelining:
            # pipeline it
            try:
                ag_str_pipe = pipeline_adder_graph(ag_str, test_case.num_fractional_bits)
            except Exception as e:
                # something went wrong during pipelining :( -> generate log
                num_failed_tests += 1
                print_error_msg_to_file(err_log_file_path, "VHDL-FUZZ PIPELINE", i+1, additional_program_args + program_args, test_name, returncode, ag_str, e)
                continue
            # generate vhdl code of pipelined graph
            try:
                generate_vhdl_from_adder_graph_string(ag_str_pipe, test_case.num_inputs, test_case.num_configs, 16, True, test_case.normalize_adder_graph, test_case.num_fractional_bits, vhdl_file_path, sim_num_tests, register_sandwich, use_opt_add_node)
            except Exception as e:
                # something went wrong during vhdl code generation for pipelined graph :( -> generate log
                num_failed_tests += 1
                print_error_msg_to_file(err_log_file_path, "VHDL-FUZZ VHDLGEN-PIPE", i+1, additional_program_args + program_args, test_name, returncode, f"original: {ag_str}\npipelined: {ag_str_pipe}", e)
                continue
            # run ghdl -> analysis
            print(f" "*chars_per_line, end="\r")
            print(f"Run vhdl-fuzz test {i+1}/{num_tests}: {test_name} (pipe GHDL analysis)", end="\r")
            returncode, stdout, stderr = call_arbitrary_program("ghdl", ("-a", adder_node_vhd_path, vhdl_file_path, vhdl_file_path.replace(".vhd", "_tb.vhd")))
            if returncode != 0:
                # something went wrong during simulation of pipelined graph :( -> generate log
                num_failed_tests += 1
                print_error_msg_to_file(err_log_file_path, "VHDL-FUZZ VHDLSIM (PIPE-ANALYSIS)", i+1, additional_program_args + program_args, test_name, returncode, stdout + f"\noriginal: {ag_str}\npipelined: {ag_str_pipe}", stderr)
                continue
            # run ghdl -> elab-run
            period = 6
            run_time_ns = period * sim_num_tests + 100  # a little buffer I guess
            print(f" "*chars_per_line, end="\r")
            print(f"Run vhdl-fuzz test {i+1}/{num_tests}: {test_name} (pipe GHDL run)", end="\r")
            returncode, stdout, stderr = call_arbitrary_program("ghdl", ("elab-run", "test_tb", f"--stop-time={run_time_ns}ns"))
            if returncode != 0:
                # something went wrong during simulation of pipelined graph :( -> generate log
                num_failed_tests += 1
                print_error_msg_to_file(err_log_file_path, "VHDL-FUZZ VHDLSIM (PIPE-RUN)", i+1, additional_program_args + program_args, test_name, returncode, stdout + f"\noriginal: {ag_str}\npipelined: {ag_str_pipe}", stderr)
                continue
        # everything fine :) -> generate log
        print_success_msg_to_file(success_file_path, "VHDL-FUZZ", i+1, additional_program_args + program_args, test_name, f"{ag_str}\nsuccess :-)\n")
    timer_end = time.time()
    elapsed_time = timer_end - timer_start
    elapsed_time_min, elapsed_time_sec = time_to_min_sec(elapsed_time)
    if num_failed_tests == 0:
        print(f"\nAll tests passed 8-) ({num_tests} tests in {elapsed_time_min}:{elapsed_time_sec} min)")
    else:
        print(f"\n{num_failed_tests}/{num_tests} tests failed :-(")

        
if __name__ == '__main__':
    main()
