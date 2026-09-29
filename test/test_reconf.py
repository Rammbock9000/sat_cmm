from test_utility import test_wrapper, external_solver, get_executable_solver_args


def test_reconf_1():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_reconf", solver)
    failed = test_wrapper(test_name="RSCM(11|43)",
                 program_args=["11|43", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    program_args = get_executable_solver_args("test_reconf", solver)
    failed = test_wrapper(test_name="RSCM(11|43|683)",
                 program_args=["11|43|683", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="RMCM(11;12|43;42)",
                 program_args=["11;12|43;42", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="RMCM(43;-122|35;47)",
                 program_args=["43;-122|35;47", "allow_negative_coefficients=1", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def all_tests():
    failed_tests = []
    failed_tests += test_reconf_1()
    return failed_tests


if __name__ == '__main__':
    failed_tests = all_tests()
    if failed_tests:
        print("Some tests failed:")
        for test in failed_tests:
            print(f" - {test}")
    else:
        print("All tests passed!")