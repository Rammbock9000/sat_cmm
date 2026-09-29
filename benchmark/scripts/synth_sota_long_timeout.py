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
    synth_base_dir = join(synth_base_dir, "long_timeout")
    if not isdir(synth_base_dir):
        mkdir(synth_base_dir)
    benchmarks = ["ud_cordic", "rcmm_tcas1"]
    coeffs = {
        "ud_cordic": "296:0;0:296|260:-142;142:260|160:-249;249:160",
        "rcmm_tcas1": "8027:0;0:8027|7416:-3072;3072:7416|5676:-5676;5676:5676",
    }
    dir_names = ["reconf_p0_n1_f0_long_timeout", "reconf_p0_n1_f0", "ref_reconf_p0_f0", "ref_reconf_p0_f2"]
    for dir_name in dir_names:
        for benchmark in benchmarks:
            coeff = coeffs[benchmark]
            coeff_txt = coeff.replace(";","_").replace("|","_AND_").replace("-","m")
            # vhdl file path
            vhdl_src_file_path = join(vhdl_base_dir, dir_name, benchmark, coeff_txt + ".vhd")
            # check if vhdl file exists
            if not isfile(vhdl_src_file_path):
                print(f"Skipping {dir_name}/{benchmark} (no VHDL file)")
                continue
            # create synth workdir if necessary
            synth_workdir = join(synth_base_dir, benchmark)
            if not isdir(synth_workdir):
                mkdir(synth_workdir)
            # check if synthesis already done
            if isdir(join(synth_workdir, dir_name)):
                print(f"Skipping {dir_name}/{benchmark} (already exists)")
                num_luts, num_regs, timing_met = get_results(
                    util_file_path=join(synth_workdir, dir_name, dir_name + ".runs", "impl_1", "const_mul_utilization_placed.rpt"),
                    timing_file_path=join(synth_workdir, dir_name, dir_name + ".runs", "impl_1", "const_mul_timing_summary_routed.rpt"),
                )
                print(f"--> LUTs: {num_luts}, Registers: {num_regs}, Timing met: {timing_met}")
                continue
            # perform synthesis
            generate_bitstream(
                work_dir=synth_workdir,
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
