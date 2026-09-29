from os.path import join, realpath, dirname, isdir, isfile
from os import mkdir, access, X_OK
from subprocess import run, PIPE, TimeoutExpired
from datetime import datetime
from threading import Thread
from time import sleep


sota_experiments = ["rscm_hal", "rscm_tcas1", "rscm_tcad", "rmcm_tvlsi", "cordic2", "ud_cordic", "lc_multiplierless", "rcmm_tcas1", "rpscm_fpl", "rpmcm_fpl"]
#rnd_experiments = [f"rnd_rpmcm_w{w}_o{o}_c{c}" for w in (8, 10, 12) for o in (3, 5, 10) for c in (2, 3, 4)]
rnd_experiments = [f"rnd_rpmcm_w{w}_o{o}_c{c}" for w in (8, 10) for o in (3, 5, 10) for c in (2, 3, 4)]
all_experiments = sota_experiments + rnd_experiments
binary_path = join(dirname(dirname(dirname(realpath(__file__)))), "satcmm")


class WorkerThread(Thread):
    def __init__(self, id, coeffs, program_arguments, binary_path, experiment, file_path, overall_timeout_sec):
        Thread.__init__(self)
        self.id = id
        self.coeffs = coeffs
        self.program_arguments = program_arguments
        self.binary_path = binary_path
        self.experiment = experiment
        self.file_path = file_path
        self.overall_timeout_sec = overall_timeout_sec

    def run(self):
        oatmeal(self.coeffs, self.program_arguments, self.binary_path, self.experiment, self.file_path, self.overall_timeout_sec)


def oatmeal(coeffs, program_arguments, binary_path, experiment, file_path, overall_timeout_sec):
    try:
        returncode, _, stderr = call_program([coeffs] + program_arguments, binary_path, overall_timeout_sec)
        if returncode != 0:
            raise Exception(f"Failed experiment {experiment}/{coeffs}: returncode={returncode}")
        with open(file_path, "w") as f:
            f.write(stderr)
    except TimeoutExpired:
        with open(file_path, "w") as f:
            f.write(f"Finished solving after {overall_timeout_sec} seconds\n")


def call_program(program_arguments, binary_path, timeout_sec=None):
    # find binary and check permissions
    if not isfile(binary_path):
        raise Exception(f"Failed to locate binary at location '{binary_path}'")
    if not access(binary_path, X_OK):
        raise Exception(f"Missing execute permissions for binary at location '{binary_path}'")
    # run it
    run_command = [binary_path, *program_arguments]
    if timeout_sec is None:
        result = run(run_command, stdout=PIPE, stderr=PIPE)
    else:
        result = run(run_command, stdout=PIPE, stderr=PIPE, timeout=timeout_sec)
    # return results
    return result.returncode, result.stdout.decode(), result.stderr.decode()


def get_worker_id(worker_threads) -> int:
    worker_id = -1
    while worker_id < 0:
        for potential_worker_id, worker in enumerate(worker_threads):
            # uninitialized worker
            if worker is None:
                worker_id = potential_worker_id
                break
            # worker still running
            if worker.is_alive():
                continue
            # worker finished
            worker.join()
            worker_id = potential_worker_id
        sleep(0.1)
    return worker_id


def main():
    # setup
    timeout_sec = 3600 * 2  # 2 hours timeout per adder count attempt
    overall_timeout_sec = 3600 * 24 * 2  # 2 days overall timeout
    solver = "kissat"
    inputs_path = join(dirname(dirname(realpath(__file__))), "inputs", "reconf")
    settings = [
        {"pipelining": 0, "normalize_adder_graph": 0, "fundamental_fractional_bits": 0},
        {"pipelining": 0, "normalize_adder_graph": 0, "fundamental_fractional_bits": 1},
        {"pipelining": 0, "normalize_adder_graph": 1, "fundamental_fractional_bits": 0},
        {"pipelining": 0, "normalize_adder_graph": 1, "fundamental_fractional_bits": 1},
        {"pipelining": 1, "normalize_adder_graph": 0, "fundamental_fractional_bits": 0},
        {"pipelining": 1, "normalize_adder_graph": 0, "fundamental_fractional_bits": 1},
        {"pipelining": 1, "normalize_adder_graph": 1, "fundamental_fractional_bits": 0},
        {"pipelining": 1, "normalize_adder_graph": 1, "fundamental_fractional_bits": 1},
    ]
    num_threads = 90
    worker_threads = [None for _ in range(num_threads)]
    # create files
    for s in settings:
        pipelining = s["pipelining"]
        normalize_adder_graph = s["normalize_adder_graph"]
        fundamental_fractional_bits = s["fundamental_fractional_bits"]
        dir_name = f"reconf_p{pipelining}_n{normalize_adder_graph}_f{fundamental_fractional_bits}"
        results_base_path = join(dirname(dirname(realpath(__file__))), "results", dir_name)
        if not isdir(results_base_path):
            mkdir(results_base_path)
        for experiment in all_experiments:
            csv_path = join(inputs_path, f"{experiment}.csv")
            results_path = join(results_base_path, experiment)
            if not isfile(csv_path):
                raise Exception(f"Failed to find file {experiment}.csv")
            if not isdir(results_path):
                mkdir(results_path)
            with open(csv_path, "r") as f:
                for line in f:
                    line = line.strip()
                    if not line:
                        continue
                    txt_path = join(results_path, line.replace(";", "_").replace("|", "_AND_").replace("-","m")+".txt")
                    if not isfile(txt_path):
                        with open(txt_path, "w"):
                            pass   # create empty result file
    # perform experiments
    for s in settings:
        pipelining = s["pipelining"]
        normalize_adder_graph = s["normalize_adder_graph"]
        fundamental_fractional_bits = s["fundamental_fractional_bits"]
        dir_name = f"reconf_p{pipelining}_n{normalize_adder_graph}_f{fundamental_fractional_bits}"
        results_base_path = join(dirname(dirname(realpath(__file__))), "results", dir_name)
        program_arguments = [
            "allow_negative_coefficients=1", 
            "allow_coefficient_sign_inversion=1", 
            f"pipelining={pipelining}", 
            f"normalize_adder_graph={normalize_adder_graph}", 
            f"fundamental_fractional_bits={fundamental_fractional_bits}", 
            "allow_post_adder_right_shift=1", 
            f"solver_name={solver}", 
            f"timeout={timeout_sec}"
        ]
        if pipelining:
            program_arguments += ["equalize_output_stages_across_configs=1"]
        for experiment in all_experiments:
            csv_path = join(inputs_path, f"{experiment}.csv")
            results_path = join(results_base_path, experiment)
            with open(csv_path, "r") as f:
                for line in f:
                    line = line.strip()
                    if not line:
                        continue
                    txt_path = join(results_path, line.replace(";", "_").replace("|", "_AND_").replace("-","m")+".txt")
                    if isfile(txt_path):
                        is_finished = False
                        with open(txt_path, "r") as f2:
                            for f2_line in f2:
                                if "Finished solving after" in f2_line:
                                    is_finished = True
                                    break
                        if is_finished:
                            continue  # experiment already performed -> no need to do it again
                    # find worker id to perform experiment
                    worker_id = get_worker_id(worker_threads)
                    # start worker
                    cur_time = datetime.now()
                    print(" "*125, end="\r")
                    print(f"RUN {experiment}/p{pipelining}_n{normalize_adder_graph}_f{fundamental_fractional_bits}/{line} at time {cur_time}")
                    worker_threads[worker_id] = WorkerThread(
                        id=worker_id, 
                        coeffs=line, 
                        program_arguments=program_arguments, 
                        binary_path=binary_path,
                        experiment=experiment,
                        file_path=txt_path,
                        overall_timeout_sec=overall_timeout_sec)
                    worker_threads[worker_id].start()
                    sleep(0.1)
    # now wait for all remaining threads to finish
    for worker in worker_threads:
        if worker is None:
            continue
        worker.join()

if __name__ == '__main__':
    main()
