//
// Created by nfiege on 05/19/2023.
//

#ifndef SATSCM_CMM_KISSAT_H
#define SATSCM_CMM_KISSAT_H

#ifdef USE_KISSAT

#include <cmm.h>
#include <kissatpp.hpp>
#include <memory>

class cmm_kissat : public cmm {

#define KISSAT_SAT 10
#define KISSAT_UNSAT 20

public:
    cmm_kissat(const std::vector<std::vector<std::vector<int>>> &C, int timeout, verbosity_mode verbosity, bool allow_negative_numbers, bool write_cnf, int fundamental_fractional_bits);

protected:
    std::pair<bool, bool> check() override;
    void reset_backend(formulation_mode mode) override;
    int get_result_value(int var_idx) override;

    void create_arbitrary_clause(const std::vector<std::pair<int, bool>> &a) override;
	bool supports_incremental_solving() const override { return false; }

private:
    std::unique_ptr<kissatpp::kissatpp> solver;
};

#endif //USE_KISSAT

#endif //SATSCM_CMM_KISSAT_H
