from os.path import join, realpath, dirname, isdir, isfile
from os import mkdir
from sys import argv
from time import sleep

from go_reconf import WorkerThread, get_worker_id, binary_path


def load_coeffs(inputs_path):
    coeffs = []
    with open(inputs_path, "r") as f:
        for line in f:
            line = line.rstrip("\n\r ")
            if not line:
                continue
            coeffs.append(line)
    return coeffs


def get_ag_from_file(result_filepath):
    if not isfile(result_filepath):
        return None
    ag = ""
    with open(result_filepath, "r") as f:
        for line in f:
            line = line.rstrip("\n\r ")
            if "Adder graph: " not in line:
                continue
            ag = line.replace("Adder graph: ", "")
    return ag


def main():
    if len(argv) < 2:
        raise Exception(f"Use pipelining or not? Call script like this: 'python3 go_add_increase.py <1/0>'")
    pipe = int(argv[1])
    num_threads = 75
    worker_threads = [None for _ in range(num_threads)]
    timeout_sec = 3600 * 24 * 3 # 3 days
    overall_timeout_sec = 3600 * 24 * 14 # 2 weeks: should never be exceeded
    solver = "kissat"
    num_configs = 3
    num_outputs = 5
    word_size = 10
    bench_name = f"rnd_rpmcm_w{word_size}_o{num_outputs}_c{num_configs}"
    inputs_path = join(dirname(dirname(realpath(__file__))), "inputs", "reconf", bench_name + ".csv")
    coeffs = load_coeffs(inputs_path)
    bench_base_dir = join(dirname(dirname(realpath(__file__))), "results")
    total_num_experiments = 0
    for coeff in coeffs:
        program_arguments = [
            "allow_negative_coefficients=1", 
            "allow_coefficient_sign_inversion=1", 
            f"pipelining={pipe}", 
            f"normalize_adder_graph=1", 
            "allow_post_adder_right_shift=1", 
            f"solver_name={solver}", 
            f"timeout={timeout_sec}"
        ]
        if pipe:
            program_arguments += ["equalize_output_stages_across_configs=1"]
        result_filename = coeff.replace("-", "m").replace("|", "_AND_").replace(";", "_") + ".txt"
        oat_result_filepath = join(bench_base_dir, f"reconf_p{pipe}_n1_f0", bench_name, result_filename)
        pag_result_filepath = join(bench_base_dir, f"pagsuite", bench_name, result_filename)
        ag_oat = get_ag_from_file(oat_result_filepath)
        ag_pag = get_ag_from_file(pag_result_filepath)
        if ag_oat is None or ag_oat == "" or ag_pag is None or ag_pag == "":
            print(f"OatMeal or Pagsuite results missing for {coeff} and pipe={pipe}")
            continue
        if pipe:
            num_nodes_oat = ag_oat.count("'A'") + ag_oat.count("'R'")
            num_nodes_pag = ag_pag.count("'A'") + ag_pag.count("'R'")
        else:
            num_nodes_oat = ag_oat.count("'A'")
            num_nodes_pag = ag_pag.count("'A'")
        for num_add in range(num_nodes_oat+1, num_nodes_pag+1):
            total_num_experiments += 1
            worker_id =  get_worker_id(worker_threads)
            bench_dir = f"reconf_p{pipe}_n1_f0_a{num_add - num_nodes_oat}_g0"
            if not isdir(join(bench_base_dir, bench_dir)):
                mkdir(join(bench_base_dir, bench_dir))
            if not isdir(join(bench_base_dir, bench_dir, bench_name)):
                mkdir(join(bench_base_dir, bench_dir, bench_name))
            result_filepath = join(bench_base_dir, bench_dir, bench_name, result_filename)
            with open(result_filepath, "w"):
                pass
            program_arguments_final = program_arguments + [f"min_num_adders={num_add}", f"max_num_adders={num_add}"]
            worker_threads[worker_id] = WorkerThread(
                worker_id,
                coeff,
                program_arguments=program_arguments_final,
                binary_path=binary_path,
                experiment=bench_name + f" with {num_add} adders",
                file_path=result_filepath,
                overall_timeout_sec=overall_timeout_sec
            )
            worker_threads[worker_id].start()
            sleep(0.1)


if __name__ == "__main__":
    main()
