import os
import csv
import glob
import re
from os.path import join, dirname, realpath, isfile, isdir, basename


def load_coeffs(path):
    return [line.strip() for line in open(path) if line.strip()]


def get_adder_graph(result_path):
    if not isfile(result_path):
        return None
    ag = None
    with open(result_path) as f:
        for line in f:
            if "Adder graph: " in line:
                ag = line.split("Adder graph: ", 1)[1].strip()
    return ag or None


def get_num_ffs(report_path):
    if not isfile(report_path):
        return None
    with open(report_path) as f:
        for line in f:
            if "CLB Registers" in line:
                try:
                    return int(line.split("|")[2].strip())
                except (IndexError, ValueError):
                    return None
    return None


def ff_report(synth_dir, num_nodes, max_mux):
    proj = f"nodes{num_nodes}_maxmux{max_mux}"
    return join(synth_dir, proj, f"{proj}.runs", "impl_1", "const_mul_utilization_placed.rpt")


def main():
    TARGET_IDX = 7
    BENCH = "rnd_rpmcm_w10_o5_c3"
    base = dirname(dirname(realpath(__file__)))
    coeff = load_coeffs(join(base, "inputs", "reconf", BENCH + ".csv"))[TARGET_IDX - 1]
    result_filename = coeff.replace("-", "m").replace("|", "_AND_").replace(";", "_") + ".txt"
    sweep_dir = join(base, "results", "reconf_p1_n1_f0_muxsweep", f"idx{TARGET_IDX}")
    synth_dir = join(base, "synth", "reconf_p1_n1_f0_muxsweep", f"idx{TARGET_IDX}")
    csv_out = join(base, "tex", f"mux_sweep_idx{TARGET_IDX}.csv")
    if not isdir(dirname(csv_out)):
        os.makedirs(dirname(csv_out))

    rows = []
    n_no_solution = 0
    n_no_ff = 0
    for d in sorted(glob.glob(join(sweep_dir, "nodes*_maxmux*"))):
        m = re.search(r"nodes(\d+)_maxmux(\d+)", basename(d))
        if not m:
            continue
        num_nodes, max_mux = int(m.group(1)), int(m.group(2))
        ag = get_adder_graph(join(d, BENCH, result_filename))
        if ag is None:
            n_no_solution += 1
            continue
        num_mux = ag.count("'M'")
        num_ffs = get_num_ffs(ff_report(synth_dir, num_nodes, max_mux))
        if num_ffs is None:
            n_no_ff += 1
            continue
        rows.append({"num_mux": num_mux, "num_ffs": num_ffs,
                     "num_nodes": num_nodes, "max_num_muxes": max_mux})

    rows.sort(key=lambda r: (r["num_mux"], r["num_ffs"]))
    with open(csv_out, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=["num_mux", "num_ffs", "num_nodes", "max_num_muxes"])
        w.writeheader()
        w.writerows(rows)

    print(f"Parsed {len(rows)} synthesized sweep solutions -> {csv_out}")
    print(f"  skipped {n_no_solution} without a SAT solution and {n_no_ff} without an FPGA FF report")
    if rows:
        best = min(rows, key=lambda r: (r["num_ffs"], r["num_mux"]))
        print("Best sweep solution (minimum #FFs):")
        print(f"  num_mux={best['num_mux']}  num_ffs={best['num_ffs']}  "
              f"(registered ops={best['num_nodes']}, max_num_muxes={best['max_num_muxes']})")
        print(f"  -> pgfplots placeholder coordinate: ({best['num_mux']}, {best['num_ffs']})")


if __name__ == "__main__":
    main()
