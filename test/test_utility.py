import os
import subprocess
import time

chars_per_line = 150


def get_executable_solver_args(file_name_prefix, solver, timeout_in_sec=None):
    files_basepath = os.path.dirname(os.path.abspath(__file__))
    log_file_path = os.path.join(files_basepath, f"{file_name_prefix}_solver.log")
    err_file_path = os.path.join(files_basepath, f"{file_name_prefix}_solver.err")
    cnf_file_path = os.path.join(files_basepath, f"{file_name_prefix}_solver.cnf")
    args = ["solver_name=executable", f"executable_binary={solver}", f"solver_log_filename={log_file_path}", f"solver_err_filename={err_file_path}", f"solver_cnf_filename={cnf_file_path}"]
    if timeout_in_sec is not None:
        args.append(f"post_cnf_params='--time={timeout_in_sec}'")
    return args


def print_error_msg_to_file(err_log_file_path, test_type, test_number, all_program_args, test_name, returncode, stdout, stderr):
    with open(err_log_file_path, "a") as f:
        f.write(f"ERROR IN {test_type} #{test_number} DETECTED!\n")
        f.write(f"PROGRAM ARGUMENTS:\n{all_program_args}\n")
        f.write(f"TEST NAME: {test_name}\n")
        f.write(f"returncode: {returncode}\n")
        f.write(f"STDOUT:\n{stdout}\n")
        f.write(f"STDERR:\n{stderr}\n")


def print_success_msg_to_file(err_log_file_path, test_type, test_number, all_program_args, test_name, message):
    with open(err_log_file_path, "a") as f:
        f.write(f"SUCCESSFULLY FINISHED TEST {test_type} #{test_number}!\n")
        f.write(f"PROGRAM ARGUMENTS:\n{all_program_args}\n")
        f.write(f"TEST NAME: {test_name}\n")
        f.write(f"{message}\n")


def time_to_min_sec(elapsed_time):
    elapsed_time = int(round(elapsed_time))
    elapsed_time_min = elapsed_time // 60
    elapsed_time_sec = elapsed_time % 60
    elapsed_time_min = f"{elapsed_time_min}"
    if elapsed_time_sec < 10:
        elapsed_time_sec = f"0{elapsed_time_sec}"
    else:
        elapsed_time_sec = f"{elapsed_time_sec}"
    return elapsed_time_min, elapsed_time_sec

# change path given in "external_solver.txt" to the SAT solver binary that you want to use
def external_solver():
    file_path = os.path.join(os.path.dirname(os.path.dirname(os.path.realpath(__file__))), "external_solver.txt")
    if not os.path.isfile(file_path):
        raise Exception(f"Failed to find text file with path to external SAT solver at location '{file_path}'")
    with open(file_path, "r") as f:
        lines = f.readlines()
        if len(lines) < 1:
            raise Exception(f"Please enter the path to an external SAT solver into the text file at location '{file_path}'")
        for line in lines:
            potential_solver = line.rstrip()
            if not potential_solver:
                continue  # skip empty lines
            if not os.path.isfile(potential_solver):
                raise Exception(f"Invalid path to SAT solver provided: '{potential_solver}'")
            if not os.access(potential_solver, os.X_OK):
                raise Exception(f"Missing execute permissions for SAT solver at location '{potential_solver}'")
            return potential_solver
    raise Exception(f"HUH?!")
        
def call_arbitrary_program(binary_path, program_arguments):
    run_command = [binary_path, *program_arguments]
    result = subprocess.run(run_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    # return results
    res_code = result.returncode
    try:
        res_stdout = result.stdout.decode()
    except UnicodeDecodeError:
        res_stdout = "UNKNOWN"
    try:
        res_stderr = result.stderr.decode()
    except UnicodeDecodeError:
        res_stderr = "UNKNOWN"
    return res_code, res_stdout, res_stderr

def call_program(program_arguments):
    # find binary and check permissions
    binary_path = os.path.join(os.path.dirname(os.path.dirname(os.path.realpath(__file__))), "satcmm")
    if not os.path.isfile(binary_path):
        raise Exception(f"Failed to locate OatMeal binary at location '{binary_path}'")
    if not os.access(binary_path, os.X_OK):
        raise Exception(f"Missing execute permissions for OatMeal binary at location '{binary_path}'")
    # run it
    return call_arbitrary_program(binary_path, program_arguments)

def extract_last_adder_graph_from_stderr(stderr):
    lines = stderr.split("\n")
    adder_graph_str = ""
    for line in lines:
        if "Adder graph: " not in line:
            continue
        adder_graph_str = line.replace("Adder graph: ", "")
    return adder_graph_str


def output_ok(returncode, stderr, expected_high_level_costs, use_pipelining, high_level_costs_must_be_optimal, low_level_costs_must_be_optimal):
    if returncode != 0:
        return False, f"Invalid return code '{returncode}' (expected 0)"
    lines = stderr.split("\n")
    if len(lines) < 4:
        return False, "Invalid number of lines (expected 4)"
    costs = None
    num_add_optimal = None
    num_fas_optimal = None
    for line in lines:
        if "Adder graph:" in line:
            if use_pipelining:
                costs = line.count("'A'") + line.count("'R'")
            else:
                costs = line.count("'A'")
        if "# Add optimal = " in line:
            num_add_optimal = "= 1" in line
        if "# FAs optimal = " in line:
            num_fas_optimal = "= 1" in line
    if costs is None:
        return False, "Adder graph missing"
    if num_add_optimal is None:
        return False, "Information about high-level costs optimality missing"
    if num_fas_optimal is None:
        return False, "Information about low-level costs optimality missing"
    if expected_high_level_costs is not None and expected_high_level_costs != costs:
        return False, f"Invalid high-level costs: expected {expected_high_level_costs} but got {costs}"
    if high_level_costs_must_be_optimal and not num_add_optimal:
        return False, "High-level costs should be optimal but are not"
    if low_level_costs_must_be_optimal and not num_fas_optimal:
        return False, "Low-level costs should be optimal but are not"
    return True, ""

def test_wrapper(test_name, program_args, expected_high_level_costs, use_pipelining, high_level_costs_must_be_optimal, low_level_costs_must_be_optimal, print_stdout=False):
    print(f"Run test '{test_name}'", end="\r")
    timer_start = time.time()
    returncode, stdout, stderr = call_program(program_args)
    timer_end = time.time()
    elapsed_time = timer_end - timer_start
    is_ok, reason = output_ok(returncode=returncode, 
                              stderr=stderr, 
                              expected_high_level_costs=expected_high_level_costs, 
                              use_pipelining=use_pipelining, 
                              high_level_costs_must_be_optimal=high_level_costs_must_be_optimal, 
                              low_level_costs_must_be_optimal=low_level_costs_must_be_optimal)
    if is_ok:
        print(f"Test '{test_name}' passed ({elapsed_time:.2f} sec)")
    else:
        print(f"Test '{test_name}' failed ({elapsed_time:.2f} sec): '{reason}'")
        print(f"stderr:\n{stderr}")
    if print_stdout:
        print(f"stdout:\n{stdout}")
    return None if is_ok else test_name