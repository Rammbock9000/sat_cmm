from test_utility import test_wrapper, external_solver, get_executable_solver_args


def test_scm_1():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_scm", solver)
    failed = test_wrapper(test_name="SCM(11)",
                 program_args=["11", *program_args], 
                 expected_high_level_costs=2, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(43)",
                 program_args=["43", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(683)",
                 program_args=["683", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_scm_2():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_scm", solver) + ["allow_negative_coefficients=1", "minimize_full_adders=1"]
    failed = test_wrapper(test_name="SCM(11) low-level opt.",
                 program_args=["11", *program_args], 
                 expected_high_level_costs=2, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(43) low-level opt.",
                 program_args=["43", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(683) low-level opt.",
                 program_args=["683", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_scm_3():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_scm", solver) + ["pipelining=1"]
    failed = test_wrapper(test_name="SCM(11) pipelining",
                 program_args=["11", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(43) pipelining",
                 program_args=["43", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(683) pipelining",
                 program_args=["683", *program_args], 
                 expected_high_level_costs=5, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_scm_4():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_scm", solver) + ["pipelining=1", "allow_negative_coefficients=1", "minimize_full_adders=1"]
    failed = test_wrapper(test_name="SCM(11) pipelining and low-level opt.",
                 program_args=["11", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(43) pipelining and low-level opt.",
                 program_args=["43", *program_args], 
                 expected_high_level_costs=3, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(683) pipelining and low-level opt.",
                 program_args=["683", *program_args], 
                 expected_high_level_costs=5, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_scm_5():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_scm", solver)
    failed = test_wrapper(test_name="SCM(39757) without output shift",
                 program_args=["39757", "allow_post_adder_right_shift=0", *program_args], 
                 expected_high_level_costs=5, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SCM(39757) with output shift",
                 program_args=["39757", "allow_post_adder_right_shift=1", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True, 
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests

def all_tests():
    failed_tests = []
    failed_tests += test_scm_1()
    failed_tests += test_scm_2()
    failed_tests += test_scm_3()
    failed_tests += test_scm_4()
    failed_tests += test_scm_5()
    return failed_tests


if __name__ == '__main__':
    failed_tests = all_tests()
    if failed_tests:
        print("Some tests failed:")
        for test in failed_tests:
            print(f" - {test}")
    else:
        print("All tests passed!")
