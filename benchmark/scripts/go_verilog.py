import os
import sys
import re
import tempfile
from os.path import join, dirname, abspath, isdir, isfile, relpath

sys.path.append(join(dirname(dirname(dirname(abspath(__file__)))), "test"))
from test_utility import call_arbitrary_program


def repair_undriven_ext(text):
    """Repair wires that GHDL's Verilog backend leaves floating on identity copies.

    GHDL 'synth --out=verilog' drops the driver of an *identity* signal-to-signal copy
    (same width on both sides), so the target wire ends up declared and used but never
    assigned; downstream synthesis then constant-folds the floating logic away. Two such
    copies occur in these designs:
      * adder_node's 'x_ext'/'y_ext' from an identity resize() of 'x_i'/'y_i', and
      * const_mul's 'config_select_0' from the identity copy of the 'config_select' input
        at the head of the pipelined config shift register.
    We re-create the missing 'assign' for exactly these known cases (widths are equal, so
    a direct assignment is correct), and leave any other undriven wire untouched.
    """
    lines = text.split("\n")
    # find module boundaries
    ranges = []
    start = None
    for i, l in enumerate(lines):
        if re.match(r"\s*module\b", l):
            start = i
        elif re.match(r"\s*endmodule\b", l) and start is not None:
            ranges.append((start, i))
            start = None
    inserts = {}
    n_repaired = 0
    for a, b in ranges:
        assigned = set()
        for l in lines[a:b + 1]:
            m = re.match(r"\s*assign\s+\\?(\w+)", l)     # combinational 'assign NAME ...'
            if m:
                assigned.add(m.group(1))
            m = re.match(r"\s*\\?(\w+)\s*<=", l)          # registered 'NAME <= ...' (in always blocks)
            if m:
                assigned.add(m.group(1))
        for i in range(a, b + 1):
            m = re.match(r"\s*wire\s*(?:\[[^\]]*\]\s*)?(\w+)\s*;", lines[i])
            if not m:
                continue
            name = m.group(1)
            if name in assigned:
                continue                                # already driven -> leave alone
            # GHDL's Verilog backend drops identity signal-to-signal copies; re-create the
            # ones we know how to reconstruct from the generator's naming conventions:
            if name.endswith("_ext"):
                src = name[:-len("_ext")] + "_i"         # adder_node: x_ext <- x_i, y_ext <- y_i
            elif name == "config_select_0":
                src = "config_select"                    # const_mul: head of the config shift register
            else:
                continue                                 # unknown undriven wire -> do not guess
            inserts[i] = f"  assign {name} = {src}; // repaired: identity copy dropped by ghdl"
            n_repaired += 1
    if not inserts:
        return text, 0
    out = []
    for i, l in enumerate(lines):
        out.append(l)
        if i in inserts:
            out.append(inserts[i])
    return "\n".join(out), n_repaired


def main():
    if len(sys.argv) > 1:
        re_generate_all_verilog_files = bool(int(sys.argv[1]))
    else:
        re_generate_all_verilog_files = False

    benchmark_dir = dirname(dirname(abspath(__file__)))                 # .../benchmark
    vhdl_base_dir = join(benchmark_dir, "vhdl")
    verilog_base_dir = join(benchmark_dir, "verilog")
    # the adder_node sub-entities live in the repository's top-level vhdl dir
    adder_node_vhd_path = join(dirname(benchmark_dir), "vhdl", "adder_node.vhd")
    top_entity = "const_mul"

    if not isdir(vhdl_base_dir):
        raise Exception(f"VHDL directory not found at {vhdl_base_dir}")
    if not isfile(adder_node_vhd_path):
        raise Exception(f"adder_node.vhd not found at {adder_node_vhd_path}")
    if not isdir(verilog_base_dir):
        os.mkdir(verilog_base_dir)

    num_converted = 0
    num_skipped = 0
    num_repaired_wires = 0
    failed_files = []
    for root, _, files in os.walk(vhdl_base_dir):
        for fn in sorted(files):
            if not fn.endswith(".vhd"):
                continue        # wrong file type
            if fn.endswith("_tb.vhd"):
                continue        # skip testbenches, we only convert the design itself
            vhdl_file_path = join(root, fn)
            # mirror the sub-directory structure under benchmark/verilog and swap the extension
            rel_path = relpath(vhdl_file_path, vhdl_base_dir)
            verilog_file_path = join(verilog_base_dir, rel_path[:-len(".vhd")] + ".v")
            out_dir = dirname(verilog_file_path)
            if not isdir(out_dir):
                os.makedirs(out_dir, exist_ok=True)
            if not re_generate_all_verilog_files and isfile(verilog_file_path):
                num_skipped += 1
                continue
            print(f"Convert {vhdl_file_path} -> {verilog_file_path}")
            # use a fresh work library per file because every design shares the entity name 'const_mul'
            with tempfile.TemporaryDirectory() as workdir:
                returncode, stdout, stderr = call_arbitrary_program(
                    "ghdl",
                    ("synth", f"--workdir={workdir}", "--out=verilog",
                     adder_node_vhd_path, vhdl_file_path, "-e", top_entity)
                )
            if returncode != 0:
                print(f"  GHDL conversion FAILED (return code {returncode}):")
                print(stderr)
                failed_files.append(vhdl_file_path)
                continue
            # GHDL's Verilog backend leaves identity-resize wires undriven -> repair them
            verilog_text, n_repaired = repair_undriven_ext(stdout)
            num_repaired_wires += n_repaired
            with open(verilog_file_path, "w") as f:
                f.write(verilog_text)
            num_converted += 1

    print(f"Done. Converted {num_converted} files, skipped {num_skipped} existing files, "
          f"repaired {num_repaired_wires} undriven wires, {len(failed_files)} failures.")
    for f in failed_files:
        print(f"  FAILED: {f}")


if __name__ == '__main__':
    main()
