#
# ASIC synthesis of the paper's benchmarks with OpenLane2 (SkyWater sky130).
#
# HOW TO RUN:
#   1. cd into your openlane2 directory and start the nix-shell (see its HOW_TO_RUN.txt)
#   2. from within that shell, run:  python <path-to-sat_cmm>/benchmark/scripts/go_openlane.py [set]
#      where [set] is one of: sota_diffs | pagsuite_impr | all   (default: all)
#   The 'openlane' command must be on PATH -- which it is inside the nix-shell.
#
#   Requires the Verilog files produced by go_verilog.py (benchmark/verilog/...).
#
# The two benchmark sets correspond to the paper tables:
#   sota_diffs    -> "Resource consumption for the benchmarks where OatMeal-R finds an
#                     implementation with different high-level costs than the state-of-the-art"
#   pagsuite_impr -> "Resource consumption for the randomly generated RMCM experiments with
#                     adder count variations" (without pipelining = p0, with pipelining = p1)
#
import os
import sys
import csv
import json
import shutil
import subprocess
from os.path import join, dirname, abspath, isdir, isfile

# ------------------------------ settings ------------------------------
OPENLANE_CMD = "openlane"       # must be on PATH (run this script inside the nix-shell)
PDK = "sky130A"
CLOCK_PERIOD_NS = 50.0          # only used to build the config; barely affects synthesized cell area
# Stop after synthesis (+ the synthesis checkers). This reports the sky130 standard-cell area
# and deliberately avoids OpenROAD place & route: on the larger designs the timing-driven
# resizer + global router abort (SIGABRT) even at ~11% utilization, which is an OpenROAD
# robustness issue unrelated to our designs. Post-synthesis cell area is also the cleaner
# analog to the FPGA LUT counts. Set RUN_TO_STEP = None to attempt the full P&R flow instead.
RUN_TO_STEP = None # "Checker.NetlistAssignStatements"
TOP_MODULE = "const_mul"


def build_config(verilog_path):
    return {
        "DESIGN_NAME": TOP_MODULE,
        "VERILOG_FILES": [verilog_path],
        "CLOCK_PORT": "clk",
        "CLOCK_PERIOD": CLOCK_PERIOD_NS,
        "PDK": PDK,
    }


def get_metric(metrics, *names):
    for n in names:
        if n in metrics:
            return metrics[n]
    return None


def run_openlane(verilog_path, job_dir, label):
    """Run OpenLane2 for a single design. Returns path to final metrics.json or None."""
    if not isfile(verilog_path):
        print(f"Skip {label} (no Verilog file at {verilog_path})")
        return None
    run_dir = join(job_dir, "runs", "run")
    metrics_path = join(run_dir, "final", "metrics.json")
    if isfile(metrics_path):
        print(f"Skip {label} (already synthesized)")
        return metrics_path
    # remove a leftover incomplete run so OpenLane does not complain about an existing tag
    if isdir(run_dir):
        shutil.rmtree(run_dir)
    os.makedirs(job_dir, exist_ok=True)
    config_path = join(job_dir, "config.json")
    with open(config_path, "w") as f:
        json.dump(build_config(verilog_path), f, indent=2)
    cmd = [OPENLANE_CMD, config_path, "--run-tag", "run"]
    if RUN_TO_STEP:
        cmd += ["--to", RUN_TO_STEP]
    log_path = join(job_dir, "openlane.log")
    print(f"Run  {label} ...")
    with open(log_path, "w") as log:
        returncode = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT).returncode
    if returncode != 0:
        print(f"  OpenLane FAILED (return code {returncode}); see {log_path}")
        return None
    if not isfile(metrics_path):
        print(f"  OpenLane finished but no metrics found at {metrics_path}; see {log_path}")
        return None
    return metrics_path


def collect_row(meta, verilog_path, metrics_path):
    row = dict(meta)
    row["verilog"] = verilog_path
    if metrics_path is None or not isfile(metrics_path):
        row["status"] = "missing/failed"
        return row
    with open(metrics_path) as f:
        m = json.load(f)
    row["status"] = "ok"
    row["cell_area_um2"] = get_metric(m, "design__instance__area")
    row["cell_count"] = get_metric(m, "design__instance__count", "design__instance_count")
    row["die_area_um2"] = get_metric(m, "design__die__area")
    row["core_area_um2"] = get_metric(m, "design__core__area")
    row["setup_ws_ns"] = get_metric(m, "timing__setup__ws")
    row["hold_ws_ns"] = get_metric(m, "timing__hold__ws")
    row["power_total_w"] = get_metric(m, "power__total")
    row["metrics_json"] = metrics_path
    return row


# ------------------------------ job lists ------------------------------
def jobs_sota_diffs(verilog_base, openlane_base):
    bench_ids = [2, 6, 7, 9, 11, 12, 14, 15]
    benchmarks = {
        2: "rscm_tcas1", 6: "rscm_tcad", 7: "rmcm_tvlsi", 9: "cordic2",
        11: "cordic2", 12: "cordic2", 14: "ud_cordic", 15: "ud_cordic",
    }
    coeffs = {
        2: "362|392|473",
        6: "12305|20746",
        7: "10;69|15;92|27;111|47;124",
        9: "25:0;0:25|24:-7;7:24|20:-15;15:20",
        11: "512:0;0:512|512:-1;1:512|512:-2;2:512|512:-3;3:512|512:-4;4:512|512:-5;5:512|512:-6;6:512|512:-7;7:512|512:-8;8:512",
        12: "1024:0;0:1024|1024:-1;1:1024|1024:-2;2:1024|1024:-3;3:1024|1024:-4;4:1024|1024:-5;5:1024|1024:-6;6:1024|1024:-7;7:1024|1024:-8;8:1024",
        14: "129:0;0:129|128:-16;16:128|125:-32;32:125",
        15: "32:0;0:32|32:-1;1:32|32:-2;2:32",
    }
    dir_names = ["reconf_p0_n1_f0", "ref_reconf_p0_f0", "ref_reconf_p0_f1", "ref_reconf_p0_f2"]
    jobs = []
    for dir_name in dir_names:
        for bench_id in bench_ids:
            coeff = coeffs[bench_id]
            benchmark = benchmarks[bench_id]
            coeff_txt = coeff.replace(";", "_").replace("|", "_AND_").replace("-", "m")
            verilog_path = join(verilog_base, dir_name, benchmark, coeff_txt + ".v")
            job_dir = join(openlane_base, "sota_diffs", f"bench_{bench_id}", dir_name)
            design = "reference" if "ref_" in dir_name else "OatMeal-R"
            meta = {"set": "sota_diffs", "idx": bench_id, "variant": dir_name, "design": design}
            label = f"sota_diffs idx{bench_id} {dir_name}"
            jobs.append((verilog_path, job_dir, label, meta))
    return jobs


def jobs_pagsuite_impr(verilog_base, openlane_base, inputs_dir):
    bench_name = "rnd_rpmcm_w10_o5_c3"
    max_additional_adders = 10
    coeffs_file = join(inputs_dir, bench_name + ".csv")
    coeffs = [l.strip("\n\r ") for l in open(coeffs_file) if l.strip("\n\r ")]
    jobs = []
    for p in (0, 1):   # p0 = without pipelining (Table 7), p1 = with pipelining (Table 8)
        dir_names = ([f"reconf_p{p}_n1_f0", "pagsuite" if p == 0 else "pagsuite_pipe"]
                     + [f"reconf_p{p}_n1_f0_a{a}_g0" for a in range(1, max_additional_adders + 1)])
        for dir_name in dir_names:
            for i, c in enumerate(coeffs):
                file_name = c.replace("-", "m").replace("|", "_AND_").replace(";", "_") + ".v"
                verilog_path = join(verilog_base, dir_name, bench_name, file_name)
                job_dir = join(openlane_base, "pagsuite_impr", f"p{p}", f"bench_{i}", dir_name)
                design = "PAGSuite" if dir_name.startswith("pagsuite") else "OatMeal-R"
                meta = {"set": "pagsuite_impr", "pipe": p, "bench": i, "variant": dir_name, "design": design}
                label = f"pagsuite_impr p{p} bench{i} {dir_name}"
                jobs.append((verilog_path, job_dir, label, meta))
    return jobs


def process(jobs, csv_path):
    fieldnames = ["set", "idx", "pipe", "bench", "variant", "design", "status",
                  "cell_area_um2", "cell_count", "die_area_um2", "core_area_um2",
                  "setup_ws_ns", "hold_ws_ns", "power_total_w", "verilog", "metrics_json"]
    os.makedirs(dirname(csv_path), exist_ok=True)
    rows = []
    for verilog_path, job_dir, label, meta in jobs:
        metrics_path = run_openlane(verilog_path, job_dir, label)
        rows.append(collect_row(meta, verilog_path, metrics_path))
        # write incrementally so partial progress is never lost
        with open(csv_path, "w", newline="") as f:
            w = csv.DictWriter(f, fieldnames=fieldnames, extrasaction="ignore")
            w.writeheader()
            w.writerows(rows)
    print(f"Wrote results to {csv_path}")


def main():
    which = sys.argv[1] if len(sys.argv) > 1 else "all"
    benchmark_dir = dirname(dirname(abspath(__file__)))          # .../benchmark
    verilog_base = join(benchmark_dir, "verilog")
    inputs_dir = join(benchmark_dir, "inputs", "reconf")
    openlane_base = join(benchmark_dir, "openlane")
    if not isdir(verilog_base):
        raise Exception(f"Verilog directory not found at {verilog_base}; run go_verilog.py first")
    if shutil.which(OPENLANE_CMD) is None:
        raise Exception(f"'{OPENLANE_CMD}' not found on PATH; start the OpenLane2 nix-shell first")

    if which in ("sota_diffs", "all"):
        process(jobs_sota_diffs(verilog_base, openlane_base),
                join(openlane_base, "sota_diffs", "results.csv"))
    if which in ("pagsuite_impr", "all"):
        process(jobs_pagsuite_impr(verilog_base, openlane_base, inputs_dir),
                join(openlane_base, "pagsuite_impr", "results.csv"))


if __name__ == "__main__":
    main()
