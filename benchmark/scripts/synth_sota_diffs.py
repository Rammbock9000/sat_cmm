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
    synth_base_dir = join(synth_base_dir, "sota_diffs")
    if not isdir(synth_base_dir):
        mkdir(synth_base_dir)
    bench_ids = [2, 6, 7, 9, 11, 12, 14, 15]
    benchmarks = {
        2: "rscm_tcas1",
        6: "rscm_tcad",
        7: "rmcm_tvlsi",
        9: "cordic2",
        11: "cordic2",
        12: "cordic2",
        14: "ud_cordic",
        15: "ud_cordic"
    }
    coeffs = {
        2: "362|392|473",
        6: "12305|20746",
        7: "10;69|15;92|27;111|47;124",
        9: "25:0;0:25|24:-7;7:24|20:-15;15:20",
        11: "512:0;0:512|512:-1;1:512|512:-2;2:512|512:-3;3:512|512:-4;4:512|512:-5;5:512|512:-6;6:512|512:-7;7:512|512:-8;8:512",
        12: "1024:0;0:1024|1024:-1;1:1024|1024:-2;2:1024|1024:-3;3:1024|1024:-4;4:1024|1024:-5;5:1024|1024:-6;6:1024|1024:-7;7:1024|1024:-8;8:1024",
        14: "129:0;0:129|128:-16;16:128|125:-32;32:125",
        15: "32:0;0:32|32:-1;1:32|32:-2;2:32"
    }
    dir_names = ["reconf_p0_n1_f0", "ref_reconf_p0_f0", "ref_reconf_p0_f1", "ref_reconf_p0_f2"]
    for dir_name in dir_names:
        for bench_id in bench_ids:
            coeff = coeffs[bench_id]
            benchmark = benchmarks[bench_id]
            coeff_txt = coeff.replace(";","_").replace("|","_AND_").replace("-","m")
            # vhdl file path
            vhdl_src_file_path = join(vhdl_base_dir, dir_name, benchmark, coeff_txt + ".vhd")
            # check if vhdl file exists
            if not isfile(vhdl_src_file_path):
                print(f"Skipping {dir_name}/{benchmark} (no VHDL file)")
                continue
            # create synth workdir if necessary
            synth_workdir = join(synth_base_dir, f"bench_{bench_id}")
            if not isdir(synth_workdir):
                mkdir(synth_workdir)
            # check if synthesis already done
            if isdir(join(synth_workdir, dir_name)):
                ref_or_oat_str = "Reference" if "ref_" in dir_name else "OatMeal-R"
                print(f"Skipping idx {bench_id}: {dir_name}/{benchmark}/{ref_or_oat_str} (already exists)")
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
