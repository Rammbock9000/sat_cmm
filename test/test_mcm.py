from test_utility import test_wrapper, external_solver, get_executable_solver_args


def test_mcm_1():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_mcm", solver)
    failed = test_wrapper(test_name="MCM(11, 43, 683)",
                 program_args=["11;43;683", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="MCM(11, 43, 683) low-level opt.",
                 program_args=["11;43;683", "allow_negative_coefficients=1", "minimize_full_adders=1", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="MCM(11, 43, 683) pipelining",
                 program_args=["11;43;683", "pipelining=1", "equalize_output_stages=1", *program_args], 
                 expected_high_level_costs=7, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="MCM(11, 43, 683) pipelining and low-level opt.",
                 program_args=["11;43;683", "allow_negative_coefficients=1", "minimize_full_adders=1", "pipelining=1", "equalize_output_stages=1", *program_args], 
                 expected_high_level_costs=7, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_mcm_2():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_mcm", solver) + ["allow_post_adder_right_shift=1"]
    failed = test_wrapper(test_name="MCM(11, 43, 683) with output shift",
                 program_args=["11;43;683", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="MCM(11, 43, 683) low-level opt. with output shift",
                 program_args=["11;43;683", "allow_negative_coefficients=1", "minimize_full_adders=1", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="MCM(11, 43, 683) pipelining with output shift",
                 program_args=["11;43;683", "pipelining=1", "equalize_output_stages=1", *program_args], 
                 expected_high_level_costs=7, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="MCM(11, 43, 683) pipelining and low-level opt. with output shift",
                 program_args=["11;43;683", "allow_negative_coefficients=1", "minimize_full_adders=1", "pipelining=1", "equalize_output_stages=1", *program_args], 
                 expected_high_level_costs=7, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests

def test_mcm_3():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_mcm", solver)
    failed = test_wrapper(test_name="MCM(7, 19, 31)",
                 program_args=["7;19;31", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    program_args = get_executable_solver_args("test_mcm", solver) + ["allow_post_adder_right_shift=1"]
    failed = test_wrapper(test_name="MCM(7, 19, 31)",
                 program_args=["7;19;31", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests

def all_tests():
    failed_tests = []
    failed_tests += test_mcm_1()
    failed_tests += test_mcm_2()
    failed_tests += test_mcm_3()
    return failed_tests


if __name__ == '__main__':
    failed_tests = all_tests()
    if failed_tests:
        print("Some tests failed:")
        for test in failed_tests:
            print(f" - {test}")
    else:
        print("All tests passed!")
