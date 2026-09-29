from gen_bitstream import generate_bitstream
from os.path import join, realpath, dirname, isdir, isfile, basename
from os import makedirs
from glob import glob
import re


def load_coeffs(inputs_path):
    with open(inputs_path, "r") as f:
        return [line.strip() for line in f if line.strip()]


def main():
    target_idx = 7
    bench_name = "rnd_rpmcm_w10_o5_c3"
    benchmark_base_dir = dirname(dirname(realpath(__file__)))                    # .../benchmark
    coeffs_file_path = join(benchmark_base_dir, "inputs", "reconf", bench_name + ".csv")
    coeff = load_coeffs(coeffs_file_path)[target_idx - 1]
    vhdl_file_name = coeff.replace("-", "m").replace("|", "_AND_").replace(";", "_") + ".vhd"

    vhdl_base_dir = join(benchmark_base_dir, "vhdl", "reconf_p1_n1_f0_muxsweep", f"idx{target_idx}")
    adder_node_vhd_path = join(dirname(benchmark_base_dir), "vhdl", "adder_node.vhd")
    # project_name = variant dir (nodes<X>_maxmux<m>) and work_dir = this idx dir, so the utilization
    # report ends up at synth/.../idx<idx>/nodes<X>_maxmux<m>/nodes<X>_maxmux<m>.runs/impl_1/... ,
    # which is exactly where parse_mux_sweep.py reads the flip-flop count from.
    synth_base_dir = join(benchmark_base_dir, "synth", "reconf_p1_n1_f0_muxsweep", f"idx{target_idx}")

    if not isdir(vhdl_base_dir):
        raise Exception(f"muxsweep VHDL directory not found at {vhdl_base_dir}")
    if not isdir(synth_base_dir):
        makedirs(synth_base_dir)

    for variant_dir in sorted(glob(join(vhdl_base_dir, "nodes*_maxmux*"))):
        proj_name = basename(variant_dir)                    # e.g. nodes10_maxmux5
        if not re.match(r"nodes\d+_maxmux\d+$", proj_name):
            continue
        vhdl_src_file_path = join(variant_dir, bench_name, vhdl_file_name)
        if not isfile(vhdl_src_file_path):
            print(f"Skipping {proj_name} (no VHDL file)")
            continue
        # skip if this project was already synthesized
        if isdir(join(synth_base_dir, proj_name)):
            print(f"Skipping {proj_name} (already synthesized)")
            continue
        print(f"Synthesize {proj_name} ...")
        generate_bitstream(
            work_dir=synth_base_dir,
            project_name=proj_name,
            all_file_paths=[adder_node_vhd_path, vhdl_src_file_path],
            only_do_implementation=True,
            target="ultrascale+",
            clk_name="clk",
            frequency_mhz=200,
            toplevel_entityname="const_mul",
            jobs=1,
        )


if __name__ == "__main__":
    main()
