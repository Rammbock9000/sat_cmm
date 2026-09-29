from os.path import join, realpath, dirname, isdir, isfile
from os import mkdir, listdir
from gen_bitstream import generate_bitstream


def main():
    num_configs = 3
    num_outputs = 5
    word_size = 10
    max_additional_adders = 10
    bench_name = f"rnd_rpmcm_w{word_size}_o{num_outputs}_c{num_configs}"
    vhdl_base_dir = join(dirname(dirname(realpath(__file__))), "vhdl")
    synth_base_base_dir = join(dirname(dirname(realpath(__file__))), "synth")
    coeffs_file_path = join(dirname(dirname(realpath(__file__))), "inputs", "reconf", bench_name+".csv")
    adder_node_vhd_path = join(dirname(dirname(dirname(realpath(__file__)))), "vhdl", "adder_node.vhd")
    for p in (0, 1):
        coeffs = []
        with open(coeffs_file_path, "r") as f:
            for line in f:
                line = line.strip("\n\r ")
                coeffs.append(line)
        if not isdir(synth_base_base_dir):
            mkdir(synth_base_base_dir)
        synth_base_dir = join(synth_base_base_dir, "pagsuite_impr")
        if not isdir(synth_base_dir):
            mkdir(synth_base_dir)
        dir_names = [f"reconf_p{p}_n1_f0", "pagsuite" if p == 0 else "pagsuite_pipe"] + [f"reconf_p{p}_n1_f0_a{a}_g0" for a in range(1, max_additional_adders+1)]
        for dir_name in dir_names:
            basepath = join(vhdl_base_dir, dir_name, bench_name)
            if not isdir(basepath):
                continue
            for i, c in enumerate(coeffs):
                vhdl_file_name = c.replace("-","m").replace("|","_AND_").replace(";","_") + ".vhd"
                vhdl_src_file_path = join(vhdl_base_dir, dir_name, bench_name, vhdl_file_name)
                if not isfile(vhdl_src_file_path):
                    print(f"Skip synthesis for {dir_name}/{c} (VHDL file missing)")
                    print(f"--> checked location '{vhdl_src_file_path}'")
                    continue
                # synth vhdl file
                synth_workdir = join(synth_base_dir, f"bench_{i}")
                if not isdir(synth_workdir):
                    mkdir(synth_workdir)
                if isdir(join(synth_workdir, dir_name)):
                    # synthesis already completed/running
                    print(f"Synthesis for {dir_name}/{c} already completed!")
                    continue
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
