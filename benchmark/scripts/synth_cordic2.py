from gen_bitstream import generate_bitstream
from os.path import isdir, isfile, join, dirname, abspath
from os import mkdir


def get_results(util_file_path, timing_file_path):
    num_luts = -1
    num_regs = -1
    timing_met = False
    if isfile(timing_file_path):
        with open(timing_file_path, "r") as f:
            for line in f:
                line = line.rstrip("\n\r ")
                if "All user specified timing constraints are met." in line:
                    timing_met = True
    if isfile(util_file_path):
        with open(util_file_path, "r") as f:
            for line in f:
                line = line.rstrip("\n\r ")
                if "CLB LUTs" in line and num_luts < 0:
                    parts = line.split("|")
                    num_luts = int(parts[2].strip())
                if "CLB Registers" in line and num_regs < 0:
                    parts = line.split("|")
                    num_regs = int(parts[2].strip())
    return num_luts, num_regs, timing_met


def main():
    benchmark_base_dir = dirname(dirname(abspath(__file__)))
    vhdl_base_dir = join(benchmark_base_dir, "vhdl")
    adder_node_vhd_path = join(dirname(dirname(dirname(abspath(__file__)))), "vhdl", "adder_node.vhd")
    synth_base_dir = join(benchmark_base_dir, "synth")
    if not isdir(synth_base_dir):
        mkdir(synth_base_dir)
    synth_base_dir = join(synth_base_dir, "cordic2_trivrot")
    if not isdir(synth_base_dir):
        mkdir(synth_base_dir)
    dir_names = [f"reconf_p0_n1_f0_a{a}_g{g}" for a in range(1, 2+1) for g in range(a+1)] + ["reconf_p0_n1_f0"] + ["ref_reconf_p0_f0"]
    for dir_name in dir_names:
        # vhdl file path
        vhdl_src_file_path = join(vhdl_base_dir, dir_name, "cordic2", "1:0_0:1_AND_0:m1_1:0_AND_m1:0_0:m1_AND_0:1_m1:0.vhd")
        # check if vhdl file exists
        if not isfile(vhdl_src_file_path):
            print(f"Skipping {dir_name} (no VHDL file)")
            continue
        # check if synthesis already done
        if isdir(join(synth_base_dir, dir_name)):
            print(f"Skipping {dir_name} (already exists)")
            num_luts, num_regs, timing_met = get_results(
                util_file_path=join(synth_base_dir, dir_name, dir_name + ".runs", "impl_1", "const_mul_utilization_placed.rpt"),
                timing_file_path=join(synth_base_dir, dir_name, dir_name + ".runs", "impl_1", "const_mul_timing_summary_routed.rpt"),
            )
            print(f"--> LUTs: {num_luts}, Registers: {num_regs}, Timing met: {timing_met}")
            continue
        # perform synthesis
        generate_bitstream(
            work_dir=join(synth_base_dir),
            project_name=dir_name,
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
