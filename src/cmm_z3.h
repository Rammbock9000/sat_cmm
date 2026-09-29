//
// Created by nfiege on 9/30/22.
//

#ifndef SATCMM_CMM_Z3_H
#define SATCMM_CMM_Z3_H

#ifdef USE_Z3

#include <cmm.h>
#include <z3++.h>
#include <chrono>
#include <memory>
#include <utility>
#include <vector>


class cmm_z3 : public cmm {
public:
	cmm_z3(const std::vector<std::vector<std::vector<int>>> &C, int timeout, verbosity_mode verbosity, int threads, bool allow_negative_numbers, bool write_cnf, int fundamental_fractional_bits);

protected:
	std::pair<bool, bool> check() override;
	void reset_backend(formulation_mode mode) override;
	int get_result_value(int var_idx) override;
	void create_new_variable(int idx) override;

	void create_arbitrary_clause(const std::vector<std::pair<int, bool>> &a) override;

private:
	z3::context context;
	z3::solver solver;
	std::vector<z3::expr> variables;
};

#endif //USE_Z3

#endif //SATCMM_CMM_Z3_H
