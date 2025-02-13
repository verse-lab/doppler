#pragma once

#include <set>
#include <utility>
#include <vector>
#include <string>
#include <memory>
#include <unordered_map>
#include <unordered_set>

#include "RE_RegularExpression.hpp"

template <typename T>
bool isEqualState(std::vector<T> s1, std::vector<T> s2)
{
	if (s1.size() != s2.size())
	{
		return false;
	}
	int len = s1.size();

	for (int i = 0; i < len; i++)
	{
		if (s1[i] != s2[i])
		{
			return false;
		}
	}
	return true;
}

template <typename T, typename THash = std::hash<T>>
bool isFinalState(T s1, std::unordered_set<T, THash> as)
{
	return as.find(s1) != as.end();
}

template <typename StateHash, typename AlphaHash>
struct pair_key_hash {
    template <class T1, class T2>
    std::size_t operator () (const std::pair<T1, T2> &p) const {
        return StateHash{}(p.first) ^ AlphaHash{}(p.second);
    }
};

struct new_state_hash {
    template <typename State, typename StateHash = std::hash<State>>
    std::size_t operator () (const std::unordered_set<State, StateHash> &p) const {
        std::size_t h1 = p.size();
        for (auto &i : p)
        {
            h1 ^= StateHash{}(i);
        }
        return h1;
    }
};

// https://stackoverflow.com/questions/20511347/a-good-hash-function-for-a-vector
struct vector_state_hash {
    template <class T>
    std::size_t operator () (const std::vector<T> &p) const {
        std::size_t h1 = p.size();
        for (auto &i: p) {
            h1 ^= i + 0x9e3779b9 + (h1 << 6) + (h1 >> 2);
        }
        return h1;
    }
};

template <typename State, typename Alpha,
        typename StateHash = std::hash<State>, typename AlphaHash = std::hash<Alpha>>
class FiniteAutomaton;

template <typename State, typename Alpha,
        typename StateHash = std::hash<State>, typename AlphaHash = std::hash<Alpha>>
class NonDetFiniteAutomaton {
public:
    using TransitionKey = std::pair<State, Alpha>;
    using Transitions = std::unordered_map<TransitionKey, std::unordered_set<State, StateHash>, pair_key_hash<StateHash, AlphaHash>>;
    using NewState = std::unordered_set<State, StateHash>;
    using NewDFA = FiniteAutomaton<NewState, Alpha, new_state_hash, AlphaHash>;

    NonDetFiniteAutomaton(std::shared_ptr<std::unordered_set<Alpha, AlphaHash>> alphabet,
                          std::shared_ptr<std::unordered_set<State, StateHash>> states,
                          std::shared_ptr<Transitions> transitions,
                          State startState,
                          std::shared_ptr<std::unordered_set<State, StateHash>> acceptStates)
            : alphabet(std::move(alphabet)), states(std::move(states)), transitions(std::move(transitions)),
            startState(std::move(startState)), acceptStates(std::move(acceptStates)) {}
    ~NonDetFiniteAutomaton() = default;

    NewDFA toDFA() {
        auto newStates = std::make_shared<std::unordered_set<NewState, new_state_hash>>();
        auto newAcceptStates = std::make_shared<std::unordered_set<NewState, new_state_hash>>();
        auto newTransitions = std::make_shared<std::unordered_map<std::pair<NewState, Alpha>, NewState, pair_key_hash<new_state_hash, AlphaHash>>>();

        // fix later
        auto e = std::numeric_limits<Alpha>::max();

        auto eClose = [&](const NewState &state) {
            NewState result = state;
            std::vector<State> stack;
            for (const State &s: state) {
                stack.push_back(s);
            }
            while (!stack.empty()) {
                State s = stack.back();
                stack.pop_back();
                if (transitions->find({s, e}) != transitions->end()) {
                    for (const State &nextState: transitions->at({s, e})) {
                        if (result.find(nextState) == result.end()) {
                            result.insert(nextState);
                            stack.push_back(nextState);
                        }
                    }
                }
            }
            return result;
        };

        std::vector<NewState> newStatesQueue;
        NewState newStartState = eClose({startState});
        newStatesQueue.push_back(newStartState);

        while (!newStatesQueue.empty()) {
            NewState currState = newStatesQueue.back();
            newStatesQueue.pop_back();
            newStates->insert(currState);

            for (const Alpha &c: *alphabet) {
                NewState newState;
                for (const State &s: currState) {
                    if (transitions->find({s, c}) != transitions->end()) {
                        for (const State &nextState: transitions->at({s, c})) {
                            NewState eCloseState = eClose({nextState});
                            newState.insert(eCloseState.begin(), eCloseState.end());
                        }
                    }
                }
                newTransitions->insert({{currState, c}, newState});
                if (newStates->find(newState) == newStates->end()) {
                    newStatesQueue.push_back(newState);
                }
                if (newAcceptStates->find(newState) == newAcceptStates->end()) {
                    for (const State &s: newState) {
                        if (acceptStates->find(s) != acceptStates->end()) {
                            newAcceptStates->insert(newState);
                            break;
                        }
                    }
                }
            }
        }

        return FiniteAutomaton<NewState, Alpha, new_state_hash, AlphaHash>(
                alphabet,
                newStates,
                newTransitions,
                newStartState,
                newAcceptStates
        );
    }

private:
    std::shared_ptr<std::unordered_set<Alpha, AlphaHash>> alphabet;
    std::shared_ptr<std::unordered_set<State, StateHash>> states;
    std::shared_ptr<Transitions> transitions;
    State startState;
    std::shared_ptr<std::unordered_set<State, StateHash>> acceptStates;
};

// concrete DFA class
template <typename State, typename Alpha, typename StateHash, typename AlphaHash>
class FiniteAutomaton {
public:
    using TransitionKey = std::pair<State, Alpha>;
    using Transitions = std::unordered_map<TransitionKey, State, pair_key_hash<StateHash, AlphaHash>>;

    FiniteAutomaton(std::shared_ptr<std::unordered_set<Alpha, AlphaHash>> alphabet,
                    std::shared_ptr<std::unordered_set<State, StateHash>> states,
                    std::shared_ptr<Transitions> transitions,
                    const State& startState,
                    std::shared_ptr<std::unordered_set<State, StateHash>> acceptStates)
        : alphabet(alphabet), states(states), transitions(transitions),
        startState(startState), acceptStates(acceptStates) {}
    ~FiniteAutomaton() = default;

    [[nodiscard]] bool accepts(const State& word) const {
        State currentState = startState;
        for (const Alpha &c: word) {
            if (transitions->find({currentState, c}) == transitions->end()) {
                return false;
            }
            currentState = transitions->at({currentState, c});
        }
        return acceptStates->find(currentState) != acceptStates->end();
    }

    void minimize() {
        // set of 2-states
        std::vector<std::unordered_set<State, StateHash>> distinguishable;
        // <p, q>, p \in F, q \notin F
        for (const auto& p: *acceptStates) {
            for (const auto& q: *states) {
                if (acceptStates->find(q) == acceptStates->end()) {
                    distinguishable.push_back({p, q});
                }
            }
        }

        bool changed = true;
        // build distinguishable set
        while (changed) {
            changed = false;
            for (const auto& p: *states)  {
                for (const auto& q: *states) {
                    if (p != q && std::find(distinguishable.begin(), distinguishable.end(),
                              std::unordered_set<State, StateHash>{p, q}) == distinguishable.end()) {
                        bool isDistinguishable = false;
                        for (const auto& a: *alphabet) {
                            State pNext = transitions->at({p, a});
                            State qNext = transitions->at({q, a});
                            if (std::find(distinguishable.begin(), distinguishable.end(),
                                          std::unordered_set<State, StateHash>{pNext, qNext}) != distinguishable.end()) {
                                isDistinguishable = true;
                                break;
                            }
                        }
                        if (isDistinguishable) {
                            distinguishable.push_back({p, q});
                            changed = true;
                        }
                    }
                }
            }
        }

        std::unordered_set<State, StateHash> reachable;
        // build reachable states
        std::vector<State> stack;
        stack.push_back(startState);
        while (!stack.empty()) {
            State currentState = stack.back();
            stack.pop_back();
            reachable.insert(currentState);
            for (const auto& a: *alphabet) {
                State nextState = transitions->at({currentState, a});
                if (reachable.find(nextState) == reachable.end()) {
                    stack.push_back(nextState);
                }
            }
        }

        cout << "Built reachable" << endl;

        // set of n-states
        std::vector<std::unordered_set<State, StateHash>> equivalentStates;

        // construct equivalent classes of reachable states
        for (const auto& p: reachable) {
            bool found = false;
            for (auto& eq: equivalentStates) {
                if (eq.find(p) != eq.end()) {
                    found = true;
                    break;
                }
            }
            if (!found) {
                std::unordered_set<State,StateHash> eq;
                eq.insert(p);
                for (const auto& q: reachable) {
                    if (p != q && std::find(distinguishable.begin(), distinguishable.end(),
                              std::unordered_set<State, StateHash>{p, q}) == distinguishable.end()) {
                        eq.insert(q);
                    }
                }
                equivalentStates.push_back(eq);
            }
        }

        cout << "Built equivalent states" << endl;

        // build minimized DFA
        auto newStates = std::make_shared<std::unordered_set<State, StateHash>>();
        auto newTransitions = std::make_shared<Transitions>();

        for (const auto& eq: equivalentStates) {
            State representative = *eq.begin();
            newStates->insert(representative);
            for (const auto& a: *alphabet) {
                State nextState = transitions->at({representative, a});
                for (const auto& eq2: equivalentStates) {
                    if (eq2.find(nextState) != eq2.end()) {
                        newTransitions->insert({{representative, a}, *eq2.begin()});
                        break;
                    }
                }
            }
        }

        State newStartState;
        for (const auto& eq: equivalentStates) {
            if (eq.find(startState) != eq.end()) {
                newStartState = *eq.begin();
                break;
            }
        }

        auto newAcceptStates = std::make_shared<std::unordered_set<State, StateHash>>();
        for (const auto& eq: equivalentStates) {
            for (const auto& s: *acceptStates) {
                if (eq.find(s) != eq.end()) {
                    newAcceptStates->insert(*eq.begin());
                    break;
                }
            }
        }

        cout << "Built min-DFA" << endl;
        states = newStates;
        transitions = newTransitions;
        startState = newStartState;
        acceptStates = newAcceptStates;
    }

    [[nodiscard]] Transitions getTransitions() const {
        return *transitions;
    }

    std::unordered_set<State, StateHash> getStateList() {
        return *states;
    }

    State getStartState(){
        return startState;
    }

    std::unordered_set<State, StateHash> getAcceptStates(){
        return *acceptStates;
    }

    std::unordered_set<Alpha, AlphaHash> getAlphabetSet(){
        return *alphabet;
    }

    // Produces FA that describes precisely the given set of examples
    static auto from(std::set<std::vector<uint32_t>>& examples)
            -> typename NonDetFiniteAutomaton<std::vector<uint32_t>, uint32_t, vector_state_hash>::NewDFA {
        using VState = std::vector<uint32_t>;
        using VStateHash = vector_state_hash;

        // Convert the regular expression to an NFA
        using NewTransitionKey = std::pair<VState, uint32_t>;
        using NewTransitions = std::unordered_map<NewTransitionKey, std::unordered_set<VState, VStateHash>, pair_key_hash<VStateHash, AlphaHash>>;

        auto alphabet = std::make_shared<std::unordered_set<uint32_t>>();
        auto states = std::make_shared<std::unordered_set<VState, VStateHash>>();
        auto transitions = std::make_shared<NewTransitions>();
        auto acceptStates = std::make_shared<std::unordered_set<VState, VStateHash>>();

        VState startState = {};
        // fix later
        VState acceptState = { std::numeric_limits<uint32_t>::max() };
        auto e = std::numeric_limits<uint32_t>::max();

        states->insert(startState);
        states->insert(acceptState);
        acceptStates->insert(acceptState);

        cout << "num examples: " << examples.size() << endl;

        for (const auto &example: examples) {
            VState previousState;
            VState currentState = startState;

            for (const Alpha &c: example) {
                alphabet->insert(c);
                previousState = currentState;
                currentState.push_back(c);
                if (transitions->find({previousState, c}) == transitions->end()) {
                    transitions->insert({{previousState, c}, {currentState}});
                } else {
                    transitions->at({previousState, c}).insert(currentState);
                }
                states->insert(currentState);
            }

            transitions->insert({{currentState, e}, {acceptState}});
        }

        cout << "num nfa states: " << states->size() << endl;
        cout << "num nfa transitions: " << transitions->size() << endl;

        return NonDetFiniteAutomaton<VState, Alpha, VStateHash, AlphaHash>{
            alphabet,
            states,
            transitions,
            startState,
            acceptStates
        }.toDFA();
    }

    void printStats() {
        cout << "num alphabet: " << alphabet->size() << endl;
        cout << "num states: " << states->size() << endl;
        cout << "num transitions: " << transitions->size() << endl;
    }

private:
    std::shared_ptr<std::unordered_set<Alpha, AlphaHash>> alphabet;
    std::shared_ptr<std::unordered_set<State, StateHash>> states;
    std::shared_ptr<Transitions> transitions;
    State startState;
    std::shared_ptr<std::unordered_set<State, StateHash>> acceptStates;
};
