from os.path import join, realpath, dirname, isdir, isfile, split
from os import mkdir, access, X_OK
from subprocess import run, PIPE
from datetime import datetime
from threading import Thread
from time import sleep, time

from go_reconf import call_program, rnd_experiments, get_worker_id
from adder_graph import remove_duplicate_nodes

pagsuite_dir = join(dirname(dirname(dirname(dirname(__file__)))), "pagsuite")

class WorkerThread(Thread):
    def __init__(self, id, coeffs, experiment, pag_fuse_timeout_sec, file_path):
        Thread.__init__(self)
        self.id = id
        self.coeffs = coeffs
        self.experiment = experiment
        self.pag_fuse_timeout_sec = pag_fuse_timeout_sec
        self.file_path = file_path

    def run(self):
        rpag_split_fuse(self.coeffs, self.experiment, self.file_path, self.pag_fuse_timeout_sec)

def get_rpag_args(coeffs, rpag_file_path):
    is_cmm = ":" in coeffs
    coeff_args = coeffs.split("|")
    coeff_args = list(set([x.replace(":", ",") for c in coeff_args for x in c.split(";")]))
    if is_cmm:
        args = ["--cmm"] + coeff_args
    else:
        args = coeff_args
    args += [f"--file_output={rpag_file_path}"]
    return args


def get_pagsplit_args(ag, coeffs):
    args = [ag]
    coeff_args = [c.split(";") for c in coeffs.split("|")]
    coeff_args = list(map(list, zip(*coeff_args)))
    coeff_args = " ".join(";".join(c) for c in coeff_args)
    args += [coeff_args]
    return args


def get_pagfuse_args(coeffs, pagfuse_filepath, pagsplit_stdout, pag_fuse_timeout_sec):
    graphs = []
    for line in pagsplit_stdout.split("\n"):
        if line.startswith("graph "):
            graph = line.partition(": ")[2]
            print("before:", graph)
            graph = remove_duplicate_nodes(graph)
            print("after:", graph)
            graphs.append(graph)
    with open(pagfuse_filepath, "w") as f:
        for graph in graphs:
            f.write(f"<graph>\n{graph}\n</graph>\n")
        coeff_args = [c.split(";") for c in coeffs.split("|")]
        coeff_args = list(map(list, zip(*coeff_args)))
        coeff_args = "\n</merge>\n<merge>\n".join(";".join(c) for c in coeff_args)
        f.write(f"<merge>\n{coeff_args}\n</merge>")
    return ["--if", pagfuse_filepath, "--costmodel", "l" , "--timeout", f"{pag_fuse_timeout_sec}s"]


def rpag_split_fuse(coeffs, experiment, file_path, pag_fuse_timeout_sec):
    t_total = 0.0
    # run rpag
    binary_path = join(pagsuite_dir, "bin", "rpag")
    rpag_file_path = file_path.replace(".txt", "_rpag.txt")
    args = get_rpag_args(coeffs, rpag_file_path)
    t_start = time()
    returncode, stdout, stderr = call_program(args, binary_path)
    t_total += time() - t_start
    if returncode != 0:
        err_msg = f"RPAG failed for experiment {experiment}/{coeffs}: returncode={returncode}\nstdout:\n{stdout}\nstderr:\n{stderr}"
        with open(file_path.replace(".txt", ".err"), "w") as f:
            f.write(err_msg)
        return
    # get adder graph from rpag solution file
    with open(rpag_file_path, "r") as f:
        ag = None
        lines = f.readlines()
        for line in lines:
            if not line.startswith("pipelined_adder_graph="):
                continue
            ag = line.rstrip("\n\r ").replace("pipelined_adder_graph=", "")
            break
        if ag is None and lines[0].startswith("{"):
            ag = lines[0].rstrip("\n\r ")
    # run pag split
    binary_path = join(pagsuite_dir, "bin", "pag_split")
    args = get_pagsplit_args(ag, coeffs)
    t_start = time()
    returncode, stdout, stderr = call_program(args, binary_path)
    t_total += time() - t_start
    if returncode != 0:
        err_msg = f"PAG Split failed for experiment {experiment}/{coeffs}: returncode={returncode}\nstdout:\n{stdout}\nstderr:\n{stderr}"
        with open(file_path.replace(".txt", ".err"), "w") as f:
            f.write(err_msg)
        return
    pagfuse_file_path = file_path.replace(".txt", "_pagfuse.txt")
    binary_path = join(pagsuite_dir, "bin", "pag_fusion")
    args = get_pagfuse_args(coeffs, pagfuse_file_path, stdout, pag_fuse_timeout_sec)
    t_start = time()
    returncode, stdout, stderr = call_program(args, binary_path)
    t_total += time() - t_start
    if returncode != 0:
        err_msg = f"PAG Fusion failed for experiment {experiment}/{coeffs}: returncode={returncode}\nstdout:\n{stdout}\nstderr:\n{stderr}"
        with open(file_path.replace(".txt", ".err"), "w") as f:
            f.write(err_msg)
        return
    # write results to file
    with open(file_path, "w") as f:
        f.write(f"Finished solving after {t_total:.4f} seconds\n")
        for line in stdout.split("\n"):
            if not line.startswith("solution graph: "):
                continue
            ag = line.replace("solution graph: ", "")
            f.write(f"Adder graph: {ag}\n")


def main():
    # setup
    inputs_path = join(dirname(dirname(realpath(__file__))), "inputs", "reconf")
    pag_fuse_timeout_sec = 60 * 60 * 24 * 1  # 1 day
    num_threads = 15
    worker_threads = [None for _ in range(num_threads)]
    # create empty result files
    dir_name = f"pagsuite"
    results_base_path = join(dirname(dirname(realpath(__file__))), "results", dir_name)
    if not isdir(results_base_path):
        mkdir(results_base_path)
    for experiment in ["test"] + rnd_experiments:
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
                # create new, empty placeholder file if file does not exist
                if not isfile(txt_path):
                    with open(txt_path, "w"):
                        pass   # create empty result file
    # let's go
    dir_name = f"pagsuite"
    results_base_path = join(dirname(dirname(realpath(__file__))), "results", dir_name)
    for experiment in ["test"] + rnd_experiments:
        csv_path = join(inputs_path, f"{experiment}.csv")
        results_path = join(results_base_path, experiment)
        with open(csv_path, "r") as f:
            for line in f:
                line = line.strip()
                if not line:
                    continue
                txt_name = line.replace(";", "_").replace("|", "_AND_").replace("-","m")+".txt"
                txt_path = join(results_path, txt_name)
                if isfile(txt_path):
                    is_finished = False
                    with open(txt_path, "r") as f2:
                        for f2_line in f2:
                            if "Finished solving after" in f2_line:
                                is_finished = True
                                break
                    if is_finished:
                        continue  # experiment already performed -> no need to do it again
                # get worker and perform experiment
                worker_id = get_worker_id(worker_threads)
                cur_time = datetime.now()
                print(" "*125, end="\r")
                print(f"RUN {experiment}/{line} at time {cur_time}")
                # create worker and let it run
                worker_threads[worker_id] = WorkerThread(
                    id=worker_id, 
                    coeffs=line, 
                    experiment=experiment,
                    pag_fuse_timeout_sec=pag_fuse_timeout_sec,
                    file_path=txt_path)
                worker_threads[worker_id].start()
                sleep(0.1)
    # now wait for all remaining threads to finish
    for worker in worker_threads:
        if worker is None:
            continue
        worker.join()


if __name__ == '__main__':
    main()
