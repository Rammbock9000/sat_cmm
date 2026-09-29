import os
from os.path import join, dirname, abspath, isdir


def skip_experiment(exp_name):
    # random rpmcm experiments only count for coefficient word sizes 8 and 10
    if exp_name.startswith("rnd_rpmcm_w"):
        return not (exp_name.startswith("rnd_rpmcm_w8_") or exp_name.startswith("rnd_rpmcm_w10_"))
    return False


def main():
    results_dir = join(dirname(dirname(abspath(__file__))), "results")
    total_seconds = 0.0
    num_runs = 0
    for name in sorted(os.listdir(results_dir)):
        if not name.startswith("reconf_p"):
            continue
        if name.endswith("_pipe"):
            continue
        base = join(results_dir, name)
        for exp in sorted(os.listdir(base)):
            exp_dir = join(base, exp)
            if not isdir(exp_dir):
                continue
            if skip_experiment(exp):
                continue  # ignore random experiments with invalid word size
            for root, _, files in os.walk(exp_dir):
                for fn in files:
                    if not fn.endswith(".txt"):
                        continue  # wrong file type
                    with open(join(root, fn)) as f:
                        for line in f:
                            if line.startswith("Finished solving after "):
                                total_seconds += float(line.split()[3])
                                num_runs += 1

    years = total_seconds / (60 * 60 * 24 * 365)
    print(f"Parsed {num_runs} solving runs")
    print(f"Total SAT CPU time: {total_seconds:.1f} seconds = {total_seconds/3600:.1f} hours = {years:.2f} years")


if __name__ == '__main__':
    main()
