import test_scm
import test_mcm
import test_sop
import test_cmm
import test_reconf
import time
from test_utility import time_to_min_sec

def main():
    # perform tests
    all_failed_tests = []
    timer_start = time.time()
    for test_module in (test_scm, test_mcm, test_sop, test_cmm, test_reconf):
        all_failed_tests += test_module.all_tests()
    timer_end = time.time()
    # compute elapsed time
    elapsed_time = timer_end - timer_start
    elapsed_time_min, elapsed_time_sec = time_to_min_sec(elapsed_time)
    # evaluate
    all_ok = len(all_failed_tests) == 0
    if all_ok:
        print(f"All tests passed :-) (total time: {elapsed_time_min}:{elapsed_time_sec} min)")
    else:
        print(f"At least one test failed :-( (total time: {elapsed_time_min}:{elapsed_time_sec} min)")
        for test in all_failed_tests:
            print(f" - {test}")


if __name__ == "__main__":
    main()
