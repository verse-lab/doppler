#pragma once

#include <string>
#include <optional>

#include "FiniteAutomaton.h"

template <typename A>
class Query {
public:
    using VectorState = std::vector<A>;
    using FA = FiniteAutomaton<VectorState, A, vector_state_hash>;

    virtual bool membershipQuery(const std::vector<A>& word) = 0;
    virtual std::optional<VectorState> equivalenceQuery(const FA& word) = 0;
    virtual std::shared_ptr<std::unordered_set<A>> getAlphabet() = 0;
    virtual ~Query() = default;
};
