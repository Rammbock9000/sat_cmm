from test_utility import test_wrapper, external_solver, get_executable_solver_args


def test_sop_1():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_sop", solver)
    failed = test_wrapper(test_name="SOP(1, -2, 3, -4, 5)",
                 program_args=["1:-2:3:-4:5", "allow_negative_coefficients=1", *program_args], 
                 expected_high_level_costs=6, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SOP(11, 43, 683)",
                 program_args=["11:43:683", *program_args], 
                 expected_high_level_costs=6, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_sop_2():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_sop", solver) + ["allow_negative_coefficients=1", "minimize_full_adders=1", "allow_post_adder_right_shift=1"]
    failed = test_wrapper(test_name="SOP(1, -2, 3, -4) low-level opt.",
                 program_args=["1:-2:3:-4", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SOP(11, 43) low-level opt.",
                 program_args=["11:43", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_sop_3():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_sop", solver) + ["pipelining=1", "equalize_output_stages=1", "allow_negative_coefficients=1"]
    failed = test_wrapper(test_name="SOP(1, -2, 3, -4) pipelining",
                 program_args=["1:-2:3:-4", *program_args], 
                 expected_high_level_costs=6, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SOP(11, 43) pipelining",
                 program_args=["11:43", *program_args], 
                 expected_high_level_costs=5, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_sop_4():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_sop", solver) + ["pipelining=1", "equalize_output_stages=1", "allow_negative_coefficients=1", "minimize_full_adders=1", "allow_post_adder_right_shift=1"]
    failed = test_wrapper(test_name="SOP(1, -2, 3, -4) pipelining and low-level opt.",
                 program_args=["1:-2:3:-4", *program_args], 
                 expected_high_level_costs=6, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SOP(11, 43) pipelining and low-level opt.",
                 program_args=["11:43", *program_args], 
                 expected_high_level_costs=5, 
                 use_pipelining=True, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=True)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests


def test_sop_5():
    failed_tests = []
    solver = external_solver()
    program_args = get_executable_solver_args("test_sop", solver) + ["allow_post_adder_right_shift=1"]
    failed = test_wrapper(test_name="SOP(123, 321) without negative coefficients",
                 program_args=["123:321", *program_args], 
                 expected_high_level_costs=5, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    failed = test_wrapper(test_name="SOP(123, 321) with negative coefficients",
                 program_args=["123:321", "allow_negative_coefficients=1", *program_args], 
                 expected_high_level_costs=4, 
                 use_pipelining=False, 
                 high_level_costs_must_be_optimal=True,
                 low_level_costs_must_be_optimal=False)
    if failed is not None:
        failed_tests.append(failed)
    return failed_tests
    

def all_tests():
    failed_tests = []
    failed_tests += test_sop_1()
    failed_tests += test_sop_2()
    failed_tests += test_sop_3()
    failed_tests += test_sop_4()
    failed_tests += test_sop_5()
    return failed_tests


if __name__ == '__main__':
    failed_tests = all_tests()
    if failed_tests:
        print("Some tests failed:")
        for test in failed_tests:
            print(f" - {test}")
    else:
        print("All tests passed!")