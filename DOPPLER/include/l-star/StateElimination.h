#pragma once

#include <set>
#include <algorithm>

#include "FiniteAutomaton.h"

template <typename A>
class StateElimination {
public:
    StateElimination(FiniteAutomaton<A> dfa) {dfa = dfa; regex="";};
    ~StateElimination() = default;
    std::string DFAToRegex() {
        // TODO
        return regex;
    }


private:
    FiniteAutomaton<A> dfa;
    string regex;
}