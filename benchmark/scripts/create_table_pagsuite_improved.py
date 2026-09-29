import os
import json
import argparse
from create_table_sota import load_coeffs, load_results


def _is_shown(method, results, table_order, ts, bench, c, num_results, cost_key):
    if method not in results:
        return False
    if results[method][ts][bench][c] is None:
        return False
    if "OatMeal" in method:
        num_add = int(method.split("_")[-1])
        if num_add >= num_results - 1:
            return False
        if method != "OatMeal-R_0":
            for m2 in table_order:
                if m2 in (table_order[0], "OatMeal-R_0"):   # skip PAGSuite and the min-adder OatMeal-R
                    continue
                if m2 not in results or results[m2][ts][bench][c] is None:
                    continue
                if results[m2][ts][bench][c][cost_key] < results[method][ts][bench][c][cost_key]:
                    return False
    return True


def _area_cell(results, method, ts, bench, c, area_winner):
    area = results[method][ts][bench][c].get("Area", float("inf"))
    if area == float("inf"):
        return "--"
    s = f"{int(round(area))}"
    if method == area_winner:
        s = "\\textbf{" + s + "}"
    return s


def create_table(coeffs, results, table_order, ts, bench, additonal_adders_max, tex_file_path, include_asic=False):
    ncol = 7 if include_asic else 6
    with open(tex_file_path, "w") as f:
        f.write("\\centering\n")
        f.write("\\begin{tabular}{" + "c" * ncol + "}\n")
        f.write("\\toprule\n")
        header = "idx & Method & t [min:sec] & \\#\\,Add & \\#\\,MUX2 & \\#\\,LUTs"
        if include_asic:
            header += " & Area [$\\mu m^2$]"
        f.write(header + " \\\\\n")
        idx = 0
        for c in coeffs[ts][bench]:
            f.write("\\midrule\n")
            idx += 1
            num_results = 1
            for a in range(additonal_adders_max + 1):
                if f"OatMeal-R_{a}" not in results:
                    continue
                if results[f"OatMeal-R_{a}"][ts][bench][c] is not None:
                    num_results += 1
            # LUT winner (bolded) among the candidate methods
            lut_winner = table_order[0]
            for method in table_order:
                if "OatMeal" in method:
                    num_add = int(method.split("_")[-1])
                    if num_add >= num_results - 1:
                        continue
                if results[method][ts][bench][c] is None:
                    continue
                if results[method][ts][bench][c]["#LUTs"] < results[lut_winner][ts][bench][c]["#LUTs"]:
                    lut_winner = method
            # shown rows and (independently) the minimal-area row among them
            shown = [m for m in table_order
                     if _is_shown(m, results, table_order, ts, bench, c, num_results, "#LUTs")]
            area_winner = None
            if include_asic:
                best = float("inf")
                for m in shown:
                    a = results[m][ts][bench][c].get("Area", float("inf"))
                    if a < best:
                        best, area_winner = a, m
            is_first = True
            for method in shown:
                idx_str = ("\\multirow{" + str(len(shown)) + "}{*}{" + f"{idx}" + "}") if is_first else ""
                is_first = False
                r = results[method][ts][bench][c]
                time_str = f"{int(r['time'] // 60)}:{int(r['time'] % 60):02d}"
                num_add, num_mux, num_lut = r["#Add"], r["#MUX2"], r["#LUTs"]
                if method == lut_winner:
                    num_lut = "\\textbf{" + str(num_lut) + "}"
                method_str = method.split("_")[0] if "OatMeal" in method else method
                row = f"{idx_str} & {method_str} & {time_str} & {num_add} & {num_mux} & {num_lut}"
                if include_asic:
                    row += " & " + _area_cell(results, method, ts, bench, c, area_winner)
                f.write(row + " \\\\\n")
        f.write("\\bottomrule\n")
        f.write("\\end{tabular}\n")


def create_table_pipe(coeffs, results, table_order, ts, bench, additonal_adders_max, tex_file_path, include_asic=False):
    ncol = 10 if include_asic else 9
    with open(tex_file_path, "w") as f:
        f.write("\\centering\n")
        f.write("\\begin{tabular}{" + "c" * ncol + "}\n")
        f.write("\\toprule\n")
        header = ("idx & Method & t [min:sec] & \\#\\,Add & \\#\\,MUX2 & \\#\\,Reg & "
                  "\\#\\,Nodes & \\#\\,LUTs & \\#\\,FFs")
        if include_asic:
            header += " & Area [$\\mu m^2$]"
        f.write(header + " \\\\\n")
        idx = 0
        for c in coeffs[ts][bench]:
            f.write("\\midrule\n")
            idx += 1
            num_results = 1
            for a in range(additonal_adders_max + 1):
                if f"OatMeal-R_{a}" not in results:
                    continue
                if results[f"OatMeal-R_{a}"][ts][bench][c] is not None:
                    num_results += 1
            # FF winner (bolded) among the candidate methods
            ff_winner = table_order[0]
            for method in table_order:
                if "OatMeal" in method:
                    num_add = int(method.split("_")[-1])
                    if num_add >= num_results - 1:
                        continue
                if results[method][ts][bench][c] is None:
                    continue
                if results[method][ts][bench][c]["#FFs"] < results[ff_winner][ts][bench][c]["#FFs"]:
                    ff_winner = method
            # shown rows and (independently) the minimal-area row among them
            shown = [m for m in table_order
                     if _is_shown(m, results, table_order, ts, bench, c, num_results, "#FFs")]
            area_winner = None
            if include_asic:
                best = float("inf")
                for m in shown:
                    a = results[m][ts][bench][c].get("Area", float("inf"))
                    if a < best:
                        best, area_winner = a, m
            is_first = True
            for method in shown:
                idx_str = ("\\multirow{" + str(len(shown)) + "}{*}{" + f"{idx}" + "}") if is_first else ""
                is_first = False
                r = results[method][ts][bench][c]
                time_str = f"{int(r['time'] // 60)}:{int(r['time'] % 60):02d}"
                num_add, num_mux, num_lut = r["#Add"], r["#MUX2"], r["#LUTs"]
                num_nod, num_ffs, num_reg = r["#Nodes"], r["#FFs"], r["#Reg"]
                if "OatMeal" in method and r["MuxOpt"]:
                    print(f"OATMEAL FOUND OPTIMAL MUX COUNT FOR INSTANCE {idx}: {c}")
                if method == ff_winner:
                    num_ffs = "\\textbf{" + str(num_ffs) + "}"
                method_str = method.split("_")[0] if "OatMeal" in method else method
                row = (f"{idx_str} & {method_str} & {time_str} & {num_add} & {num_mux} & "
                       f"{num_reg} & {num_nod} & {num_lut} & {num_ffs}")
                if include_asic:
                    row += " & " + _area_cell(results, method, ts, bench, c, area_winner)
                f.write(row + " \\\\\n")
        f.write("\\bottomrule\n")
        f.write("\\end{tabular}\n")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--asic", action="store_true",
                        help="add an ASIC cell-area column (design__instance__area) read from the "
                             "OpenLane2 results under benchmark/openlane/pagsuite_impr")
    args = parser.parse_args()
    include_asic = args.asic

    # setup
    table_section = "RMCM"
    benchmark = f"rnd_rpmcm_w10_o5_c3"
    benchmarks = {table_section: [benchmark]}
    additonal_adders_max = 10
    pagsuite_setting = "pagsuite"
    pagsute_pipe_setting = pagsuite_setting + "_pipe"
    benchmark_results_paths = {}
    benchmark_inputs_base_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "inputs", "reconf")
    synth_base_dir = os.path.join(os.path.dirname(os.path.dirname(__file__)), "synth", "pagsuite_impr")
    openlane_base_dir = os.path.join(os.path.dirname(os.path.dirname(__file__)), "openlane", "pagsuite_impr")
    table_order = ["PAGSuite"] + [f"OatMeal-R_{a}" for a in range(additonal_adders_max + 1)]
    for p in (0, 1):
        benchmark_results_paths["PAGSuite"] = os.path.join(os.path.dirname(os.path.dirname(__file__)), "results", pagsuite_setting)
        oatmeal_setting_prefix = f"reconf_p{p}_n1_f0"
        benchmark_results_paths["OatMeal-R_0"] = os.path.join(os.path.dirname(os.path.dirname(__file__)), "results", oatmeal_setting_prefix)
        for a in range(1, additonal_adders_max + 1):
            setting_name = f"{oatmeal_setting_prefix}_a{a}_g0"
            benchmark_results_paths[f"OatMeal-R_{a}"] = os.path.join(os.path.dirname(os.path.dirname(__file__)), "results", setting_name)
        tex_base_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "tex")
        if not os.path.isdir(tex_base_path):
            os.mkdir(tex_base_path)
        # load results
        coeffs = load_coeffs(benchmark_inputs_base_path, benchmarks, [table_section])
        results = {}
        for name, path in benchmark_results_paths.items():
            if not os.path.isdir(path):
                continue
            results[name] = load_results(path, coeffs)
            for i, c in enumerate(coeffs[table_section][benchmark]):
                if results[name][table_section][benchmark][c] is None:
                    continue
                if "OatMeal-R" in name:
                    additional_adders = int(name.replace("OatMeal-R_", ""))
                    if additional_adders == 0:
                        vivado_proj_name = oatmeal_setting_prefix
                    else:
                        vivado_proj_name = oatmeal_setting_prefix + f"_a{additional_adders}_g0"
                else:
                    vivado_proj_name = pagsuite_setting if p == 0 else pagsute_pipe_setting
                synth_dir = os.path.join(synth_base_dir, f"bench_{i}", vivado_proj_name)
                util_file_path = os.path.join(synth_dir, f"{vivado_proj_name}.runs", "impl_1", "const_mul_utilization_placed.rpt")
                results[name][table_section][benchmark][c]["#LUTs"] = float("inf")
                results[name][table_section][benchmark][c]["#FFs"] = float("inf")
                results[name][table_section][benchmark][c]["Area"] = float("inf")
                # FPGA (Vivado) utilization
                if os.path.isfile(util_file_path):
                    with open(util_file_path, "r") as f:
                        for line in f:
                            if "CLB LUTs" in line:
                                results[name][table_section][benchmark][c]["#LUTs"] = int(line.split("|")[2].strip(" "))
                            if "CLB Registers" in line:
                                results[name][table_section][benchmark][c]["#FFs"] = int(line.split("|")[2].strip(" "))
                            if (results[name][table_section][benchmark][c]["#LUTs"] < float("inf")
                                    and results[name][table_section][benchmark][c]["#FFs"] < float("inf")):
                                break
                # ASIC (OpenLane2) cell area
                if include_asic:
                    metrics_path = os.path.join(openlane_base_dir, f"p{p}", f"bench_{i}",
                                                vivado_proj_name, "runs", "run", "final", "metrics.json")
                    if os.path.isfile(metrics_path):
                        with open(metrics_path) as mf:
                            m = json.load(mf)
                        if "design__instance__area" in m:
                            results[name][table_section][benchmark][c]["Area"] = float(m["design__instance__area"])
        # create table
        tex_file_path = os.path.join(tex_base_path, "pagsuite_impr.tex" if p == 0 else "pagsuite_impr_pipe.tex")
        if p == 0:
            create_table(
                coeffs=coeffs,
                results=results,
                table_order=table_order,
                ts=table_section,
                bench=benchmark,
                additonal_adders_max=additonal_adders_max,
                tex_file_path=tex_file_path,
                include_asic=include_asic,
            )
        else:
            create_table_pipe(
                coeffs=coeffs,
                results=results,
                table_order=table_order,
                ts=table_section,
                bench=benchmark,
                additonal_adders_max=additonal_adders_max,
                tex_file_path=tex_file_path,
                include_asic=include_asic,
            )


if __name__ == "__main__":
    main()
