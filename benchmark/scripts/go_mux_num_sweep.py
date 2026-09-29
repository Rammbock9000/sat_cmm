from os.path import join, realpath, dirname, isdir, isfile
from os import makedirs
from time import sleep

from go_reconf import WorkerThread, get_worker_id, binary_path
from go_add_increase import load_coeffs, get_ag_from_file


def count_ag(ag, pipe):
    num_add = ag.count("'A'")
    num_reg = ag.count("'R'")
    num_mux = ag.count("'M'")
    num_nodes = num_add + num_reg if pipe else num_add
    return num_nodes, num_mux


def main():
    pipe = 1                    # Table 9 is the pipelined comparison
    target_idx = 7              # 1-based index into the coefficient CSV
    num_threads = 80
    worker_threads = [None for _ in range(num_threads)]
    timeout_sec = 3600 * 24 * 3            # 3 days per attempt (as in go_add_increase.py)
    overall_timeout_sec = 3600 * 24 * 14   # 2 weeks: should never be exceeded
    solver = "kissat"
    num_configs = 3
    num_outputs = 5
    word_size = 10
    bench_name = f"rnd_rpmcm_w{word_size}_o{num_outputs}_c{num_configs}"
    inputs_path = join(dirname(dirname(realpath(__file__))), "inputs", "reconf", bench_name + ".csv")
    coeffs = load_coeffs(inputs_path)
    if target_idx < 1 or target_idx > len(coeffs):
        raise Exception(f"target_idx {target_idx} is out of range (1..{len(coeffs)})")
    coeff = coeffs[target_idx - 1]
    result_filename = coeff.replace("-", "m").replace("|", "_AND_").replace(";", "_") + ".txt"
    bench_base_dir = join(dirname(dirname(realpath(__file__))), "results")

    # reference node/MUX counts from the existing (unbounded) OatMeal-R and PagSuite results
    oat_ag = get_ag_from_file(join(bench_base_dir, f"reconf_p{pipe}_n1_f0", bench_name, result_filename))
    pag_ag = get_ag_from_file(join(bench_base_dir, "pagsuite", bench_name, result_filename))
    if oat_ag is None or oat_ag == "" or pag_ag is None or pag_ag == "":
        raise Exception(f"OatMeal-R or PagSuite result missing for idx {target_idx} ({result_filename})")
    num_nodes_oat, num_muxes_oat = count_ag(oat_ag, pipe)
    num_nodes_pag, _ = count_ag(pag_ag, pipe)

    # sweep ranges:
    #  - registered operations from OatMeal-R's minimum up to just beyond PagSuite (like before)
    #  - max_num_muxes from 1 up to OatMeal-R's own MUX count (the natural upper bound)
    node_counts = range(num_nodes_oat, num_nodes_pag + 2)
    max_muxes = range(1, num_muxes_oat + 1)
    print(f"idx {target_idx}: OatMeal-R nodes={num_nodes_oat} muxes={num_muxes_oat}, PagSuite nodes={num_nodes_pag}")
    print(f"sweeping registered operations {list(node_counts)} x max_num_muxes 1..{num_muxes_oat}")

    base_args = [
        "allow_negative_coefficients=1",
        "allow_coefficient_sign_inversion=1",
        f"pipelining={pipe}",
        "normalize_adder_graph=1",
        "allow_post_adder_right_shift=1",
        f"solver_name={solver}",
        f"timeout={timeout_sec}",
    ]
    if pipe:
        base_args += ["equalize_output_stages_across_configs=1"]

    sweep_base_dir = join(bench_base_dir, f"reconf_p{pipe}_n1_f0_muxsweep", f"idx{target_idx}")
    for num_nodes in node_counts:
        for max_mux in max_muxes:
            result_dir = join(sweep_base_dir, f"nodes{num_nodes}_maxmux{max_mux}", bench_name)
            if not isdir(result_dir):
                makedirs(result_dir)
            result_filepath = join(result_dir, result_filename)
            # skip runs that already finished
            if isfile(result_filepath):
                with open(result_filepath, "r") as f:
                    if any("Finished solving after" in line for line in f):
                        continue
            with open(result_filepath, "w"):
                pass
            program_arguments = base_args + [
                f"min_num_adders={num_nodes}",
                f"max_num_adders={num_nodes}",
                f"max_num_muxes={max_mux}",
            ]
            worker_id = get_worker_id(worker_threads)
            print(f"RUN idx{target_idx} nodes={num_nodes} max_num_muxes={max_mux}")
            worker_threads[worker_id] = WorkerThread(
                worker_id,
                coeff,
                program_arguments=program_arguments,
                binary_path=binary_path,
                experiment=bench_name + f" nodes={num_nodes} max_num_muxes={max_mux}",
                file_path=result_filepath,
                overall_timeout_sec=overall_timeout_sec,
            )
            worker_threads[worker_id].start()
            sleep(0.1)

    # wait for all remaining workers to finish
    for worker in worker_threads:
        if worker is not None:
            worker.join()


if __name__ == "__main__":
    main()
