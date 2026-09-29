import math


class AdderGraphNode:
    def __init__(self, node_type, associated_fundamentals: list[list[int]], node_stage, id, output_shift=None, selection_pattern=None, sub_pattern=None):
        self.node_type = node_type
        self.associated_fundamentals = associated_fundamentals
        self.node_stage = node_stage
        self.id = id
        if not type(self.associated_fundamentals) == list or not all(type(f) == list for f in self.associated_fundamentals) or not all(all(type(i) == int for i in f) for f in self.associated_fundamentals):
            raise Exception("Invalid node: associated_fundamentals must be a list of lists of integers.")
        # sadd/sub node properties
        self.output_shift = output_shift  # for add/sub nodes
        self.sub_pattern = sub_pattern  # for add/sub nodes
        # mux node properties
        self.selection_pattern = selection_pattern  # for mux nodes
        # exception handling
        if selection_pattern is not None and sub_pattern is not None:
            raise Exception("Invalid node: A node cannot be both a mux and an add/sub node.")
        if sub_pattern is not None and output_shift is None:
            raise Exception("Invalid add/sub node: An add/sub node must have an output shift defined.")

    def __hash__(self):
        return self.id

    def __str__(self):
        return repr(self)

    def __repr__(self):
        return f"AdderGraphNode type {self.node_type} in stage {self.node_stage} with id {self.id}, output shift {self.output_shift} and fundamentals {self.associated_fundamentals}"

class AdderGraphEdge:
    def __init__(self, src_node, dst_node, shift, invert, dst_port):
        self.src_node: AdderGraphNode = src_node
        self.dst_node: AdderGraphNode = dst_node
        self.shift = shift
        self.invert = invert
        self.dst_port = dst_port
    
    def __str__(self):
        return f"AdderGraphEdge '{self.src_node.id}' -> '{self.dst_node.id}' dst_port '{self.dst_port}' with shift={self.shift} and invert={self.invert}"

class AdderGraph:
    def __init__(self, number_of_inputs, number_of_configs, input_word_size, is_pipelined, num_fractional_bits):
        self.nodes: list[AdderGraphNode] = []
        self.edges: list[AdderGraphEdge] = []
        self.output_word_sizes: dict[AdderGraphNode, int] = {}
        self.number_of_inputs: int = number_of_inputs
        self.number_of_configs: int = number_of_configs
        self.input_word_size: int = input_word_size
        self.is_pipelined: bool = is_pipelined
        self.num_fractional_bits: int = num_fractional_bits
        self.input_nodes: list[AdderGraphNode] = []
        self.output_nodes: list[AdderGraphNode] = []
        self.all_node_inputs = {}
    
    def __eq__(self, other):
        if type(other) != AdderGraph:
            return False
        if len(self.nodes) != len(other.nodes):
            return False
        if len(self.edges) != len(other.edges):
            return False
        for my_node in self.nodes:
            found_match = False
            for other_node in other.nodes:
                if my_node.node_type != other_node.node_type:
                    continue
                if my_node.associated_fundamentals != other_node.associated_fundamentals:
                    continue
                if my_node.node_stage != other_node.node_stage:
                    continue
                found_match = True
                #print(f"Matched node '{my_node}' with node '{other_node}'")
                break
            if not found_match:
                return False
        return True
    
    def __str__(self):
        s = "AdderGraph"
        s += "Nodes:\n"
        for node in self.nodes:
            s += f"--> {node}\n"
        s += "Edges:\n"
        for edge in self.edges:
            s += f"--> {edge}\n"
        return s
    
    def validate(self):
        # only validate pipelining for non-reconfigurable constant multipliers -> with reconfiguration, we can have working, malformed pipelines
        if self.is_pipelined and self.number_of_configs < 2:
            # if pipelined: outputs must be coming from the same pipeline stage
            output_stage = None
            for node in self.nodes:
                if node.node_type != "output":
                    continue
                if output_stage is None:
                    output_stage = node.node_stage
                else:
                    if node.node_stage != output_stage:
                        raise Exception(f"Output stages must be equal for VHDL code generation when pipelining is enabled, but found output node with stage '{output_stage}' and one with stage '{node.node_stage}'!")
            # if pipelined: there is no stage greater than the output stage
            for node in self.nodes:
                if node.node_type == "output":
                    continue
                if node.node_stage > output_stage:
                    raise Exception(f"There should not be any node with stage larger than the output stage when pipelining is enabled, but found node in stage '{node.node_stage}' while output stage is '{output_stage}'!")
    
    def adder_depth(self):
        if self.is_pipelined and self.number_of_configs > 1:
            # for pipelining with reconfigurability, we might have malformed pipelines 
            # where the actual latency is the minimum adder stage among all outputs
            return max(0, min(node.node_stage for node in self.output_nodes))
        else:
            # standard case, just take the latest stage among all nodes
            return max(0, max(node.node_stage for node in self.nodes))
    
    def last_conf_stage(self):
        choices = [node.node_stage for node in self.nodes if node.node_type in ("add_sub", "mux")]
        if choices:
            return max(choices)
        else:
            return 0

    def get_all_inputs(self, node):
        all_inputs = self.all_node_inputs.get(node)
        if all_inputs is None:
            all_inputs = [(edge.src_node, tuple(edge.shift), edge.invert, edge.dst_port) for edge in self.edges if edge.dst_node == node]
            all_inputs_set = set()
            for (n, shifts, inv, p) in all_inputs:
                if node.node_type == "mux":
                    s = shifts[p]
                else:
                    s = shifts[0]
                all_inputs_set.add((n, s, inv, p))
            all_inputs = list(all_inputs_set)
            self.all_node_inputs[node] = all_inputs
        return all_inputs
    
    def find_non_output_node(self, associated_fundamentals, node_stage, can_invert_fundamentals_individually):
        matching_nodes = []
        for node in self.nodes:
            if node.node_stage != node_stage:
                continue
            if node.node_type == "output":
                continue
            match = True
            inversion_pattern = []
            for f1, f2 in zip(node.associated_fundamentals, associated_fundamentals):
                if all(a == b and a == -b for a, b in zip(f1, f2)):
                    inversion_pattern.append(None)
                elif all(a == b for a, b in zip(f1, f2)):
                    inversion_pattern.append(False)
                elif all(a == -b for a, b in zip(f1, f2)):
                    inversion_pattern.append(True)
                else:
                    match = False
                    break
            all_inverted = all(x in (True, None) for x in inversion_pattern)
            none_inverted = all(x in (False, None) for x in inversion_pattern)
            # can_invert_fundamentals_individually == None -> it must match exactly
            if can_invert_fundamentals_individually is None and not none_inverted:
                match = False
            # can_invert_fundamentals_individually == False -> either all or none must be inverted
            if can_invert_fundamentals_individually is False and not (none_inverted or all_inverted):
                match = False
            # can_invert_fundamentals_individually == True -> any inversion pattern is allowed
            if match:
                matching_nodes.append([node, inversion_pattern])
        if len(matching_nodes) == 0:
            raise Exception(f"Node '{associated_fundamentals}' in stage '{node_stage}' not found with inversion '{can_invert_fundamentals_individually}' (all_inverted: {all_inverted}, none_inverted: {none_inverted}).")
        # prio 1: try to find a node with only additions
        for node, inversion_pattern in matching_nodes:
            if all(x in [False, None] for x in inversion_pattern):
                return node
        # prio 2: try to find a node with only subtractions
        for node, inversion_pattern in matching_nodes:
            if all(x in [True, None] for x in inversion_pattern):
                return node
        # prio 3: try to find a node with any add/sub pattern
        return matching_nodes[0][0]
    
    def find_output_node(self, associated_fundamentals, node_stage):
        matching_nodes = []
        for node in self.nodes:
            if node.node_stage != node_stage:
                continue
            if node.node_type != "output":
                continue
            match = True
            inversion_pattern = []
            for f1, f2 in zip(node.associated_fundamentals, associated_fundamentals):
                if all(a == b and a == -b for a, b in zip(f1, f2)):
                    inversion_pattern.append(None)
                elif all(a == b for a, b in zip(f1, f2)):
                    inversion_pattern.append(False)
                elif all(a == -b for a, b in zip(f1, f2)):
                    inversion_pattern.append(True)
                else:
                    match = False
                    break
            all_inverted = all(x in (True, None) for x in inversion_pattern)
            none_inverted = all(x in (False, None) for x in inversion_pattern)
            # can_invert_fundamentals_individually == None -> it must match exactly
            if not none_inverted:
                match = False
            if match:
                matching_nodes.append(node)
        if len(matching_nodes) == 0:
            raise Exception(f"Output node '{associated_fundamentals}' in stage '{node_stage}' not found.")
        return matching_nodes[0]

    def compute_output_word_sizes(self):
            for node in self.nodes:
                _ = self.compute_output_word_size(node)
            something_changed = True
            while something_changed:
                something_changed = False
                for node in self.nodes:
                    if node.node_type in ["register", "mux"]:
                        # sometimes, weird stuff happens with registers and multiplexers
                        # -> better not delete any MSBs...
                        continue
                    node_o_size = self.output_word_sizes[node]
                    connected_nodes_o_sizes = [self.output_word_sizes[e.dst_node] + (0 if e.dst_node.output_shift is None else e.dst_node.output_shift) - (0 if e.shift is None else e.shift[e.dst_port if len(e.shift) > e.dst_port else 0] if type(e.shift) == list else e.shift) for e in self.edges if e.src_node == node]
                    if len(connected_nodes_o_sizes) < 1:
                        continue
                    max_o_size = max(connected_nodes_o_sizes)
                    if max_o_size < node_o_size:
                        something_changed = True
                        self.output_word_sizes[node] = max_o_size
                        break
                
    
    def compute_output_word_size(self, node):
        # check if already computed
        output_word_size = self.output_word_sizes.get(node)
        if output_word_size is not None:
            return output_word_size
        # -> compute it recursively
        # get input nodes
        input_nodes = [(edge.src_node, edge.shift, edge.dst_port) for edge in self.edges if edge.dst_node == node]
        # compute their word sizes if necessary
        input_word_sizes = []
        for input_node, input_shifts, p in input_nodes:
            w = self.output_word_sizes.get(input_node)
            if w is None:
                w = self.compute_output_word_size(input_node)
            if node.node_type == "mux":
                input_word_sizes.append(w + input_shifts[p])
            else:
                input_word_sizes.append(w + input_shifts[0])
        # handle different node types
        if node.node_type == "input":
            # INPUT NODE
            if len(input_word_sizes) != 0:
                raise Exception("Invalid input node: An input node cannot have incoming edges.")
            self.output_word_sizes[node] = self.input_word_size + self.num_fractional_bits
            return self.input_word_size
        elif node.node_type in ["add", "sub", "add_sub", "mux", "output", "register"]:
            # ADD/SUB NODE
            fundamental_word_size = []
            for f in node.associated_fundamentals:
                if all(i == 0 for i in f):
                    fundamental_word_size.append(self.num_fractional_bits + 1)
                    continue
                sum_abs = sum(abs(i) for i in f)
                if not any(i > 0 for i in f):
                    sum_abs += 1  # tie breaker
                log2_sum_abs = math.log2(sum_abs)
                w = math.ceil(log2_sum_abs) + self.input_word_size
                fundamental_word_size.append(w)
            w = max(fundamental_word_size)
            self.output_word_sizes[node] = w
            return w
        #elif node.node_type == "register":
        #    # REGISTER NODE
        #    if len(input_word_sizes) != 1:
        #        raise Exception("Invalid register node: A register node must have exactly one incoming edge.")
        #    w = input_word_sizes[0]
        #    input_shift = [e.shift[0] for e in self.edges if e.dst_node == node][0]
        #    w += input_shift
        #    self.output_word_sizes[node] = w
        #    return w
        else:
            raise Exception(f"Error during word size computation: Detected node with invalid type '{node.node_type}'.")

    def create_add_sub(self, associated_fundamentals, stage, output_shift, sub_pattern, sub_pattern_left=None, sub_pattern_right=None):
        is_pure_add = all(not s for s in sub_pattern)
        is_pure_sub = all(sub_pattern)
        if is_pure_add:
            node_type = "add"
        elif is_pure_sub:
            node_type = "sub"
        else:
            node_type = "add_sub"
        if sub_pattern_left is None and sub_pattern_right is None:
            node = AdderGraphNode(node_type, associated_fundamentals, stage, len(self.nodes), output_shift=output_shift, sub_pattern=sub_pattern)
        else:
            node = AdderGraphNode(node_type, associated_fundamentals, stage, len(self.nodes), output_shift=output_shift, sub_pattern={"left": sub_pattern_left, "right": sub_pattern_right})
        self.nodes.append(node)
        return node
    
    def create_mux(self, associated_fundamentals, stage, selection_pattern):
        node = AdderGraphNode("mux", associated_fundamentals, stage, len(self.nodes), selection_pattern=selection_pattern)
        self.nodes.append(node)
        return node
    
    def create_output(self, associated_fundamentals, stage):
        node = AdderGraphNode("output", associated_fundamentals, stage, len(self.nodes))
        self.nodes.append(node)
        self.output_nodes.append(node)
        return node
    
    def create_register(self, associated_fundamentals, stage):
        node = AdderGraphNode("register", associated_fundamentals, stage, len(self.nodes))
        self.nodes.append(node)
        return node
    
    def create_input(self, associated_fundamentals):
        node = AdderGraphNode("input", associated_fundamentals, 0, len(self.nodes))
        self.nodes.append(node)
        self.input_nodes.append(node)
        return node

    def create_edge(self, src_node, dst_node, shift, invert, dst_port):
        edge = AdderGraphEdge(src_node, dst_node, shift, invert, dst_port)
        self.edges.append(edge)
        return edge


def remove_duplicate_nodes(adder_graph_str):
    if not (adder_graph_str.startswith("{") and adder_graph_str.endswith("}")):
        raise Exception(f"remove_duplicate_nodes: invalid adder graph provided: {adder_graph_str}")
    adder_graph_str = adder_graph_str[2:-2]
    nodes = adder_graph_str.split("},{")
    unique_nodes = []
    for node in nodes:
        if node not in unique_nodes:
            unique_nodes.append(node)
    print("unique nodes:", unique_nodes)
    return "{{" + "},{".join(unique_nodes) + "}}"


def get_adder_graph_nodes(adder_graph_str):
    if not adder_graph_str.startswith("{"):
        raise Exception("Invalid adder graph: Adder graph string must start with '{'.")
    if not adder_graph_str.endswith("}"):
        raise Exception("Invalid adder graph: Adder graph string must end with '}'.")
    adder_graph_str = adder_graph_str[1:-1]  # Remove the curly braces
    if len(adder_graph_str) == 0:
        return []
    if not adder_graph_str.startswith("{"):
        raise Exception("Invalid adder graph: Adder graph nodes must start with '{'.")
    if not adder_graph_str.endswith("}"):
        raise Exception("Invalid adder graph: Adder graph nodes must end with '}'.")
    return adder_graph_str[1:-1].split("},{")  # split into nodes


def get_fundamentals_of_node(node):
    # remove node tag
    node1 = node.replace("'A',", "").replace("'R',", "").replace("'M',", "").replace("'O',", "")
    # now, we should always have the fundamentals enclosed in square brackets like this: "[...]"
    if not node1.startswith("["):
        raise Exception(f"Invalid adder graph: node '{{{node}}}' has invalid format")
    return node1[1:].partition("]")[0]


def is_adder_graph_normalized(adder_graph_str):
    nodes = get_adder_graph_nodes(adder_graph_str)
    for node in nodes:
        if not node.startswith("'A'"):
            continue
        str_after_coeffs = node.partition("],")[2]
        str_after_stage = str_after_coeffs.partition(",")[2]
        # if a normal integer comes after the stage, then it is *not* normalized
        # if another set of coefficients, enclosed in square brackets, comes after, it *is* normalized!
        return str_after_stage.startswith("[")
    return True


def get_number_of_inputs(adder_graph_str):
    nodes = get_adder_graph_nodes(adder_graph_str)
    if len(nodes) == 0:
        # empty adder graph -> no inputs
        return 0
    first_node = nodes[0]
    fundamentals = get_fundamentals_of_node(first_node)
    if fundamentals is None or len(fundamentals) == 0:
        raise Exception(f"Invalid adder graph: first node '{{{first_node}}}' has invalid format")
    configs = fundamentals.split(";")
    inputs = configs[0].split(",")
    return len(inputs)


def get_number_of_configs(adder_graph_str):
    nodes = get_adder_graph_nodes(adder_graph_str)
    if len(nodes) == 0:
        # empty adder graph -> no configs
        return 0
    first_node = nodes[0]
    fundamentals = get_fundamentals_of_node(first_node)
    if fundamentals is None or len(fundamentals) == 0:
        raise Exception(f"Invalid adder graph: first node '{{{first_node}}}' has invalid format")
    configs = fundamentals.split(";")
    return len(configs)


def remove_nan_from_fundamentals_str(fundamentals_str):
    vecs = [c.split(",") for c in fundamentals_str.split(";")]
    for i, vec in enumerate(vecs):
        if not "NaN" in vec:
            continue
        we_gucci = False
        # search before this vector entry
        j = i - 1
        while j >= 0:
            vec2 = vecs[j]
            j -= 1
            if "NaN" in vec2:
                continue
            vecs[i] = vec2
            we_gucci = True
            break
        if we_gucci:
            continue
        # search after this vector entry
        j = i+1
        while j < len(vecs):
            vec2 = vecs[j]
            j += 1
            if "NaN" in vec2:
                continue
            vecs[i] = vec2
            we_gucci = True
            break
    return ';'.join(','.join(vec) for vec in vecs)



def parse_adder_graph(adder_graph_str, number_of_inputs, number_of_configs, input_word_size, is_pipelined, is_normalized, num_fractional_bits):
    # split into nodes
    nodes = get_adder_graph_nodes(adder_graph_str)
    # init adder graph object and its input nodes
    adder_graph = AdderGraph(number_of_inputs, number_of_configs, input_word_size, is_pipelined, num_fractional_bits)
    for i in range(number_of_inputs):
        associated_fundamentals = [[2**num_fractional_bits if j == i else 0 for j in range(number_of_inputs)] for _ in range(number_of_configs)]
        adder_graph.create_input(associated_fundamentals)
    # create nodes
    for node in nodes:
        if node.startswith("'A'"):
            node = node.replace("'A',", "")
            # parse associated fundamental
            node = node.lstrip("[")
            fundamentals_str, _, node = node.partition("],")
            fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
            associated_fundamentals = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
            # parse node stage
            node_stage, _, node = node.partition(",")
            node_stage = int(node_stage)
            if not is_normalized:
                output_shift, _, node = node.partition(",")
                output_shift = int(output_shift)
            if not node.startswith("["):
                raise Exception("Invalid adder graph: Corrupt adder graph format provided for VHDL code generation!")
            node = node.lstrip("[")
            fundamentals_str, _, node = node.partition("],")
            fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
            associated_fundamentals_left = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
            node_stage_left, _, node = node.partition(",")
            node_stage_left = int(node_stage_left)
            input_shift_left, _, node = node.partition(",[")
            input_shift_left = int(input_shift_left)
            fundamentals_str, _, node = node.partition("],")
            fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
            associated_fundamentals_right = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
            node_stage_right, _, input_shift_right = node.partition(",")
            node_stage_right = int(node_stage_right)
            input_shift_right = int(input_shift_right)
            if is_normalized:
                if input_shift_left < 0 and input_shift_right < 0 and input_shift_left == input_shift_right:
                    output_shift = -input_shift_left
                    input_shift_left = 0
                    input_shift_right = 0
                else:
                    output_shift = 0
            # find left input
            left_input_node = adder_graph.find_non_output_node(associated_fundamentals_left, node_stage_left, can_invert_fundamentals_individually=True)
            # find right input
            right_input_node = adder_graph.find_non_output_node(associated_fundamentals_right, node_stage_right, can_invert_fundamentals_individually=True)
            # determine inversion patterns
            sub_pattern_left = []
            for f1, f2 in zip(left_input_node.associated_fundamentals, associated_fundamentals_left):
                if all(a == b for a, b in zip(f1, f2)):
                    sub_pattern_left.append(False)
                elif all(a == -b for a, b in zip(f1, f2)):
                    sub_pattern_left.append(True)
                else:
                    raise Exception("Internal error: Inversion pattern could not be determined.")
            sub_pattern_right = []
            for f1, f2 in zip(right_input_node.associated_fundamentals, associated_fundamentals_right):
                if all(a == b for a, b in zip(f1, f2)):
                    sub_pattern_right.append(False)
                elif all(a == -b for a, b in zip(f1, f2)):
                    sub_pattern_right.append(True)
                else:
                    raise Exception("Internal error: Inversion pattern could not be determined.")
            if any(sub_pattern_left):
                # default case is left +/- right
                # but here we might have right +/- left
                if any(sub_pattern_right):
                    for sl, sr in zip(sub_pattern_left, sub_pattern_right):
                        if sl and sr:
                            raise Exception("Invalid adder graph: Can only subtract EITHER the right input from the left input OR the right input from the left input")
                else:
                    # switch left and right input nodes / sub patterns / shifts
                    right_input_node, left_input_node = left_input_node, right_input_node
                    sub_pattern_right, sub_pattern_left = sub_pattern_left, sub_pattern_right
                    input_shift_right, input_shift_left = input_shift_left, input_shift_right
            # create node
            if any(sub_pattern_left) and any(sub_pattern_right):
                add_sub_node = adder_graph.create_add_sub(associated_fundamentals, node_stage, output_shift=output_shift, sub_pattern=[True, False], sub_pattern_left=sub_pattern_left, sub_pattern_right=sub_pattern_right)
            else:
                add_sub_node = adder_graph.create_add_sub(associated_fundamentals, node_stage, output_shift=output_shift, sub_pattern=sub_pattern_right)
            # connect it
            adder_graph.create_edge(left_input_node, add_sub_node, [input_shift_left]*adder_graph.number_of_configs, False, 0)
            adder_graph.create_edge(right_input_node, add_sub_node, [input_shift_right]*adder_graph.number_of_configs, False, 1)
        elif node.startswith("'M'"):
            original_str = node[:]
            node = node.replace("'M',", "")
            # parse associated fundamental
            node = node.lstrip("[")
            fundamentals_str, _, node = node.partition("],")
            fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
            associated_fundamentals = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
            # parse node stage
            node_stage, _, node = node.partition(",")
            node_stage = int(node_stage)
            # parse and find inputs
            associated_inputs = []
            selection_pattern = [None] * number_of_configs
            node_idx = -1
            while len(node) > 0:
                if node.startswith(","):
                    node = node[1:]
                if len(node) == 0:
                    break
                if not node.startswith("["):
                    raise Exception(f"Invalid adder graph: Invalid MUX node format: {original_str}!")
                # count node indices
                node_idx += 1
                # extract associated fundamentals
                fundamentals_str, _, node = node.lstrip("[").partition("],")
                fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
                associated_fundamentals_input = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
                # extract node stage
                node_stage_input, _, node = node.partition(",[")
                node_stage_input = int(node_stage_input)
                # extract node shifts
                shifts_str, _, node = node.partition("]")
                shifts_input = []
                ports = []
                for i, x in enumerate(shifts_str.split(";")):
                    if x == "NaN":
                        shifts_input.append(None)
                    else:
                        shifts_input.append(int(x))
                        selection_pattern[i] = node_idx
                        ports.append(i)
                # find input node
                input_node = adder_graph.find_non_output_node(associated_fundamentals_input, node_stage_input, can_invert_fundamentals_individually=True)
                ports_inverted = []
                for p in ports:
                    ports_inverted.append(any(associated_fundamentals_input[p][i] * (2**shifts_input[p]) != associated_fundamentals[p][i] for i in range(number_of_inputs)))
                associated_inputs.append([input_node, shifts_input, ports_inverted, ports])
            # create node
            mux_node = adder_graph.create_mux(associated_fundamentals, node_stage, selection_pattern=selection_pattern)
            # connect it
            for [src_node, shifts_input, ports_inverted, ports] in associated_inputs:
                for i, p in zip(ports_inverted, ports):
                    adder_graph.create_edge(src_node, mux_node, shifts_input, i, p)
        elif node.startswith("'R'"):
            node = node.replace("'R',", "")
            # parse associated fundamental
            node = node.lstrip("[")
            fundamentals_str, _, node = node.partition("],")
            fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
            associated_fundamentals = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
            # parse node stage
            node_stage, _, node = node.partition(",[")
            node_stage = int(node_stage)
            # parse src fundamentals
            fundamentals_str, _, src_node_stage = node.partition("],")
            fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
            src_associated_fundamentals = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
            # parse src stage
            if "," in src_node_stage:
                src_node_stage, src_node_shift = src_node_stage.split(",")
                src_node_stage = int(src_node_stage)
                src_node_shift = int(src_node_shift)
            else:
                src_node_stage = int(src_node_stage)
                src_node_shift = 0
            # find associated source node
            src_node = adder_graph.find_non_output_node(src_associated_fundamentals, src_node_stage, can_invert_fundamentals_individually=None)
            # create node
            reg_node = adder_graph.create_register(associated_fundamentals, node_stage)
            # connect it
            adder_graph.create_edge(src_node, reg_node, [src_node_shift]*adder_graph.number_of_configs, False, 0)
        elif node.startswith("'O'"):
            node = node.replace("'O',", "")
            # parse associated fundamental
            node = node.lstrip("[")
            fundamentals_str, _, node = node.partition("],")
            fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
            associated_fundamentals = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
            # parse node stage
            node_stage, _, node = node.partition(",[")
            node_stage = int(node_stage)
            fundamentals_str, _, node = node.partition("],")
            fundamentals_str = remove_nan_from_fundamentals_str(fundamentals_str)
            src_associated_fundamentals = [[int(x) for x in f.split(",")] for f in fundamentals_str.split(";")]
            src_node_stage, _, src_node_shift = node.partition(",")
            src_node_stage = int(src_node_stage)
            if len(src_node_shift) > 0:
                src_node_shift = int(src_node_shift)
            else:
                # pagsuite sometimes leaves out the shift and just assumes it to be zero
                src_node_shift = 0
            # find associated source node
            src_node = adder_graph.find_non_output_node(src_associated_fundamentals, src_node_stage, can_invert_fundamentals_individually=False)
            invert_src = any(any(a != (b*2**src_node_shift) for a, b in zip(f1, f2)) for f1, f2 in zip(associated_fundamentals, src_node.associated_fundamentals))
            # create node
            output_node = adder_graph.create_output(associated_fundamentals, node_stage)
            # connect it
            adder_graph.create_edge(src_node, output_node, [src_node_shift]*adder_graph.number_of_configs, invert_src, 0)
        else:
            raise Exception(f"Invalid adder graph provided: Unknown node type '{node}'.")
    adder_graph.compute_output_word_sizes()
    return adder_graph