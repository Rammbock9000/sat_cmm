from test_utility import call_program, external_solver, time_to_min_sec, chars_per_line, print_error_msg_to_file, get_executable_solver_args
import os
import random
import sys
import time


class TestCase:
    def __init__(self, 
                 probabilities: dict,
                 settings: dict
                 ):
        # get user args
        self.probabilities = probabilities
        self.settings = settings
        # init members
        self.instance_type = None
        self.num_configs = None
        self.num_inputs = None
        self.num_outputs = None
        self.coeffs_str = None
        self.minimize_full_adders = None
        self.allow_post_adder_right_shift = None
        self.normalize_adder_graph = None
        self.allow_negative_coefficients = None
        self.min_adder_depth = None
        self.num_fractional_bits = None
        self.pipelining = None
        self.equalize_output_stages = None
        self.equalize_output_stages_across_configs = None
        self.allow_coefficient_sign_inversion = None
        self.keep_output_order = None
        # generate test case
        self.generate()
    
    def randint(self, a, b):
        if a == b:
            return a
        return random.randint(a, b)
    
    def generate(self):
        # type
        type_rnd = random.random()
        if type_rnd < self.probabilities["scm"]:
            self.instance_type = "SCM"
            self.num_inputs = 1
            self.num_outputs = 1
            coeff_word_size = self.randint(2, self.settings["max_word_size_scm"])
        elif type_rnd < self.probabilities["scm"] + self.probabilities["mcm"]:
            self.instance_type = "MCM"
            self.num_inputs = 1
            self.num_outputs = self.randint(2, self.settings["max_num_outputs_mcm"])
            coeff_word_size = self.randint(2, self.settings["max_word_size_mcm"])
        elif type_rnd < self.probabilities["scm"] + self.probabilities["mcm"] + self.probabilities["sop"]:
            self.instance_type = "SOP"
            self.num_inputs = self.randint(2, self.settings["max_num_inputs_sop"])
            self.num_outputs = 1
            coeff_word_size = self.randint(2, self.settings["max_word_size_sop"])
        else:
            self.instance_type = "CMM"
            self.num_inputs = self.randint(2, self.settings["max_num_inputs_cmm"])
            self.num_outputs = self.randint(2, self.settings["max_num_outputs_cmm"])
            coeff_word_size = self.randint(2, self.settings["max_word_size_cmm"])
        # reconfigurability
        self.num_configs = self.randint(1, self.settings["max_num_configs"])
        if self.num_configs > 1:
            self.instance_type = f"R{self.instance_type}"
            if random.random() < self.probabilities["keep_output_order"]:
                self.keep_output_order = 1
            else:
                self.keep_output_order = 0
        self.num_fractional_bits = self.randint(0, self.settings["max_num_fractional_bits"])
        # coeff range
        signed_coeffs = random.random() < self.probabilities["negative_coeffs"]
        if signed_coeffs:
            coeffs_min = -(2**(coeff_word_size-1))
            coeffs_max = -(coeffs_min+1)
        else:
            coeffs_min = 0
            coeffs_max = (2**coeff_word_size)-1
        # coeffs
        coeffs_valid = False
        while not coeffs_valid:
            # generate new random matrix until we have a matrix with at least one non-all-zero row in each configuration
            coeff_matrices = [[[self.randint(coeffs_min, coeffs_max) for _ in range(self.num_inputs)] for _ in range(self.num_outputs)] for _ in range(self.num_configs)]
            coeffs_valid = all([any([any([val != 0 for val in row]) for row in coeff_matrix]) for coeff_matrix in coeff_matrices])
        self.coeffs_str = "|".join([";".join([":".join([str(x) for x in row]) for row in coeff_matrix]) for coeff_matrix in coeff_matrices])
        # general parameters
        if signed_coeffs or random.random() < self.probabilities["negative_intermediate_results_for_positive_coeffs"]:
            self.allow_negative_coefficients = 1
        else:
            self.allow_negative_coefficients = 0
        if random.random() < self.probabilities["bit_level_opt"]:
            self.minimize_full_adders = 1
        else:
            self.minimize_full_adders = 0
        if random.random() < self.probabilities["use_output_shift"]:
            self.allow_post_adder_right_shift = 1
            if random.random() < self.probabilities["normalize_adder_graph"]:
                self.normalize_adder_graph = 1
            else:
                self.normalize_adder_graph = 0
        else:
            self.allow_post_adder_right_shift = 0
            self.normalize_adder_graph = 0
        # pipelining
        self.pipelining = 0
        self.equalize_output_stages = 0
        self.equalize_output_stages_across_configs = 0
        if random.random() < self.probabilities["pipelining"]:
            self.pipelining = 1
            if random.random() < self.probabilities["output_eq"]:
                self.equalize_output_stages = 1
                if self.num_configs > 1 and random.random() < self.probabilities["output_eq_across_configs"]:
                    self.equalize_output_stages_across_configs = 1
        if random.random() < self.probabilities["min_adder_depth"]:
            self.min_adder_depth = 1
        else:
            self.min_adder_depth = 0
        # output sign inversion
        sign_inv_rnd = random.random()
        if sign_inv_rnd < self.probabilities["coefficient_sign_inversion_0"]:
            self.allow_coefficient_sign_inversion = 0
        elif sign_inv_rnd < self.probabilities["coefficient_sign_inversion_0"] + self.probabilities["coefficient_sign_inversion_1"]:
            self.allow_coefficient_sign_inversion = 1
        else:
            self.allow_coefficient_sign_inversion = 2

    def get_test_name(self):
        return f"{self.instance_type}({self.coeffs_str})"
    
    def get_additional_program_args(self):
        return [
            self.coeffs_str,
            f"minimize_full_adders={self.minimize_full_adders}",
            f"allow_post_adder_right_shift={self.allow_post_adder_right_shift}",
            f"normalize_adder_graph={self.normalize_adder_graph}",
            f"allow_negative_coefficients={self.allow_negative_coefficients}",
            f"min_adder_depth={self.min_adder_depth}",
            f"pipelining={self.pipelining}",
            f"fundamental_fractional_bits={self.num_fractional_bits}",
            f"equalize_output_stages={self.equalize_output_stages}",
            f"equalize_output_stages_across_configs={self.equalize_output_stages_across_configs}",
            f"allow_coefficient_sign_inversion={self.allow_coefficient_sign_inversion}",
        ]

def generate_test_case():
    probabilities = {
        # type
        "scm": 0.25,
        "sop": 0.25,
        "mcm": 0.25,
        "cmm": 0.25,
        # general parameters
        "use_output_shift": 0.5,
        "normalize_adder_graph": 0.5,
        "negative_coeffs": 0.5,
        "negative_intermediate_results_for_positive_coeffs": 0.5,
        "bit_level_opt": 0.25,
        "keep_output_order": 0.0,
        # pipelining
        "pipelining": 0.5,
        "output_eq": 0.5,
        "min_adder_depth": 0.25,
        # sign inversion of outputs
        "coefficient_sign_inversion_0": 0.33,
        "coefficient_sign_inversion_1": 0.33,
        "coefficient_sign_inversion_2": 0.34,
    }
    settings = {
        # word sizes
        "max_word_size_scm": 10,
        "max_word_size_mcm": 7,
        "max_word_size_sop": 4,
        "max_word_size_cmm": 3,
        # reconfigurability
        "max_num_configs": 1,
        "max_num_fractional_bits": 0,
        # num inputs/outputs
        "max_num_outputs_mcm": 5,
        "max_num_inputs_sop": 4,
        "max_num_inputs_cmm": 3,
        "max_num_outputs_cmm": 3,
    }
    tc = TestCase(probabilities=probabilities, settings=settings)
    return tc


def main():
    timer_start = time.time()
    solver = external_solver()
    num_tests = 100
    if len(sys.argv) > 1:
        num_tests = int(sys.argv[1])
    err_log_file_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "fuzz_errors.txt")
    with open(err_log_file_path, "w"):
        pass
    program_args = get_executable_solver_args("fuzz", solver)
    num_failed_tests = 0
    for i in range(num_tests):
        # generate random test case and get program arguments
        test_case = generate_test_case()
        test_name = test_case.get_test_name()
        additional_program_args = test_case.get_additional_program_args()
        # run program
        print(f" "*chars_per_line, end="\r")
        print(f"Run fuzz test {i+1}/{num_tests}: {test_name}", end="\r")
        returncode, stdout, stderr = call_program(additional_program_args + program_args)
        if returncode == 0:
            continue
        # something went wrong :( -> generate log
        num_failed_tests += 1
        print_error_msg_to_file(err_log_file_path, "FUZZ TEST", i+1, additional_program_args + program_args, test_name, returncode, stdout, stderr)
    timer_end = time.time()
    elapsed_time = timer_end - timer_start
    elapsed_time_min, elapsed_time_sec = time_to_min_sec(elapsed_time)
    if num_failed_tests == 0:
        print(f"\nAll tests passed 8-) ({num_tests} tests in {elapsed_time_min}:{elapsed_time_sec} min)")
    else:
        print(f"\n{num_failed_tests}/{num_tests} tests failed :-(")

        
if __name__ == '__main__':
    main()
