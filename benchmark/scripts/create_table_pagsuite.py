import os
from create_table_sota import load_coeffs, load_results
from go_reconf import rnd_experiments


def create_table(pipelining, coeffs, results, result_names, ts, ws, cs, os, tex_file_path):
    cols_per_solver = 3
    with open(tex_file_path, "w") as f:
        f.write("\\centering\n")
        f.write("\\begin{tabular}{ccc" + "c"*len(results)*cols_per_solver + "}\n")
        f.write("\\toprule\n")
        f.write("&&")
        for result_name in result_names:
            f.write(f"&\\multicolumn{{{cols_per_solver}}}{{c}}{{{result_name}}}")
        f.write("\\\\\n")
        offset = 4
        for i in range(len(results)):
            f.write(f"\\cmidrule(lr){{{offset + cols_per_solver*i} - {(offset + cols_per_solver*i + cols_per_solver-1)}}}")
        f.write("\n")
        if pipelining:
            f.write("w&c&o" + "& \\cmark & \\#\\,Nodes & \\#\\,MUX2"*len(results) + "\\\\\n")
        else:
            f.write("w&c&o" + "& \\cmark & \\#\\,Add & \\#\\,MUX2"*len(results) + "\\\\\n")
        for w in ws:
            f.write("\\midrule\n")
            first_w = True
            for c in cs:
                if not first_w:
                    f.write(f"\\cmidrule(lr){{2-{3 + cols_per_solver * len(results)}}}\n")
                first_c = True
                for o in os:
                    if first_w:
                        first_w = False
                        w_str = "\\multirow{" + str(len(cs)*len(os)) + "}{*}{"+ str(w) +"}"
                    else:
                        w_str = ""
                    if first_c:
                        first_c = False
                        c_str = "\\multirow{" + str(len(os)) + "}{*}{"+ str(c) +"}"
                    else:
                        c_str = ""
                    res_str = f"{w_str} & {c_str} & {o}"
                    num_adds = []
                    num_muxs = []
                    num_solved = []
                    for i, r in enumerate(results):
                        mean_add = 0.0
                        mean_mux = 0.0
                        num = 0
                        bench_name = f"rnd_rpmcm_w{w}_o{o}_c{c}"
                        for coeff in coeffs[ts][bench_name]:
                            if r[ts][bench_name][coeff] is None:
                                continue
                            try:
                                if pipelining:
                                    mean_add += float(r[ts][bench_name][coeff]["#Nodes"])
                                else:
                                    mean_add += float(r[ts][bench_name][coeff]["#Add"])
                                mean_mux += float(r[ts][bench_name][coeff]["#MUX2"])
                                num += 1
                            except:
                                continue
                                raise Exception(f"Failed to get Node/MUX info for benchmark {bench_name}/{coeff} and solver {result_names[i]}")
                        if num == 0:
                            mean_add = "--"
                            mean_mux = "--"
                        else:
                            mean_add /= num
                            mean_mux /= num
                            mean_add = f"{mean_add:.1f}"
                            mean_mux = f"{mean_mux:.1f}"
                        num_adds.append(mean_add)
                        num_muxs.append(mean_mux)
                        num_solved.append(num)
                    winner = None
                    for i, na1 in enumerate(num_adds):
                        is_best = True
                        for j, na2 in enumerate(num_adds):
                            if i == j:
                                continue
                            if na1 != "--" and na2 != "--":
                                na1_f = float(na1)
                                na2_f = float(na2)
                                if na1_f >= na2_f:
                                    is_best = False
                        if is_best and na1 != "--":
                            winner = i
                    if winner is not None:
                        num_adds[winner] = f"\\textbf{{{num_adds[winner]}}}"
                    winner = None
                    for i, na1 in enumerate(num_muxs):
                        is_best = True
                        for j, na2 in enumerate(num_muxs):
                            if i == j:
                                continue
                            if na1 != "--" and na2 != "--":
                                na1_f = float(na1)
                                na2_f = float(na2)
                                if na1_f >= na2_f:
                                    is_best = False
                        if is_best and na1 != "--":
                            winner = i
                    if winner is not None:
                        num_muxs[winner] = f"\\textbf{{{num_muxs[winner]}}}"
                    for ns, na, nm in zip(num_solved, num_adds, num_muxs):
                        res_str += f"& {ns} & {na} & {nm}"
                    f.write(f"{res_str}\\\\\n")
        f.write("\\bottomrule\n")
        f.write("\\end{tabular}\n")


def main():
    # setup
    table_sections = ["RMCM", "RPMCM"]
    benchmarks_per_section = {
        "RMCM": rnd_experiments,
        "RPMCM": rnd_experiments
    }
    pagsuite_setting = "pagsuite"
    oatmeal_pipe_setting = "reconf_p1_n0_f0"
    oatmeal_no_pipe_setting = "reconf_p0_n0_f0"
    oatmeal_posterior_pipe_setting = "reconf_p0_n0_f0_pipe"
    benchmark_inputs_base_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "inputs", "reconf")
    benchmark_results_base_path_pagsuite = os.path.join(os.path.dirname(os.path.dirname(__file__)), "results", pagsuite_setting)
    benchmark_results_base_path_oatmeal_pipe = os.path.join(os.path.dirname(os.path.dirname(__file__)), "results", oatmeal_pipe_setting)
    benchmark_results_base_path_oatmeal_no_pipe = os.path.join(os.path.dirname(os.path.dirname(__file__)), "results", oatmeal_no_pipe_setting)
    benchmark_results_base_path_oatmeal_posterior_pipe = os.path.join(os.path.dirname(os.path.dirname(__file__)), "results", oatmeal_posterior_pipe_setting)
    tex_base_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "tex")
    if not os.path.isdir(tex_base_path):
        os.mkdir(tex_base_path)
    # load results
    coeffs = load_coeffs(benchmark_inputs_base_path, benchmarks_per_section, table_sections)
    results_pagsuite = load_results(benchmark_results_base_path_pagsuite, coeffs)
    results_oatmeal_pipe = load_results(benchmark_results_base_path_oatmeal_pipe, coeffs)
    results_oatmeal_no_pipe = load_results(benchmark_results_base_path_oatmeal_no_pipe, coeffs)
    results_oatmeal_posterior_pipe = load_results(benchmark_results_base_path_oatmeal_posterior_pipe, coeffs)
    # create tables
    tex_file_path = os.path.join(tex_base_path, "pagsuite.tex")
    create_table(
        pipelining=False,
        coeffs=coeffs,
        results=[results_pagsuite, results_oatmeal_no_pipe],
        result_names=["PAGSuite", "OatMeal-R"],
        ts="RMCM",
        ws=(8,10),
        cs=(2,3,4),
        os=(3,5,10),
        tex_file_path=tex_file_path,
    )
    tex_file_path = os.path.join(tex_base_path, "pagsuite_pipe.tex")
    create_table(
        pipelining=True,
        coeffs=coeffs,
        results=[results_pagsuite, results_oatmeal_pipe, results_oatmeal_posterior_pipe],
        result_names=["PAGSuite", "OatMeal-R", "OatMeal-R (post. pipe.)"],
        ts="RPMCM",
        ws=(8,10),
        cs=(2,3,4),
        os=(3,5,10),
        tex_file_path=tex_file_path,
    )
    


if __name__ == "__main__":
    main()
