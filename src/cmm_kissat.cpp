//
// Created by nfiege on 05/19/2023.
//

#include "cmm_kissat.h"
#include <iostream>

#ifdef USE_KISSAT

cmm_kissat::cmm_kissat(const std::vector<std::vector<std::vector<int>>> &C, int timeout, verbosity_mode verbosity, bool allow_negative_numbers, bool write_cnf, int fundamental_fractional_bits)
        : cmm(C, timeout, verbosity, 1, allow_negative_numbers, write_cnf, fundamental_fractional_bits){}

void cmm_kissat::reset_backend(formulation_mode mode) {
    // always create new solver since kissat does not support incremental solving
    this->solver = std::make_unique<kissatpp::kissatpp>(timeout);
    // must call parent method AFTER initializing a new solver instance due to incremental workaround
    cmm::reset_backend(mode);
}

std::pair<bool, bool> cmm_kissat::check() {
    auto stat = this->solver->solve();
    auto sat = stat == KISSAT_SAT;
    auto unsat = stat == KISSAT_UNSAT;
    auto to = !sat and !unsat;
    return {sat, to};
}

int cmm_kissat::get_result_value(int var_idx) {
    return this->solver->value(var_idx) > 0 ? 1 : 0;
}

void cmm_kissat::create_arbitrary_clause(const std::vector<std::pair<int, bool>> &a) {
    cmm::create_arbitrary_clause(a);
    for (auto &it : a) {
        if (it.second) {
            this->solver->add(-it.first);
        }
        else {
            this->solver->add(it.first);
        }
    }
    this->solver->add(0);
}

#endif //USE_KISSAT
