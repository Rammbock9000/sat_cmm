from test_utility import test_wrapper, external_solver, get_executable_solver_args


def test_cmm_1():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_cmm", solver) + ["allow_negative_coefficients=1"]
    failed = test_wrapper(test_name="CMM(57-21,21+57)",
                 program_args=["57:-21;21:57", *program_args], 
                 expected_high_level_costs=6, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="CMM(57-21,21+57) pipelining",
                 program_args=["57:-21;21:57", "pipelining=1", "equalize_output_stages=1", *program_args], 
                 expected_high_level_costs=7, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_cmm_2():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_cmm", solver) + ["allow_negative_coefficients=1"]
    failed = test_wrapper(test_name="CMM(21+39,11+5)",
                 program_args=["21:39;11:5", *program_args], 
                 expected_high_level_costs=5, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="CMM(7+24,9+3)",
                 program_args=["7:24;9:3", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="CMM(21+39,11+5) pipelining",
                 program_args=["21:39;11:5", "pipelining=1", "equalize_output_stages=1", *program_args], 
                 expected_high_level_costs=7, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="CMM(7+24,9+3) pipelining",
                 program_args=["7:24;9:3", "pipelining=1", "equalize_output_stages=1", *program_args], 
                 expected_high_level_costs=5, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def all_tests():
    failed_tests = []
    failed_tests += test_cmm_1()
    failed_tests += test_cmm_2()
    return failed_tests


if __name__ == '__main__':
    failed_tests = all_tests()
    if failed_tests:
        print("Some tests failed:")
        for test in failed_tests:
            print(f" - {test}")
    else:
        print("All tests passed!")