## Experimental data

This repository contains...
0. result files containing the adder graphs under benchmark/results, synthesis files under benchmark/synth 
1. scripts for (i) running OatMeal-R, (ii) generating VHDL files with the provided VHDL generator, (iii) generating Verilog files with GHDL, (iv) synthesizing results using Vivado/, and (v) analyzing all results under benchmark/scripts

Just re-run the scripts as required to either only re-analyze the provided results or to re-generate everything. Note that just running OatMeal-R took us about 3 to 3.5 CPU years on our machines.

To reproduce all experiments on your machine do the following:
0. Delete our log files located in benchmark/results/ related to the reconfigurable setting (everything with reconf_* and ref_reconf_*).
1. Run the experiments again as described in the paper using the provided scripts. Coefficients are located in csv files in benchmark/inputs/.
2. Analyze results using the provided scripts.
