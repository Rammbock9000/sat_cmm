//
// Created by nfiege on 9/26/22.
//

#ifndef SATCMM_CMM_H
#define SATCMM_CMM_H

#include <map>
#include <set>
#include <vector>
#include <sstream>
#include <cstdint>
#include <limits>

#define FULL_ADDERS_UNLIMITED std::numeric_limits<long>::min()
#define RECONF_SHARING_UNLIMITED -420
#define RECONF_MUX_REGISTERS_UNLIMITED std::numeric_limits<long>::min()

class cmm {
public:
	enum input_direction {
		left, right
	};
	const std::set<input_direction> input_directions = {left, right};
	enum formulation_mode {
		reset_all, only_reconf_limit, only_reconf_pipe_limit, all_FA_clauses, only_FA_limit
	};
	enum verbosity_mode {
		debug_mode, normal_mode, quiet_mode
	};

	/*!
	 * constructor
	 * @param C the vector of constants we want to compute
	 * @param timeout in seconds
	 * @param quiet true/false
	 */
	cmm(const std::vector<std::vector<std::vector<int>>> &C, int timeout, verbosity_mode verbosity, int threads,
			bool allow_negative_numbers, bool write_cnf, int fundamental_fractional_bits);
	
	/*!
	 * format the matrix C as a pretty string and detect case (SCM/MCM/SOP/CMM) as well as reconfigurability
	 */
	static std::string get_matrix_as_pretty_string(const std::vector<std::vector<std::vector<int>>> &C);

	/*!
	 * define the minimum number of needed adders to help the algorithm converge faster
	 * @param new_min_add value
	 */
	void set_min_add(int new_min_add);

	/*!
	 * define the maximum number of adders in order to stop searching at some point 
	 * (e.g., useful if you use this tool for local searches)
	 * @param new_max_add value
	 */
	void set_max_add(int new_max_add);

	/*!
	 * define the maximum number of MUXes (do _not_ confuse with the MUX2 bound!) for 
	 * reconfigurable multipliers
	 * this e.g. influences the number of pipeline registers 
	 * => a low value reduces such registers
	 * => but it also might increase adder count because solutions become infeasible
	 * @param new_max_num_muxes new value
	 */
	void set_max_num_muxes(int new_max_num_muxes);

	/*!
	 * define the number of bypassed adders for reconfigurable circuits
	 * -> this is relevant to enable MUX-MUX-connections
	 * @param new_bypassed_adders value
	 */
	void set_bypassed_adders(int new_bypassed_adders);

	/*!
	 * manually define the internal word size
	 * @param new_word_size value
	 */
	void manually_define_internal_word_size(int new_word_size);

	/*!
	 * limit the maximum adder depth to the given value
	 * @param new_adder_depth_limit value
	 */
	void set_adder_depth_limit(int new_adder_depth_limit);

	/*!
	 * define whether all solutions shall be enumerated or only the optimal solution is of interest
	 * @param new_enumerate_all value
	 */
	void set_enumerate_all(bool new_enumerate_all);

	/*!
	 * also minimize full adders for the optimal number of adder nodes during this->solve()
	 */
	void also_minimize_full_adders();

	/*!
	 * DO NOT keep the outputs ordered as requested for reconfigurable multipliers
	 * e.g., you requested "-3" and "5" for config #0 as well as "13" and "-22" for config #1
	 * THEN output 0 can also give you either -3x / -22x and output 1 gives you 5x / 13x
	 * If you do not call this prior to solving, then the solver is guaranteed to give you -3x / 13x at port 0 and 5x / -22x at port 1
	 */
	void allow_reconfigurable_output_permutations();

	/*!
	 * also allow a shift at each node's output during this->solve()
	 * this reduces the number of needed adders in very few corner cases by 1 at the cost of an increased runtime
	 */
	void allow_node_output_shift();

	/*!
	 * only permit solutions with minimal adder depth by calling this function prior to solving
	 */
	void minimize_adder_depth();

	/*!
	 * assume that the adder graph will be implemented with a pipeline stage after each adder stage
	 * => optimize for that
	 * => minimize the total number of registered operations
	 * => i.e., an adder is "as expensive" as a register
	 */
	void enable_pipelining();

	/*!
	 * force all outputs (within the same config) into the same pipeline stage
	 */
	void equalize_output_stages();
	/*!
	 * force all outputs ACROSS ALL CONFIGS into the same pipeline stage
	 */
	void equalize_output_stages_across_configs();
	/*!
	 * call this to normalize the adder graph
	 */
	void set_normalize_adder_graph();

	/*!
	 * allow the solver to choose whether to implement a coefficient C_i or -C_i
	 * depending on the implementation costs
     * -> do not use together with implement_signs_as_requested!!!
	 */
	void ignore_sign();

    /*!
     * force the solver to implement the sign exactly as requested
     * sometimes this makes it use one more adder (e.g., y=-5*x needs 2 adders whereas y=5*x only needs 1)
     * but sometimes costs are equal so you can use this setting to get exactly what you want
     * -> do not use together with ignore_sign!!!
     */
    void implement_signs_as_requested();
	/*!
	 * solve the problem
	 */
	void solve();

	/*!
	 * print solution values
	 */
	void print_solution();

	/*!
	 * sign extend x and return that badboy
	 * @param x 2's complement number with w bits
	 * @param w word size of x
	 * @return sign extended x
	 */
	static int64_t sign_extend(int64_t x, int w);

	/*!
	 * visit 'https://gitlab.com/kumm/pagsuite' for info
	 * @return a string that uniquely describes the resulting adder graph
	 */
	std::string get_adder_graph_description();

	/*!
	 * @return whether the computed solution is optimal
	 *   -> [0]: optimal w.r.t. number of add operations
	 *   -> [1]: optimal w.r.t. number of reconfigurable multiplexers
	 *   -> [2]: optimal w.r.t. number of reconfigurable multiplexer registers
	 *   -> [3]: optimal w.r.t. bit-level costs (i.e., full adders or flip-flops)
	 */
	std::tuple<int, int, int, int> solution_is_optimal();

    /*!
     * check if a vector is a unit vector
     * @param vec the vector to check
     * @param num_fractional_bits the number of fractional bits in the given vector (i.e., a unit vector is a vector with length 2^num_fractional_bits)
     * @return the answer
     */
    static bool is_unit_vector(const std::vector<int> &vec, int num_fractional_bits=0);

    /*!
     * check if a vector is an all-zero vector
     * @param vec the vector to check
     * @return the answer
     */
    static bool is_zero_vector(const std::vector<int> &vec);

    /*!
     * check if a vector only has one non-zero coefficient which is a power of two
     * @param vec the vector to check
     * @return the answer
     */
    static bool is_power_of_two_vector(const std::vector<int> &vec);

    /*!
     * check if a vector only has non-negative values
     * @param vec the vector to check
     * @return the answer
     */
    static bool is_non_negative_vector(const std::vector<int> &vec);

	/*!
	 * @return the number of configurations of the CMM circuit
	 */
	inline int c_num_configs() { return static_cast<int>(this->C.size()); }

	/*!
	 * @return the number of outputs of the CMM circuit (i.e., the number of matrix rows)
	 */
	inline int c_column_size(int r) { return static_cast<int>(this->C[r].size()); }

	/*!
	 * alias for c_column_size()
	 */
	inline int c_num_outputs(int r) { return this->c_column_size(r); }

	/*!
	 * @return the number of inputs of the CMM circuit (i.e., the number of coefficients in each matrix row)
	 */
	int c_row_size();

	/*!
	 * alias for c_row_size()
	 */
	inline int c_num_inputs() { return this->c_row_size() == 0?this->num_inputs_before_normalize:this->c_row_size(); }
	
	/*!
	 * number of necessary output ports to support all configurations
	 */
	int c_num_output_ports(int r = -1);

protected:
	/*!
	 * check feasibility after constructing the problem
	 * @return whether the problem is feasible
	 */
	virtual std::pair<bool, bool> check();

	/*!
	 * get result value for the variable with index "var_idx" if a solution was found
	 * @param var_idx
	 * @return the value
	 */
	virtual int get_result_value(int var_idx);

	/*!
	 * reset the solver backend
	 */
	virtual void reset_backend(formulation_mode mode);

	/*!
	 * create new variable (if backend needs it)
	 * @param idx variable index (=name)
	 */
	virtual void create_new_variable(int idx);

	/*!
	 * helper function to create an arbitrary clause:
	 * @param a < variable idx, negate >
	 *   -> negate the variable if negate == true
	 */
	virtual void create_arbitrary_clause(const std::vector<std::pair<int, bool>> &a);

	///////////////////////////////////////////////////
	//// create clauses for the following circuits ////
	///////////////////////////////////////////////////
	/*!
	 * clauses for a full adder (i.e., 3:2 compressor)
	 * @param a < variable, whether the bit should be negated at the adder input >
	 * @param b < variable, whether the bit should be negated at the adder input >
	 * @param c_i < variable, whether the bit should be negated at the adder input >
	 * @param sum < variable, whether the bit should be negated at the adder output >
	 * @param c_o < variable, whether the bit should be negated at the adder output >
	 */
	virtual void
	create_full_adder(std::pair<int, bool> a, std::pair<int, bool> b, std::pair<int, bool> c_i, std::pair<int, bool> sum,
										std::pair<int, bool> c_o = {-1, false});

	/*!
	 * clauses for a half adder (i.e., 2:2 compressor, a full adder with c_i=0)
	 * @param a < variable, whether the bit should be negated at the adder input >
	 * @param b < variable, whether the bit should be negated at the adder input >
	 * @param sum < variable, whether the bit should be negated at the adder output >
	 * @param c_o < variable, whether the bit should be negated at the adder output >
	 */
	virtual void create_half_adder(std::pair<int, bool> a, std::pair<int, bool> b, std::pair<int, bool> sum,
																 std::pair<int, bool> c_o = {-1, false});

	/*!
	 * disallow shifting bits that are not equal to the sign bit
	 * clauses are:
	 *   1) -sel -s_a  a
	 *   2) -sel  s_a -a
	 * @param sel
	 * @param s_a
	 * @param a
	 */
	virtual void create_signed_shift_overflow_protection(int sel, int s_a, int a);

	/*!
	 * disallow overflows for signed additions/subtractions (sub=1: subtraction, sub=0: addition)
	 * clauses are:
	 *   1)  sub  s_a  s_b -s_y
	 *   2)  sub -s_a -s_b  s_y
	 *   3) -sub  s_a -s_b -s_y
	 *   4) -sub -s_a  s_b  s_y
	 * @param sub
	 * @param s_a
	 * @param s_b
	 * @param s_y
	 */
	virtual void create_signed_add_overflow_protection(int sub, int s_a, int s_b, int s_y);

	/*!
	 * force x_0 or x_1 or ... x_n = 1
	 * clauses are:
	 *   1) x_0 x_1 x_2 ...
	 * @param a
	 * @param b
	 */
	virtual void create_or(std::vector<int> &x);

	/*!
	 * force a -> b
	 * clauses are:
	 *   1) -a  b
	 * @param a
	 * @param b
	 */
	virtual void create_1x1_implication(int a, int b);

	/*!
	 * force a -> !b
	 * clauses are:
	 *   1) -a  -b
	 * @param a
	 * @param b
	 */
	virtual void create_1x1_negated_implication(int a, int b);

	/*!
	 * force !a -> b
	 * clauses are:
	 *   1)  a   b
	 * @param a
	 * @param b
	 */
	virtual void create_1x1_reversed_negated_implication(int a, int b);

	/*!
	 * force a -> (b_0 or b_1 or ...)
	 *   1) -a  b_0  b_1 ...
	 * @param a
	 * @param b
	 */
	virtual void create_1xN_implication(int a, const std::vector<int> &b);

	/*!
	 * force (a_0 and a_1 and ...) -> (b_0 or b_1 or ...)
	 *   1) -a_0 -a_1 ...  b_0  b_1 ...
	 * @param a
	 * @param b
	 */
	virtual void create_MxN_implication(const std::vector<int> &a, const std::vector<int> &b);

	/*!
	 * force y = x
	 * clauses are:
	 *   1) -x  y
	 *   2)  x -y
	 * @param x
	 * @param y
	 */
	virtual void create_1x1_equivalence(int x, int y);

	/*!
	 * force y = s ? a : b
	 * clauses are:
	 *   1) -a     s  y
	 *   2)    -b -s  y
	 *   3)     b -s -y
	 *   4)  a     s -y
	 *   5) -a -b     y
	 *   6)  a  b    -y
	 * @param a
	 * @param b
	 * @param s
	 * @param y
	 */
	virtual void create_2x1_mux(int a, int b, int s, int y);

	/*!
	 * force y = s ? a : b AND not (s and a)
	 * clauses are:
	 *   1) -a        y
	 *   2)    -b -s  y
	 *   3)     b -s -y
	 *   4)  a     s -y
	 *   5) -a    -s
	 *   6)  a  b    -y
	 * @param a
	 * @param b
	 * @param s
	 * @param y
	 */
	virtual void create_2x1_mux_shift_disallowed(int a, int b, int s, int y);

	/*!
	 * force y = s ? a : b where b = 0
	 * => y = !s and a
	 * clauses are:
	 *   1)    -s -y
	 *   2)  a    -y
	 *   3) -a  s  y
	 * @param a
	 * @param s
	 * @param y
	 */
	virtual void create_2x1_mux_zero_const(int a, int s, int y);

	/*!
	 * force y = a XOR b
	 * clauses are:
	 *   1)  a  b -y
	 *   2)  a -b  y
	 *   3) -a  b  y
	 *   4) -a -b -y
	 * @param a
	 * @param b
	 * @param y
	 */
	virtual void create_2x1_xor(int a, int b, int y);

	/*!
	 * force y = not (a XOR b)
	 * clauses are:
	 *   1)  a  b  y
	 *   2)  a -b -y
	 *   3) -a  b -y
	 *   4) -a -b  y
	 * @param a
	 * @param b
	 * @param y
	 */
	virtual void create_2x1_equiv(int a, int b, int y);

	/*!
	 * force y = a OR b
	 * clauses are:
	 *   1)  a  b -y
	 *   2) -a     y
	 *   3)    -b  y
	 * @param a
	 * @param b
	 * @param y
	 */
	virtual void create_2x1_or(int a, int b, int y);

	/*!
	 * force y = a AND b
	 * clauses are:
	 *   1) -a -b  y
	 *   2)  a    -y
	 *   3)     b -y
	 * @param a
	 * @param b
	 * @param y
	 */
	virtual void create_2x1_and(int a, int b, int y);

	/*!
	 * force y = a AND (not b)
	 * clauses are:
	 *   1) -a  b  y
	 *   2)  a    -y
	 *   3)    -b -y
	 * @param a
	 * @param b
	 * @param y
	 */
	virtual void create_2x1_and_b_inv(int a, int b, int y);

	/*!
	 * force s to be the sum output of a full adder
	 * clauses are:
	 *   1)  a -b  c_i  s
	 *   2) -a  b  c_i  s
	 *   3)  a  b  c_i -s
	 *   4) -a -b  c_i -s
	 *   5)  a -b -c_i -s
	 *   6) -a  b -c_i -s
	 *   7)  a  b -c_i  s
	 *   8) -a -b -c_i  s
	 * @param a
	 * @param b
	 * @param c_i
	 * @param s
	 */
	virtual void create_add_sum(int a, int b, int c_i, int s);

	/*!
	 * force c_o to be the carry output of a full adder
	 * clauses are:
	 *   1) -a -b       c_o
	 *   2)  a     c_i -c_o
	 *   3)     b  c_i -c_o
	 *   4)  a  b      -c_o
	 *   5)    -b -c_i  c_o
	 *   6) -a    -c_i  c_o
	 * @param a
	 * @param b
	 * @param c_i
	 * @param c_o
	 */
	virtual void create_add_carry(int a, int b, int c_i, int c_o);

	/*!
	 * these clauses are not needed but increase performance during unit propagation
	 * clauses are:
	 *   1)  a         -s -c_o
	 *   2)     b      -s -c_o
	 *   3)        c_i -s -c_o
	 *   4) -a          s  c_o
	 *   5)    -b       s  c_o
	 *   6)       -c_i  s  c_o
	 * @param a
	 * @param c_i
	 * @param s
	 * @param c_o
	 */
	virtual void create_add_redundant(int a, int b, int c_i, int s, int c_o);

	/*!
	 * sharing_var implies (var_1 == var_2)
	 * clauses are:
	 *   1)  -var_1  var_2 -sharing_var
	 *   2)   var_1 -var_2 -sharing_var
	 * @param var_1
	 * @param var_2
	 * @param sharing_var
	 */
	virtual void create_equivalence_sharing_implication(int var_1, int var_2, int sharing_var);

	/*!
	 * set x = val
	 * @param x
	 * @param val must be 0 or 1
	 */
	virtual void force_bit(int x, int val);

	/*!
	 * force x != num
	 * @param x vector that contains all bits
	 * @param num
	 */
	virtual void forbid_number(const std::vector<int> &x, int val);

	/*!
	 * force x == num
	 * @param x vector that contains all bits
	 * @param num
	 */
	virtual void force_number(const std::vector<int> &x, int val);

	/*!
	 * create clauses for one bit of a "ripple-carry" version of the computation "c = max(a,b)", where a,b,c are integers
	 * @param a_i current bit for a
	 * @param b_i current bit for b
	 * @param x_i current bit that determines whether "a >= b" was already determined in a previous stage
	 * @param y_i current bit that determines whether x_i is valid (i.e., could be determined, yet)
	 * @param c_o current output bit for the result
	 * @param x_o serves as "x_i" in the next stage
	 * @param y_o serves as "y_i" in the next stage
	 */
	virtual void create_max_cell(int a_i, int b_i, int x_i, int y_i, int c_o, int x_o, int y_o);

	/*!
	 * @param n
	 * @return ceil(log2(n))
	 */
	int ceil_log2(int n);

	/*!
	 * @param n
	 * @return floor(log2(n))
	 */
	int floor_log2(int n);

	/*!
	 * count #variables
	 */
	int variable_counter = 0;
	/*!
	 * count #constraints
	 */
	int constraint_counter = 0;

	/*!
	 * the constant(s) by which we want to multiply
	 * -> C[r] is the matrix for configuration r
	 * -> C[r][v] is the v'th vector for configuration r
	 * -> C[r][v][c] is the c'th coefficient of vector v in configuration r
	 */
	std::vector<std::vector<std::vector<int>>> C;
	/*!
	 * store info whether or not the negative version of a coefficient was requested by the user
	 * key: <configuration index, vector of coefficients>
	 */
	std::map<std::pair<int, std::vector<int>>, bool> inverted_coeff_requested;
	/*!
	 * < config idx, coeff idx > -> yes/no
	 * store info whether the solver can decide to implement C or -C
	 * this is only relevant when ...
	 *   ... minimizing full adders
	 *   ... the solver is allowed to use negative numbers
	 *   ... doing MCM/CMM
	 */
    std::map<std::pair<int, int>, bool> sign_inversion_allowed;
    /*!
     * force the solver to implement coefficient signs exactly as requested
     * default: false, gets set by this->implement_signs_as_requested
     */
    bool implement_coeff_signs_as_requested = false;
	/*!
	 * word size of all operations
	 */
	int word_size;
	/*!
	 * whether the word size was manually defined by the user
	 */
	bool word_size_manually_defined = false;
	/*!
	 * fractional bits of all fundamentals
	 */
	int fundamental_fractional_bits;
	/*!
	 * maximum allowed shift
	 */
	int max_shift;
	/*!
	 * word size of the corresponding node input
	 */
	int shift_word_size;
	/*!
	 * word size for adder depth computation (relevant for min adder depth constraint and for pipelining)
	 */
	int adder_depth_word_size;
	/*!
	 * if set, force each node to *either* have an input left shift *or* an output right shift, but never both!
	 */
	bool normalize_adder_graph = false;
	/*!
	 * whether to permit only solutions with minimal adder depth
	 */
	bool force_min_adder_depth = false;
	/*!
	 * value for the optimum adder depth 
	 * -> this includes the multiplexers in case of a reconfigurable circuit
	 */
	int opt_adder_depth = 0;
	/*!
	 * limit the number of bypassed adders for reconfigurable circuits
	 * -> this is relevant to enable MUX-MUX-connections
	 */
	int num_bypassed_adders = 0;

	/*!
	 * used to compute this->opt_adder_depth before solving
	 */
	void compute_opt_adder_depth_value();

	/*!
	 * prepare internal data structures for solving with reconfigurable circuits if necessary
	 */
	void preprocess_reconf();

	/*!
	 * preprocess the requested constants
	 */
	void preprocess_constants();

	/*!
	 * whether to assume a fully pipelined adder graph
	 * -> i.e., minimize the number of registered operations (#reg_add + #reg_pure)
	 */
	bool pipelining_enabled = false;
	/*!
	 * force all outputs into the same pipeline stage
	 */
	bool force_output_stages_equal = false;
	/*!
	 * force all outputs OVER ALL CONFIGURATIONS into the same pipeline stage
	 */
	bool force_output_stages_equal_across_configs = false;
	/*!
	 * current number of adders
	 */
	int num_adders = 0;
    /*!
     * minimum number of adders given by user
     */
    int num_adders_given_by_user = 0;
    /*!
     * maximum number of adders given by user
     */
    int max_adders_given_by_user = -1;
	/*!
	 * keep track how to get the requested constants from the computed nodes (relevant if constants are negative or even)
	 * < config idx, requested constant > -> < adder node output, number of shifted bits >
	 * e.g. "18 -> < 9, 1 >" because 18 is computed from 9 left-shifted by 1 bit
	 */
	//std::map<std::pair<int, std::vector<int>>, std::pair<std::vector<int>, int>> requested_vectors;
	std::vector<std::pair<std::pair<int, std::vector<int>>, std::pair<std::vector<int>, int>>> requested_vectors;
	/*!
	 * if we found a solution, yet
	 */
	bool found_solution = false;
	/*!
	 * if we ran into a timeout during solving
	 */
	bool ran_into_timeout = false;
	/*!
	 * the solution has the optimal number of adders
	 */
	bool num_add_opt = false;
	/*!
	 * the solution has the optimal number of reconfiguration multiplexers
	 */
	bool num_reconf_mux_opt = false;
	/*!
	 * the solution has the optimal number of reconfiguration multiplexer registers
	 */
	bool num_reconf_mux_reg_opt = false;
	/*!
	 * the solution has the optimal number of full adders
	 */
	bool num_FA_opt = false;
	/*!
	 * solver timeout
	 */
	int timeout;
	/*!
	 * remaining timeout after having already performed some optimization passes
	 */
	int remaining_timeout;
	/*!
	 * define cout level
	 */
	verbosity_mode verbosity;
	/*!
	 * the number of CPU threads the backend is allowed to use
	 */
	int threads;
	/*!
	 * also write the corresponding cnf files for all solving attempts
	 * e.g. 521_2.cnf for C = 521 and #adders = 2
	 * e.g. 412_532_2.cnf for V = <412,532> and #adders  = 2
	 */
	bool write_cnf;
	/*!
	 * whether we are performing all computation in 2's complement
	 * i.e. at least one coefficient is negative
	 */
	bool calc_twos_complement;
	/*!
	 * whether we also minimize the number of full adders for the minimum number of adders
	 */
	bool minimize_full_adders = false;
	/*!
	 * whether we want to keep the outputs ordered as requested
	 */
	bool keep_output_order = true;
	/*!
	 * whether we also allow a shift at each node's output
	 */
	bool enable_node_output_shift = false;

	/*!
	* whether the solver supports incremental solving
	* @return default = true (overload derived class if this is not the case)
	*/
	virtual bool supports_incremental_solving() const { return true; }

    /*!
     * creates a .cnf file for the current SAT problem
     */
    void create_cnf_file(const std::string &filename);

    /*!
     * must be overloaded e.g. for the executable-based solver backend
     * @return whether the solver needs cnf generation to work properly
     */
    virtual bool needs_cnf_generation() const { return false; }

private:
	/*!
	 * whether to include 2:1 reconfiguration MUX optimization in the clauses
	 */
	bool model_reconfiguration() { return this->C.size() > 1 and this->min_reconf_mux_sharing > RECONF_SHARING_UNLIMITED; }
	/*!
	 * number of CMM inputs before normalizing the matrix 
	   -> for matrices containing only unit vectors, the whole matrix gets optimized away
	 */
	int num_inputs_before_normalize;
    /*!
     * @return internal word size for the subtract input that's used to compute the final bit-level cost
     */
    int get_word_size_sub();
    /*!
     * word size of the result when summing up all vector elements of the coefficients
     */
    int abs_coefficient_sum_width = 0;
	/*!
	 * whether we want to enumerate all solutions for minimum adder count
	 */
	bool enumerate_all = false;

    /*!
     * cache already enumerated solutions for non-incremental solvers
     */
    std::vector<std::vector<std::pair<int, bool>>> already_enumerated_solutions_cache;

	/*!
	 * main solving method after some internal preprocessing
	 */
	void actually_solve();

    /*!
     * with pipelining enabled: bit-level costs reflect the number of registers
     * with pipelining disabled: bit-level costs reflect the number of bit-adders (i.e., full/half adders)
     * @return the bit-level costs needed to implement the current solution
     */
    int compute_full_bit_level_costs_from_solution();

	/*!
	 * limit on the number of full adders used
	 * FULL_ADDERS_UNLIMITED = no limit
	 */
	long int max_full_adders = FULL_ADDERS_UNLIMITED;

    /*!
     * two connections can eliminate a 2:1 MUX when all following conditions hold:
	 * - src and dst adder are the same
	 * - dst adder input port is the same
	 * - input shift is the same
     * @return the number of eliminated 2:1 MUXs to implement the current solution
     */
    int compute_reconf_mux_sharing_from_solution();

	/*!
	 * lower bound for the sharing
	 * RECONF_SHARING_UNLIMITED = no limit
	 */
	long int min_reconf_mux_sharing = RECONF_SHARING_UNLIMITED;

    /*!
     * Each MUX has a register on its output. 
	 * And sometimes the solver instantiates registers without MUXs for pipeline balancing
     * @return the number of MUX registers to implement the current solution
     */
    int compute_reconf_mux_registers_from_solution();

	/*!
	 * upper bound for the dedicated MUX registers in the pipelining case
	 * RECONF_MUX_REGISTERS_UNLIMITED = no limit
	 */
	long int max_reconf_mux_registers = RECONF_MUX_REGISTERS_UNLIMITED;
	/*!
	 * store all cnf clauses for cnf file generation
	 */
	std::stringstream cnf_clauses;

	/*!
	 * get solution from backend and store result in containers below
	 */
	void get_solution_from_backend();

	/*!
	 * verify whether the found solution is valid
	 * @return if it is valid
	 */
	bool solution_is_valid();

	/////////////////////////////////////
	// RESULTS FROM THE SOLVER BACKEND //
	/////////////////////////////////////
	/*!
	 * < config idx, node idx, left/right > -> int value
	 */
	std::map<std::tuple<int, int, input_direction>, int> input_select;
	/*!
	 * < config idx, node idx, left/right, input idx > -> int value
	 */
	std::map<std::tuple<int, int, input_direction, int>, int> input_select_mux_output;
	/*!
	 * < config idx, node idx > -> int value
	 */
	std::map<std::pair<int, int>, int> shift_value;
	/*!
	 * < config idx, node idx > -> 1/0
	 */
	std::map<std::pair<int, int>, int> negate_select;
	/*!
	 * < config idx, node idx > -> 1/0
	 */
	std::map<std::pair<int, int>, int> subtract;
	/*!
	 * < config idx, node idx, input idx > -> int value
	 */
	std::map<std::tuple<int, int, int>, int> add_result_values;
	/*!
	 * <config idx, node idx> -> int value
	 */
	std::map<std::pair<int, int>, int> post_adder_shift_value;
	/*!
	 * < config idx, node idx, input idx > -> int value
	 */
	std::map<std::tuple<int, int, int>, int> output_values;
	/*!
	 * < config idx, output idx > -> int value
	 */
	std::map<std::pair<int, int>, int> output_node_assignments;
	/*!
	 * < requested output vector idx > -> int value
	 */
	std::map<size_t, int> output_port_assignments;
	/*!
	 * < config idx, output idx > -> int value
	 */
	std::map<std::pair<int, int>, int> output_shifts;
	/*!
	 * < config idx, output idx > -> 1/0
	 */
	std::map<std::pair<int, int>, int> output_negations;
    /*!
     * <node idx, vector idx> -> int value
     */
    std::map<std::pair<int, int>, int> abs_coeff_values;
    /*!
     * node idx -> int value
     */
    std::map<int, int> abs_coeff_sum_values;
	/*!
	 * node idx -> int value
	 */
	std::map<int, int> coeff_word_size_values;
	/*!
	 * node idx -> int value
	 */
	std::map<int, int> can_cut_msb_values;
	/*!
	 * node idx -> int value
	 */
	std::map<int, int> coeff_word_size_sum_values;
	/*!
	 * node idx -> int value
	 */
	std::map<int, int> shift_gain_values;
	/*!
	 * node idx -> int value
	 */
	std::map<int, int> shift_sum_values;
	/*!
	 * node idx -> 1/0
	 */
	std::map<int, int> is_register;
	/*!
	 * node idx -> 1/0
	 */
	std::map<int, int> is_bypassed_adder;
	/*!
	 * < config idx, node idx > -> int value
	 */
	std::map<std::pair<int, int>, int> pipeline_stage;
	/*!
	 * <config idx, node idx> -> int value
	 */
	std::map<std::pair<int, int>, int> other_shift_value;
	/*!
	 *  number of additional full adders for the current solution
	 */
	int num_FAs_value;
	/*!
	 *  number of shared reconfiguration MUXs for the current solution 
	 */
	int num_reconf_sharing_value;
	/*!
	 *  upper bound for this->num_reconf_sharing_value
	 */
	int upper_bound_max_sharing_value = -1;
	/*!
	 * upper bound for the max reconfiguration mux register sum
	 */
	int upper_bound_reconf_mux_reg_sum = -1;

	/*!
	 * create backend solver variables and keep track of their indices
	 */
	void create_variables();

	/*!
	 * create solver constraints
	 */
	void create_constraints(formulation_mode mode);

	/*!
	 * construct the problem (everything needed for solving)
	 */
	void construct_problem(formulation_mode mode);

	/*!
	 * optimize #adders or #full_adders within this loop
	 */
	void optimization_loop(formulation_mode mode);

	/*!
	 * check if vector has only positve values after they were flipped in the constructor
	 * the solver can then allow sign inversion for this vector
	 * @param v current vector to check
	 * @return true when vector is all positive else false
	 */
	bool vector_all_positive(const std::vector<int> &v);

	/*!
	 * cache values for ceil(log2(n))
	 */
	std::map<int, int> ceil_log2_cache;
	/*!
	 * cache values for floor(log2(n))
	 */
	std::map<int, int> floor_log2_cache;

	/*!
	 * holds the adder graph of the last solution found
	 */
	std::string adder_graph_str;

	//////////////////////////////
	//// CREATE ALL VARIABLES ////
	//////////////////////////////

	void clear_variable_containers();

	/************************/
	// general
	/************************/
	void create_input_node_variables(); // idx < #inputs are the input nodes that have a constant value as output

	void create_input_select_mux_variables(int idx);

	void create_input_select_selection_variables(int idx);

	void create_input_shift_value_variables(int idx);

	void create_shift_internal_variables(int idx);

	void create_input_negate_select_variable(int idx);

	void create_negate_select_output_variables(int idx);

	void create_input_negate_value_variable(int idx);

	void create_xor_output_variables(int idx);

	void create_adder_internal_variables(int idx);

	void create_post_adder_input_shift_value_variables(int idx);

	void create_post_adder_shift_variables(int idx);

	void create_normalize_adder_graph_variables(int idx);

	void create_output_value_variables(int idx);

	void create_mcm_output_variables(int idx);

	/************************/
	// pipelining
	/************************/

	void create_input_node_depth_variables(); // idx < #inputs are the input nodes that start with depth 0

	void create_adder_depth_variables(int idx);

	void create_pipelining_variables(int idx);

	void create_output_tracking_variables(int idx);

	void create_output_stage_eq_variables();

	/************************/
	// reconfiguration
	/************************/

	// base
	void create_other_input_shift_value_variables(int idx);

	void create_other_shift_internal_variables(int idx);

	void create_reconf_sharing_variables(int idx);

	void create_bypassed_adder_variables(int idx);

	void create_reconf_output_select_variables();

	void create_reconf_output_shift_variables();

	void create_reconf_output_negate_variables();

	void create_reconf_output_sharing_variables();

	// pipelining
	void create_need_adder_mux_variables(int idx);

	void create_need_output_mux_variables();

	void create_output_depth_variables();


	////////////////////////////////
	//// CREATE ALL CONSTRAINTS ////
	////////////////////////////////

	/************************/
	// general
	/************************/
	void create_input_output_constraints(formulation_mode mode);

	void create_input_select_constraints(int idx, formulation_mode mode);

	void create_input_select_limitation_constraints(int idx, formulation_mode mode);

	void create_shift_limitation_constraints(int idx, formulation_mode mode);

	void create_shift_constraints(int idx, formulation_mode mode);

	void create_negate_select_constraints(int idx, formulation_mode mode);

	void create_xor_constraints(int idx, formulation_mode mode);

	void create_adder_constraints(int idx, formulation_mode mode);

	void create_post_adder_shift_limitation_constraints(int idx, formulation_mode mode);

	void create_post_adder_shift_constraints(int idx, formulation_mode mode);

	void create_normalize_adder_constraints(int idx, formulation_mode mode);

	void create_odd_fundamentals_constraints(int idx, formulation_mode mode);

	void create_mcm_output_constraints(formulation_mode mode);

	void create_mcm_input_constraints(formulation_mode mode);

	/************************/
	// bit-level optimization
	/************************/

	void create_full_adder_coeff_word_size_constraints(int idx, formulation_mode mode);

	void create_full_adder_msb_constraints(int idx, formulation_mode mode);

	void create_full_adder_coeff_word_size_sum_constraints(int idx, formulation_mode mode);

	void create_full_adder_shift_gain_constraints(int idx, formulation_mode mode);

	void create_full_adder_shift_sum_constraints(int idx, formulation_mode mode);

	void create_full_adder_msb_sum_constraints(formulation_mode mode);

	void create_full_adder_add_subtract_inputs_constraints(formulation_mode mode);

	void create_full_adder_cpa_constraints(formulation_mode mode);

	void create_full_adder_result_constraints();

	/************************/
	// pipelining
	/************************/

	void create_adder_depth_computation_select_constraints(int idx, formulation_mode mode);

	void create_adder_depth_computation_max_constraints(int idx, formulation_mode mode);

	void create_adder_depth_computation_add_constraints(int idx, formulation_mode mode);

	void create_adder_depth_computation_limit_constraints(int idx, formulation_mode mode);

	void create_pipelining_input_stage_equality_constraints(int idx, formulation_mode mode);

	void create_pipelining_output_stage_equality_at_adders_constraints(int idx, formulation_mode mode);

	/************************/
	// reconfiguration
	/************************/

	// adder nodes

	void create_other_shift_limitation_constraints(int idx, formulation_mode mode);

	void create_other_shift_constraints(int idx, formulation_mode mode);

	void create_reconf_sharing_constraints(int idx, formulation_mode mode);

	void create_bypassed_adder_constraints(int idx, formulation_mode mode);

	void create_bypassed_right_mux_constraints(int idx, formulation_mode mode);

	void create_reconf_sharing_summation_constraints(formulation_mode mode);

	void create_reconf_sharing_overlap_constraints(formulation_mode mode);

	void create_reconf_output_selection_constraints(formulation_mode mode);

	void create_reconf_output_shift_constraints(formulation_mode mode);

	void create_reconf_output_negation_constraints(formulation_mode mode);

	void create_reconf_output_identical_inversion_constraints(formulation_mode mode);

	void create_reconf_output_sharing_constraints(formulation_mode mode);

	void create_reconf_sharing_limitation_constraints(formulation_mode mode);

	void create_bypassed_adder_limitation_constraints(formulation_mode mode);

	// pipelining

	void create_adder_depth_mux_increase_constraints(int idx, formulation_mode mode);

	void create_adder_needs_mux_constraints(int idx, formulation_mode mode);

	void create_outputs_need_mux_constraints(formulation_mode mode);

	void create_output_depth_selection_constraints(formulation_mode mode);

	void create_adder_depth_computation_post_mux_add_constraints(formulation_mode mode);

	void create_adder_depth_computation_limit_at_outputs_constraints(formulation_mode mode);

	void create_mux_register_sum_constraints(formulation_mode mode);

	void create_mux_register_sum_limitation_constraints(formulation_mode mode);

	/************************/
	// enumeration
	/************************/

	void prohibit_current_solution();

	/************************/
	// helpers
	/************************/

	/*!
	 * helper function to create a bitheap in SAT
	 * @param x with x.size() = #columns and x[col_idx].size() = column_height
	 * @return the resulting bitvector after compression
	 */
	std::vector<int> create_bitheap(const std::vector<std::pair<std::vector<int>, bool>> &x);

	/*!
	 * helper function to create an upper limit for a given number, represented as a bit-vector
	 * @param bits vector containing all the bits for the number which should be upper bounded
	 * @param upper_limit the maximum number that the bit vector is allowed to take
	 * @param is_signed whether the bit vector represents a signed number in 2's complement format
	 */
	void create_upper_limit(std::vector<int> bits, int upper_limit, bool is_signed);

	/*!
	 * helper function to create a lower limit for a given number, represented as a bit-vector
	 * @param bits vector containing all the bits for the number which should be upper bounded
	 * @param lower_limit the minimum number that the bit vector is allowed to take
	 * @param is_signed whether the bit vector represents a signed number in 2's complement format
	 */
	void create_lower_limit(std::vector<int> bits, int lower_limit, bool is_signed);
	
	/*!
	 * fill container this->coeff_idx_mapping
	 */
	void establish_coeff_idx_mapping();
	/*!
	 * < requested constant vector position index > -> corresponding variable index (e.g., used as "mcm constant" in this->mcm_output_variables)
	 */
	std::vector<int> coeff_idx_mapping;
	/*!
	 * re-define word size for reconfigurable constants
	 */
	void re_define_word_size_for_reconf();

	///////////////////////////////////
	//// INDICES FOR ALL VARIABLES ////
	//////////////////////////////////////////////////
	//// THE FIRST VARIABLE INDEX STARTS WITH 1!! ////
	//////////////////////////////////////////////////
	/*************************************************************/
	// general
	/*************************************************************/
	/*!
	 * < config idx, node idx, left/right, mux idx, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, input_direction, int, int, int>, int> input_select_mux_variables;
	/*!
	 * < config idx, node idx, left/right, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, input_direction, int, int>, int> input_select_mux_output_variables;
	/*!
	 * < config idx, node idx, left/right, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, input_direction, int>, int> input_select_selection_variables;
	/*!
	 * < config idx, node idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> input_shift_value_variables;
	/*!
	 * < config idx, node idx, mux stage, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int, int>, int> shift_internal_mux_output_variables;
	/*!
	 * < config idx, node idx, bit, input idx > -> variable idx
	 * !!! identical to the last MUX stage of shift_internal_mux_output_variables
	 */
	std::map<std::tuple<int, int, int, int>, int> shift_output_variables;
	/*!
	 * < config idx, node idx > -> variable idx
	 */
	std::map<std::pair<int, int>, int> input_negate_select_variables;
	/*!
	 * < config idx, node idx, left/right, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, input_direction, int, int>, int> negate_select_output_variables;
	/*!
	 * < config idx, node idx > -> variable idx
	 */
	std::map<std::pair<int, int>, int> input_negate_value_variables;
	/*!
	 * < config idx, node idx, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int>, int> xor_output_variables;
	/*!
	 * < config idx, node idx, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int>, int> adder_carry_variables;
	/*!
	 * < config idx, node idx, bit > -> variable idx
	 * used for optimized adder clauses
	 */
	std::map<std::tuple<int, int, int>, int> adder_XOR_internal_variables;
	/*!
	 * < config idx, node idx, bit, input idx > -> variable idx
	 * !!! node idx = 0 is the input node with constant value 0
	 */
	std::map<std::tuple<int, int, int, int>, int> adder_output_value_variables;
	/*!
	 * < config idx, node idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> input_post_adder_shift_value_variables;
	/*!
	 * < config idx, node idx, mux stage, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int, int>, int> post_adder_shift_internal_mux_output_variables;
	/*!
	 * < config idx, node idx, bit, input idx > -> variable idx
	 * !!! identical to the last MUX stage of shift_internal_mux_output_variables
	 */
	std::map<std::tuple<int, int, int, int>, int> post_adder_shift_output_variables;
	/*!
	 * < config idx, node idx, bit, input idx > -> variable idx
	 * !!! node idx = 0, 1 ... c_num_inputs are input nodes with values according to the unit vectors
	 */
	std::map<std::tuple<int, int, int, int>, int> output_value_variables;
	/*!
	 * < config idx, node idx, mcm constant > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> mcm_output_variables;
	/*!
	 * check if a specific mcm output variable exists
	 * @param config_idx
	 * @param mcm_constant_idx
	 * @return true <=> variable exists
	 */
	bool mcm_output_variable_exists(int config_idx, int mcm_constant_idx);
	/*!
	 * < config idx, node idx > -> variable idx
	 */
	std::map<std::pair<int, int>, int> normalize_adder_graph_input_shift_variables;
	/*!
	 * < config idx, node idx > -> variable idx
	 */
	std::map<std::pair<int, int>, int> normalize_adder_graph_output_shift_variables;

	/*************************************************************/
	// full adder optimization variables
	/*************************************************************/
    /*!
     * < node idx, vector idx, bit > -> variable idx
     */
    std::map<std::tuple<int, int, int>, int> full_adder_coeff_word_size_abs_adder_value_variables;
    /*!
     * < node idx, bit > -> variable idx
     */
    std::map<std::tuple<int, int>, int> full_adder_coeff_word_size_abs_sum_variables;
    /*!
     * < node idx, bit > -> variable idx
     */
    std::map<std::tuple<int, int>, int> full_adder_coeff_word_size_abs_sum_minus_one_variables;
    /*!
     * < node idx, bit > -> variable idx
     */
    std::map<std::tuple<int, int>, int> full_adder_coeff_word_size_variables;
	/*!
	 * < idx, stage, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> full_adder_coeff_word_size_internal_variables;
	/*!
	 * < idx, stage, bit > -> variable idx
	 */
	std::map<std::tuple<int, int>, int> full_adder_coeff_word_size_internal_carry_input_variables;
    /*!
     * < node idx > -> variable idx
     */
    std::map<int, int> full_adder_msb_variables;
    /*!
     * < < node idx, input idx > > -> variable idx
     */
    std::map<std::pair<int, int>, int> full_adder_coeff_positive_variables;
    /*!
     * < node idx > -> variable idx
     */
    std::map<int, int> full_adder_at_least_one_positive_variables;
	/*!
	 * < idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int>, int> full_adder_word_size_sum_variables;
	/*!
	 * < idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int>, int> full_adder_shift_gain_variables;
	/*!
	 * < idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int>, int> full_adder_shift_sum_variables;
	/*!
	 * < bit > -> variable idx
	 */
	std::map<int, int> full_adder_msb_sum_variables;
	/*!
	 * < bit > -> variable idx
	 */
	std::map<int, int> full_adder_add_subtract_inputs_variables;
	/*!
	 * < bit > -> variable idx
	 */
	std::map<int, int> full_adder_cpa_internal_variables;
	/*!
	 * < bit > -> variable idx
	 */
	std::map<int, int> full_adder_result_variables;
	/*!
	 * < bit > -> variable idx
	 */
	std::map<int, int> full_adder_comparator_ok_variables;
	/*!
	 * < bit > -> variable idx
	 */
	std::map<int, int> full_adder_comparator_carry_variables;
	/*************************************************************/
	// adder depth & pipelining variables
	/*************************************************************/
	/*!
	 * < confix idx, idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> adder_depth_variables;
	/*!
	 * < confix idx, idx, direction, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, input_direction, int>, int> adder_depth_computation_input_variables;
	/*!
	 * < confix idx, idx, direction, mux idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, input_direction, int, int>, int> adder_depth_computation_input_mux_variables;
	/*!
	 * < confix idx, idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> adder_depth_computation_max_variables;
	/*!
	 * < confix idx, idx > -> variable idx
	 */
	std::map<std::pair<int, int>, int> input_stages_equal_variables;
	/*!
	 * < confix idx, bit > -> variable idx
	 */
	std::map<int, int> output_stage_eq_variables;
	/*!
	 * < idx > -> variable idx
	 */
	std::map<int, int> node_is_output_variables;
	/*************************************************************/
	// reconfiguration variables
	/*************************************************************/
	// -> adder nodes
	/**********************/
	/*!
	 * < config idx, node idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> input_other_shift_value_variables;
	/*!
	 * < config idx, node idx, mux stage, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int, int>, int> other_shift_internal_mux_output_variables;
	/*!
	 * < config idx, node idx, bit, input idx > -> variable idx
	 * !!! identical to the last MUX stage of other_shift_internal_mux_output_variables
	 */
	std::map<std::tuple<int, int, int, int>, int> other_shift_output_variables;
	/*!
	 * < config idx 1, config idx 2, idx, direction > -> variable idx
	 * -> whether 'config 1' and 'config 2' can share a MUX port in adder 'idx' on input port 'direction'
	 */
	std::map<std::tuple<int, int, int, input_direction>, int> config_can_be_shared_variables;
	/*!
	 * < config idx 1, config idx 2, idx > -> variable idx
	 * -> whether 'config 1' and 'config 2' can share a MUX port in adder 'idx' on on the right input port, including the info whether the adder is bypassed
	 */
	std::map<std::tuple<int, int, int >, int> config_can_be_shared_including_bypass_variables;
	/*!
	 * < bit > -> variable idx
	 */
	std::map<int, int> config_sharing_result_variables;
	/*!
	 * < node idx > -> variable idx
	 */
	std::map<int, int> is_bypassed_adder_variables;
	/**********************/
	// -> outputs
	/**********************/
	/*!
	 * < config idx, node idx, mux idx, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int, int>, int> output_select_mux_variables;
	/*!
	 * < config idx, node idx, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int>, int> output_select_mux_output_variables;
	/*!
	 * < config idx, node idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> input_output_select_selection_variables;
	/*!
	 * < config idx, output idx, bit > -> variable idx
	 */
	std::map<std::tuple<int, int, int>, int> input_output_shift_value_variables;
	/*!
	 * < config idx, output idx, mux stage, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int, int>, int> output_shift_internal_mux_output_variables;
	/*!
	 * < config idx, output idx, bit, input idx > -> variable idx
	 * !!! identical to the last MUX stage of output_shift_internal_mux_output_variables
	 */
	std::map<std::tuple<int, int, int, int>, int> output_shift_output_variables;
	/*!
	 * < config idx, output idx > -> variable idx
	 */
	std::map<std::pair<int, int>, int> input_output_negate_value_variables;
	/*!
	 * < config idx, output idx, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int>, int> output_negate_value_variables;
	/*!
	 * < config idx, output idx, bit, input idx > -> variable idx
	 */
	std::map<std::tuple<int, int, int, int>, int> output_actual_value_variables;
	/*!
	 * < config idx 1, config idx 2, output idx, > -> variable idx
	 * -> whether output with idx in 'config 1' and 'config 2' can share a MUX port
	 */
	std::map<std::tuple<int, int, int>, int> output_can_be_shared_variables;
	/**********************/
	// -> pipelining
	/**********************/
	/*!
	 * < confix idx, idx, direction, bit > -> variable idx
	 * -> adder depth at the given port after accounting for a potential multiplexer due to reconfiguration
	 */
	std::map<std::tuple<int, int, input_direction, int>, int> adder_depth_computation_input_post_mux_add_variables;
	/*!
	 * < config idx, adder idx, direction > -> variable idx
	 * -> whether adder with the given idx in 'config' needs a MUX at the input given by 'direction'
	 */
	std::map<std::tuple<int, int, input_direction>, int> adder_in_config_needs_mux_variables;
	/*!
	 * < adder idx, direction > -> variable idx
	 * -> whether adder 'adder idx' as a whole needs a MUX at the input given by 'direction'
	 */
	std::map<std::pair<int, input_direction>, int> adder_needs_mux_variables;
	/*!
	 * < config idx, idx, bit > -> variable idx
	 * -> adder depth at the given output, depending on the chosen adder node source
	 */
	std::map<std::tuple<int, int, int>, int> adder_depth_computation_output_source_variables;
	/*!
	 * < confix idx, idx, mux idx, bit > -> variable idx
	 * -> multiplexer internal variables for the adder depth at the given output, depending on the chosen adder node source
	 */
	std::map<std::tuple<int, int, int, int>, int> adder_depth_computation_output_source_mux_variables;
	/*!
	 * < confix idx, idx, bit > -> variable idx
	 * -> adder depth at the given output, depending on the chosen adder node source, after accounting for the potential mux
	 */
	std::map<std::tuple<int, int, int>, int> adder_depth_computation_output_post_mux_add_variables;
	/*!
	 * < config idx, output idx > -> variable idx
	 * -> whether the output with the given idx in 'config' needs a MUX
	 */
	std::map<std::tuple<int, int>, int> output_in_config_needs_mux_variables;
	/*!
	 * < output idx > -> variable idx
	 * -> whether the output with the given idx as a whole needs a MUX
	 */
	std::map<int, int> output_needs_mux_variables;
	/*!
	 * < bit > -> variable idx
	 * -> record the number of multiplexer registers needed for a pipelined implementation 
	 */
	std::map<int, int> reconf_mux_reg_sum_variables;
	/*************************************************************/
	// 0/1 constants
	/*************************************************************/
	/*!
	 * a variable that is forced to 1
	 */
	int const_one_bit = -1;
	/*!
	 * a variable that is forced to 0
	 */
	int const_zero_bit = -1;

	/*!
	 * init this->const_one_bit if not yet initialized
	 * @return this->const_one_bit after init
	 */
	int init_const_one_bit();

	/*!
	 * init this->const_zero_bit if not yet initialized
	 * @return this->const_zero_bit after init
	 */
	int init_const_zero_bit();
};


#endif //SATCMM_CMM_H
