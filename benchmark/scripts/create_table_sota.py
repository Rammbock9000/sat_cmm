import os
from analyze_result import get_adder_graph_costs


def load_coeffs(benchmark_inputs_base_path, benchmarks_per_section, table_sections):
    coeffs = {ts: {b: [] for b in benchmarks_per_section[ts]} for ts in table_sections}
    for ts in table_sections:
        for b in benchmarks_per_section[ts]:
            filepath = os.path.join(benchmark_inputs_base_path, f"{b}.csv")
            with open(filepath, "r") as f:
                for line in f:
                    line = line.rstrip("\r\n ")
                    if not line:
                        continue
                    coeffs[ts][b].append(line)
    return coeffs


def load_results(benchmark_results_base_path, coeffs: dict[str, dict[str, list[str]]]):
    results = {}
    for ts, bench in coeffs.items():
        results[ts] = {}
        for b, cs in bench.items():
            results[ts][b] = {}
            for c in cs:
                results[ts][b][c] = None
                coeffs_as_str = c.replace(";", "_").replace("|", "_AND_").replace("-", "m")
                results_file_path = os.path.join(benchmark_results_base_path, b, f"{coeffs_as_str}.txt")
                err_file_path = results_file_path.replace(".txt", ".err")
                if os.path.isfile(err_file_path):
                    print(f"WARNING: found error file '{err_file_path}'")
                if not os.path.isfile(results_file_path):
                    continue
                with open(results_file_path, "r") as f:
                    found_finished_solving = False
                    res = {}
                    for line in f:
                        line = line.rstrip("\n\r ")
                        if not line:
                            continue
                        if not found_finished_solving:
                            if "Finished solving" in line:
                                found_finished_solving = True
                                # Finished solving after 0.001 seconds
                                res["time"] = float(line.replace("Finished solving after ", "").replace(" seconds", ""))
                            continue
                        if "Adder graph:" in line:
                            ag = line.replace("Adder graph: ", "")
                            num_configs = c.count("|")+1
                            if num_configs < 2:
                                raise Exception(f"Number of configs = {num_configs} for '{c}' in benchmark '{b}'")
                            num_add, num_reg, num_mux, _, _ = get_adder_graph_costs(ag, -1, num_configs)
                            res["#Nodes"] = num_add + num_reg + ag.count("'M'")
                            res["#Add"] = num_add
                            res["#Reg"] = num_reg
                            res["#MUX2"] = num_mux
                        if "# Add optimal = " in line:
                            res["AddOpt"] = bool(int(line.replace("# Add optimal = ", "")))
                        if "# Mux optimal = " in line:
                            res["MuxOpt"] = bool(int(line.replace("# Mux optimal = ", "")))
                    if found_finished_solving:
                        results[ts][b][c] = res
                    else:
                        results[ts][b][c] = None
    return results


def load_reference_results():
    reference_results = {
        "RSCM": {
            "rscm_hal": {
                "-20|-13|-8|-6|-5|-3|-2|-1|0|1|2|4|5|7|12|19": {"#Add": 2, "#Reg": 0, "#MUX2": 4, "cite": "\\cite{barbe_towards_2025}"},
            }, 
            "rscm_tcas1": {
                "362|392|473": {"#Add": 3, "#Reg": 0, "#MUX2": 3, "cite": "\\cite{eleftheriadis_optimal_2023}"},
                "39|150|192": {"#Add": 2, "#Reg": 0, "#MUX2": 3, "cite": "\\cite{eleftheriadis_optimal_2023}"},
                "39|45|41|47": {"#Add": 2, "#Reg": 0, "#MUX2": 2, "cite": "\\cite{eleftheriadis_optimal_2023}"},
            }, 
            "rscm_tcad": {
                "1912|1111|1331": {"#Add": 4, "#Reg": 10, "#MUX2": 2, "cite": "\\cite{moller_reconfigurable_2017}"},
                "12305|20746": {"#Add": 3, "#Reg": 0, "#MUX2": 3, "cite": "\\cite{moller_optimal_2018}"},
            }, 
        }, 
        "RMCM": {
            "rmcm_tvlsi": {
                "10;69|15;92|27;111|47;124": {"#Add": 3, "#Reg": 0, "#MUX2": 10, "cite": "\\cite{sun_resource_2025}"},
            }
        },
        "RCMM": {
            "cordic2": {
                "1:0;0:1|0:-1;1:0|-1:0;0:-1|0:1;-1:0": {"#Add": 2, "#Reg": 0, "#MUX2": 4, "cite": "\\cite{garrido_cordic_2016}"},
                "25:0;0:25|24:-7;7:24|20:-15;15:20": {"#Add": 5, "#Reg": 0, "#MUX2": 7, "cite": "\\cite{garrido_cordic_2016}"},
                "129:0;0:129|128:-16;16:128": {"#Add": 2, "#Reg": 0, "#MUX2": 2, "cite": "\\cite{garrido_cordic_2016}"},
                "512:0;0:512|512:-1;1:512|512:-2;2:512|512:-3;3:512|512:-4;4:512|512:-5;5:512|512:-6;6:512|512:-7;7:512|512:-8;8:512": {"#Add": 4, "#Reg": 0, "#MUX2": 4, "#AND2": 4, "cite": "\\cite{garrido_cordic_2016}"},
                "1024:0;0:1024|1024:-1;1:1024|1024:-2;2:1024|1024:-3;3:1024|1024:-4;4:1024|1024:-5;5:1024|1024:-6;6:1024|1024:-7;7:1024|1024:-8;8:1024": {"#Add": 4, "#Reg": 0, "#MUX2": 4, "#AND2": 4, "cite": "\\cite{garrido_cordic_2016}"},
            }, 
            "ud_cordic": {
                "296:0;0:296|260:-142;142:260|160:-249;249:160": {"#Add": 8, "#Reg": 0, "#MUX2": 12, "#AND2": 2, "cite": "\\cite{garrido_uniformly_2025}"},
                "129:0;0:129|128:-16;16:128|125:-32;32:125": {"#Add": 6, "#Reg": 0, "#MUX2": 2, "#AND2": 6, "cite": "\\cite{garrido_uniformly_2025}"},
                "32:0;0:32|32:-1;1:32|32:-2;2:32": {"#Add": 2, "#Reg": 0, "#MUX2": 2, "#AND2": 2, "cite": "\\cite{garrido_uniformly_2025}"},
            }, 
            "rcmm_tcas1": {
                "8027:0;0:8027|7416:-3072;3072:7416|5676:-5676;5676:5676": {"#Add": 8, "#Reg": 0, "#MUX2": 10, "cite": "\\cite{eleftheriadis_optimal_2023}"},
            }
        }
    }
    return reference_results


def create_table(coeffs, results, reference_results, tex_file_path):
    with open(tex_file_path, "w") as f:
        f.write("\\centering\n")
        f.write("\\begin{tabular}{rccccccc}\n")
        f.write("\\toprule\n")
        f.write("& & \\multicolumn{3}{c}{Original} & \\multicolumn{3}{c}{OatMeal-R} \\\\\n")
        f.write("\\cmidrule(lr){3-5} \\cmidrule(lr){6-8}\n")
        f.write("& idx & Ref & \\#Add & \\#MUX2 & \\#Add & \\#MUX2 & t\\,[min:sec]\\\\\n")
        idx = 0
        for ts, bench in coeffs.items():
            f.write("\\midrule\n")
            first_one = True
            num_rows_in_this_sec = sum(1 for b in bench for _ in bench[b])
            for b, cs in bench.items():
                for c in cs:
                    if first_one:
                        first_one = False
                        ts_str = "\\multirow{" + str(num_rows_in_this_sec) + "}{*}{" + ts + "}"
                    else:
                        ts_str = ""
                    idx += 1
                    ref = reference_results[ts][b][c]["cite"]
                    add_ref = reference_results[ts][b][c]["#Add"]
                    mux_ref = reference_results[ts][b][c]["#MUX2"]
                    if results[ts][b][c] is None:
                        add_oat = "--"
                        mux_oat = "--"
                        tim_oat = "--:--"
                    else:
                        add_oat = results[ts][b][c]["#Add"]
                        mux_oat = results[ts][b][c]["#MUX2"]
                        if add_oat < add_ref:
                            add_oat = f"\\textbf{{{add_oat}}}"
                        elif add_oat > add_ref:
                            add_ref = f"\\textbf{{{add_ref}}}"
                        if mux_oat < mux_ref:
                            mux_oat = f"\\textbf{{{mux_oat}}}"
                        elif mux_oat > mux_ref:
                            mux_ref = f"\\textbf{{{mux_ref}}}"

                        if "#AND2" in reference_results[ts][b][c]:
                            mux_ref = f"${mux_ref}(+{reference_results[ts][b][c]['#AND2']})$"

                        if results[ts][b][c]["AddOpt"]:
                            add_oat = f"${add_oat}^{{\\ast}}$"
                        else:
                            add_oat = f"${add_oat}$"
                        if results[ts][b][c]["MuxOpt"]:
                            mux_oat = f"${mux_oat}^{{\\dagger}}$"
                        else:
                            mux_oat = f"${mux_oat}$"
                        tim_oat = results[ts][b][c]["time"]
                        sec_oat = round(tim_oat)
                        min_oat = sec_oat // 60
                        sec_oat = sec_oat % 60
                        if min_oat == 0 and sec_oat == 0:
                            tim_oat = "$<$\\,0:01"
                        elif sec_oat < 10:
                            tim_oat = f"{min_oat}:0{sec_oat}"
                        else:
                            tim_oat = f"{min_oat}:{sec_oat}"
                    f.write(f"{ts_str} & {idx} & {ref} & {add_ref} & {mux_ref} & {add_oat} & {mux_oat} & {tim_oat}\\\\\n")
        f.write(f"\\bottomrule\n")
        f.write("\\end{tabular}\n")


def main():
    table_sections = ["RSCM", "RMCM", "RCMM"]
    benchmarks_per_section = {
        "RSCM": ["rscm_hal", "rscm_tcas1", "rscm_tcad"],
        "RMCM": ["rmcm_tvlsi"],
        "RCMM": ["cordic2", "ud_cordic", "rcmm_tcas1"]
    }
    oatmeal_setting = "reconf_p0_n1_f0"
    benchmark_inputs_base_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "inputs", "reconf")
    benchmark_results_base_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "results", oatmeal_setting)
    tex_base_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "tex")
    tex_file_path = os.path.join(tex_base_path, "sota.tex")
    if not os.path.isdir(tex_base_path):
        os.mkdir(tex_base_path)
    coeffs = load_coeffs(benchmark_inputs_base_path, benchmarks_per_section, table_sections)
    results = load_results(benchmark_results_base_path, coeffs)
    reference_results = load_reference_results()
    create_table(coeffs, results, reference_results, tex_file_path)


if __name__ == '__main__':
    main()
