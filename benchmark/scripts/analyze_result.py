import math
from sys import argv
from adder_graph import remove_nan_from_fundamentals_str


def is_unit_vector(coeffs):
    return sum(coeffs) == 1 and 1 in coeffs


def get_adder_graph_costs(adder_graph_str, input_word_size, num_configs):
    is_reconfigurable = num_configs > 1
    num_add = adder_graph_str.count("'A'")
    num_reg = adder_graph_str.count("'R'")
    num_mux = 0  # count later when iterating through nodes
    bit_add = 0
    bit_reg = 0
    nodes = adder_graph_str.split("},{")
    nodes = [node.replace("{", "").replace("}", "").replace(" ", "") for node in nodes]
    found_nodes = []
    for node in nodes:
        node = node.replace(",[", ";[").replace("],", "];")
        node_elements = node.split(";")
        if node_elements[0] == "'O'":
            continue  # output nodes have no influence on costs
        if node_elements[0] not in ("'R'", "'A'", "'M'"):
            raise Exception(f"detected invalid node type '{node_elements[0]}' in adder graph '{adder_graph_str}'")
        
        if node_elements[0] == "'M'":
            # this is a multiplexer node ==> count number of equivalent 2:1 MUXs
            # each mux node has 3 elements that describe itself: 'M', [coeffs], stage
            # each mux source is also described by 3 elements: [source_coeffs], source_stage, [source_shifts]
            unique_sources = set()
            unique_shift_positions = set()
            src_counter = 0
            zero_in_mux_coeffs = False
            shift_pos_counter = None
            parser_state = "START"
            mux_coeffs = []
            for elem in node_elements[1:]:
                if parser_state == "START":
                    if elem.startswith("["):
                        elem = elem.replace("[", "")
                        mux_coeffs = []
                    if elem.endswith("]"):
                        elem = elem.replace("]", "")
                        parser_state = "SEARCHING_COEFF_END"
                    mux_coeffs.append(elem)
                    if parser_state == "SEARCHING_COEFF_END":
                        coeff_str = ";".join(mux_coeffs)
                        coeff_str = remove_nan_from_fundamentals_str(coeff_str)
                        if any(all(int(x) == 0 for x in elem.split(",")) for elem in coeff_str.split(";")):
                            zero_in_mux_coeffs = True
                    continue
                elif parser_state == "SEARCHING_COEFF_END":
                    if elem.startswith("["):
                        mux_coeffs = []
                    finished_here = elem.endswith("]")
                    elem = elem.replace("[", "").replace("]", "")
                    mux_coeffs.append(elem)
                    if finished_here:
                        coeff_str = ";".join(mux_coeffs)
                        coeff_str = remove_nan_from_fundamentals_str(coeff_str)
                        if any(all(int(x) == 0 for x in elem.split(",")) for elem in coeff_str.split(";")):
                            zero_in_mux_coeffs = True
                        parser_state = "SEARCHING_SHIFT_START"
                        continue
                elif parser_state == "SEARCHING_SHIFT_START":
                    if elem.startswith("["):
                        parser_state = "ANALYZING_SHIFT"
                
                if parser_state == "ANALYZING_SHIFT":
                    if elem.startswith("["):
                        src_counter += 1
                        shift_pos_counter = 0
                        elem = elem.replace("[", "")
                    else:
                        shift_pos_counter += 1
                    if elem.endswith("]"):
                        parser_state = "SEARCHING_COEFF_END"
                        elem = elem.replace("]", "")
                    if elem == "NaN":
                        continue
                    unique_sources.add((src_counter, elem))
                    unique_shift_positions.add(shift_pos_counter)
            this_mux_cost = len(unique_sources) - 1
            account_for_zero = len(unique_shift_positions) != num_configs and zero_in_mux_coeffs
            if account_for_zero:
                this_mux_cost += 1  # to account for the zero input
            num_mux += this_mux_cost
        else:
            # this is a register or adder node ==> analyze costs
            # parse and evaluate coefficient info
            if is_reconfigurable:
                coefficients = []
                for elem in node_elements[1:]:
                    finished_parsing_coeffs = False
                    if elem.startswith("["):
                        elem = elem.replace("[", "")
                    elif elem.endswith("]"):
                        elem = elem.replace("]", "")
                        finished_parsing_coeffs = True
                    coefficients.append(elem)
                    if finished_parsing_coeffs:
                        coeff_str = remove_nan_from_fundamentals_str(";".join(coefficients))
                        coefficients = [[int(x) for x in coeff_vec.split(",")] for coeff_vec in coeff_str.split(";")]
                        break
                # adjust costs if node outputs constant zero
                if all(all(int(x) == 0 for x in coeff_vec) for coeff_vec in coefficients):
                    if node_elements[0] == "'A'":
                        num_add -= 1
                    else:
                        num_reg -= 1
            else:
                coefficients = [int(x) for x in node_elements[1].replace("[", "").replace("]", "").split(",")]
            
            
            # do not analyze bit-level costs for reconfigurable circuits
            if is_reconfigurable:
                continue

            # get node stage/shift
            elem = node_elements[2].split(",")
            stage = int(elem[0])
            if len(elem) == 2:
                output_shift = int(elem[1])
            else:
                output_shift = 0

            # mark node as "found"
            found_nodes.append((coefficients, stage))

            # reduce adder costs by copying the MSB (only for SCM/MCM)
            msb_bit_gain = 0
            # reduce adder costs by not computing some bits on the LSB side
            shift_bit_gain = 0

            # get bit add info
            if node_elements[0] == "'A'":
                # get input coefficients
                coefficients_l = [int(x) for x in node_elements[3].replace("[", "").replace("]", "").split(",")]
                coefficients_r = [int(x) for x in node_elements[5].replace("[", "").replace("]", "").split(",")]

                # negative versions of input coefficients
                minus_coefficients_l = [-c for c in coefficients_l]
                minus_coefficients_r = [-c for c in coefficients_r]

                # get left stage/shift
                elem = node_elements[4].split(",")
                stage_l = int(elem[0])
                shift_l = int(elem[1])

                # get right stage/shift
                elem = node_elements[6].split(",")
                stage_r = int(elem[0])
                shift_r = int(elem[1])

                if shift_r == shift_l and shift_r < 0:
                    output_shift = -shift_r
                    shift_l = 0
                    shift_r = 0

                # check if left input gets subtracted
                if (coefficients_l, stage_l) in found_nodes or (is_unit_vector(coefficients_l) and stage_l == 0):
                    subtract_l = False
                elif (minus_coefficients_l, stage_l) in found_nodes or (is_unit_vector(minus_coefficients_l) and stage_l == 0):
                    subtract_l = True
                    coefficients_l, minus_coefficients_l = minus_coefficients_l, coefficients_l
                else:
                    raise Exception(f"Failed to find left input coefficients or their negative versions '{coefficients_l}' (stage {stage_l}) in adder graph '{adder_graph_str}'")

                # check if right input gets subtracted
                if (coefficients_r, stage_r) in found_nodes or (is_unit_vector(coefficients_r) and stage_r == 0):
                    subtract_r = False
                elif (minus_coefficients_r, stage_r) in found_nodes or (is_unit_vector(minus_coefficients_r) and stage_r == 0):
                    subtract_r = True
                    coefficients_r, minus_coefficients_r = minus_coefficients_r, coefficients_r
                else:
                    raise Exception(f"Failed to find right input coefficients or their negative versions '{coefficients_r}' (stage {stage_r}) in adder graph '{adder_graph_str}'")

                # check if we do addition
                perform_addition = not (subtract_l or subtract_r)

                # check if we can copy the msb
                if len(coefficients) == 1:
                    # check if at least one of the inputs has the same sign
                    c = coefficients[0]
                    c_l = coefficients_l[0]
                    c_r = coefficients_r[0]
                    if (c >= 0 and c_l >= 0) or (c < 0 and c_l < 0) or (c >= 0 and c_r >= 0) or (c < 0 and c_r < 0):
                        msb_bit_gain = 1

                # check how many bits we can save on the lsb side
                if perform_addition:
                    shift_bit_gain = max(shift_l, shift_r)
                if subtract_l:
                    shift_bit_gain = max(shift_bit_gain, shift_l)
                if subtract_r:
                    shift_bit_gain = max(shift_bit_gain, shift_r)

            # compute the word size increase due to the coefficients
            temp_sum = sum([abs(x) for x in coefficients])
            log2sum = math.log2(temp_sum)

            # compute register bit-level info
            bit_reg_for_this_node = input_word_size + math.ceil(log2sum)
            # need 1 more bit to represent clean negative power of 2 coefficients
            is_clean_pow_two = math.ceil(log2sum) == math.floor(log2sum) and all(x < 0 for x in coefficients)
            if is_clean_pow_two:
                bit_reg_for_this_node += 1

            # bit adder costs are equal to the adder word size (i.e., the node word size + the output shift width - savings)
            bit_add_for_this_node = bit_reg_for_this_node + output_shift - msb_bit_gain - shift_bit_gain

            # modify overall costs
            bit_reg += bit_reg_for_this_node
            bit_add += bit_add_for_this_node
    return num_add, num_reg, num_mux, bit_add, bit_reg


def main():
    # parse user arguments
    argc = len(argv)

    # check user arguments
    if argc != 4:
        raise Exception("Invalid user arguments! Call script like this: python3 analyze_result.py <adder graph string> <input word size> <number of configurations> (e.g., python3 analyze_result.py \"{{'A',[1,1],1,0,[0,1],0,0,[1,0],0,0},{'A',[-3,1],2,0,[1,1],1,0,[-1,0],0,2},{'A',[-3,-7],3,0,[-3,1],2,0,[0,-1],0,3},{'A',[5,4],2,0,[1,0],0,0,[1,1],1,2},{'O',[3,7],3,[3,7],3,0},{'O',[5,4],2,[5,4],2,0}}\" 12 1)\n"
        "Set the input word size to zero to ignore bit-level costs and set the number of configurations to one for non-reconfigurable designs.\n"
        "Leave the word size at zero for reconfigurable designs, since bit-level costs are currently not computed for them.")

    # initialize adder graph string
    adder_graph_str = argv[1]
    try:
        input_word_size = int(argv[2])
    except:
        raise Exception(f"Failed to convert input word size '{argv[2]}' to integer")
    
    try:
        num_configs = int(argv[3])
    except:
        raise Exception(f"Invalid argument for 'num_configs' provided: {argv[3]}")

    # compute adder graph costs and print them
    num_add, num_reg, num_mux, bit_add, bit_reg = get_adder_graph_costs(
                                                    adder_graph_str=adder_graph_str, 
                                                    input_word_size=input_word_size, 
                                                    num_configs=num_configs)
    print(f"Implementation costs:")
    print(f"-> Number of adders = {num_add}")
    if input_word_size > 0:
        print(f"-> Bit-level adder costs = {bit_add}")
    print(f"-> (If the design is pipelined) Number of pure registers = {num_reg}")
    if input_word_size > 0:
        print(f"-> (If the design is pipelined) Bit-level register costs = {bit_reg}")
    if num_configs > 1:
        print(f"-> Number of equivalent 2:1 MUXs = {num_mux}")


if __name__ == '__main__':
    main()