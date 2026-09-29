import os
from random import randint


def main():
    results_base_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "inputs", "reconf")
    word_sizes = [8, 10]
    num_outputs = [3, 5, 10]
    num_configs = [2, 3, 4]
    problems_per_variant = 10
    for w in word_sizes:
        max_val = 2**w - 1
        min_val = 2**(w-1)
        for o in num_outputs:
            for c in num_configs:
                input_problems = []
                for i in range(problems_per_variant):
                    already_generated_before = True
                    contains_duplicates = True
                    any_coeff_needs_word_size = False
                    while already_generated_before or contains_duplicates or not any_coeff_needs_word_size:
                        coeff_matrix = [[randint(1, max_val) for _ in range(o)] for _ in range(c)]
                        already_generated_before = coeff_matrix in input_problems
                        contains_duplicates = False
                        any_coeff_needs_word_size = False
                        for c1 in range(c):
                            for o1 in range(o):
                                if coeff_matrix[c1][o1] >= min_val:
                                    any_coeff_needs_word_size = True
                                for c2 in range(c):
                                    for o2 in range(o):
                                        if c1 == c2 and o1 == o2:
                                            continue
                                        if coeff_matrix[c1][o1] == coeff_matrix[c2][o2]:
                                            contains_duplicates = True
                    input_problems.append(coeff_matrix)
                filepath = os.path.join(results_base_path, f"rnd_rpmcm_w{w}_o{o}_c{c}.csv")
                with open(filepath, "w") as f:
                    for p in input_problems:
                        line = "|".join(";".join(str(x) for x in vec) for vec in p)
                        f.write(f"{line}\n")




if __name__ == "__main__":
    main()
