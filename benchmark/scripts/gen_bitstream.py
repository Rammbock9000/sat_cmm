import os
import shutil


TARGET_MAP = {
  'kintex7': {
     'part': "xc7k70tfbv484-3",
  },
  'zynq7000': {
     'part': "xc7z020clg400-1",
  },
  'virtex7': {
     'part': "xc7v2000t-2gflg1925",
  },
  'ultrascale': {
     'part': "xcvu190-flga2577-2-e",
  },
  'ultrascale+': {
     'part': "xczu3eg-sfvc784-1-e",
  },
}


def generate_bitstream(
        work_dir,
        project_name,
        all_file_paths,
        only_do_implementation,  # if true, only do synthesis+implementation; if false, also generate bit stream
        target,
        clk_name,
        frequency_mhz,
        toplevel_entityname,
        jobs,
        bitstream_dir=None,
        pin_mapping=None,
):
    if pin_mapping is None:
        pin_mapping = {}
    tmp = TARGET_MAP.get(target.lower(), None)
    if not tmp:
        raise Exception(
            "Target '{}' not supported, choose one of" \
            " these: {}".format(target, list(TARGET_MAP.keys()))
        )
    part = tmp['part']
    project_dir = os.path.join(work_dir, project_name)
    if os.path.isdir(project_dir):
        print(f"Skipping {project_name} (already exists)")
        return

    # let's go
    print(f"Start synthesis for {project_dir}")
    os.mkdir(project_dir)

    # copy files into project directory and set up file paths for synthesis
    filename_abs_array = []
    for file_path in all_file_paths:
        file_name = os.path.basename(file_path).replace(":", "_C_")
        new_filepath = os.path.join(project_dir, file_name)
        os.system(f"cp {file_path} {new_filepath}")
        filename_abs_array.append(new_filepath)

    # create xdc file with clock frequency and port mappings in work directory
    xdc_file_name = "constr.xdc"
    with open(os.path.join(project_dir, xdc_file_name), "w") as f:
        period = 1000.0 / frequency_mhz
        f.write(f"create_clock -period {period} [get_ports {clk_name}]\n")
        for port_name, pin_name in pin_mapping.items():
            f.write(f"set_property -dict {{PACKAGE_PIN {pin_name} IOSTANDARD LVCMOS33}} [get_ports {port_name}]\n")

    # create tcl script
    tcl_script_name = os.path.join(project_dir, f"{project_name}.tcl")
    with open(tcl_script_name, "w") as f:
        # create project
        f.write(f"create_project {project_name} -part {part}\n")
        # add files
        for filename_abs in filename_abs_array:
            f.write("add_files -norecurse " + filename_abs + "\n")
        # add xdc file and update compile order
        f.write("read_xdc " + xdc_file_name + "\n")
        f.write("update_compile_order -fileset sources_1\n")
        f.write("update_compile_order -fileset sim_1\n")
        # set toplevel "manually" so vivado doesn't have to figure it out by itself
        f.write(f"set_property top {toplevel_entityname} [current_fileset]\n")
        f.write(f"update_compile_order -fileset sources_1\n")
        # run synthesis and implementation (and optionally bitstream generation)
        if only_do_implementation:
            f.write(f"launch_runs impl_1 -jobs {jobs}\n")  # WHAT TO PUT HERE?
        else:
            f.write(f"launch_runs impl_1 -to_step write_bitstream -jobs {jobs}\n")
        f.write("wait_on_run impl_1\n")
        f.write("open_run impl_1 -name impl_1\n")

    # go into project dir and start vivado
    os.chdir(project_dir)
    vivado_log_file = os.path.join(project_dir, "vivado_log.txt")
    vivado_command = f"vivado -mode batch -source {tcl_script_name} > {vivado_log_file}"
    os.system(vivado_command)
    # copy bitstream if necessary
    implementation_file_source_directory = os.path.join(project_dir, project_name + ".runs", "impl_1")
    bitstream_file_name = os.path.join(implementation_file_source_directory, project_name + ".bit")
    if (not only_do_implementation) and os.path.isfile(bitstream_file_name) and bitstream_dir is not None and os.path.isdir(bitstream_dir):
        shutil.copy(bitstream_file_name, bitstream_dir)
    # done 8-)
