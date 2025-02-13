#pragma once

#include <memory>
#include <set>
#include <algorithm>
#include <utility>
#include <iostream>

#include "Query.h"

using namespace std;

// Word sets (Q / TestWords)
template <typename A>
using Words = std::unordered_set<std::vector<A>, vector_state_hash>;

template <typename A>
using WordsPtr = std::shared_ptr<Words<A>>;

template <typename A>
using FA = typename Query<A>::FA;

template <typename A>
using TransitionKey = typename FA<A>::TransitionKey;

template <typename A>
using Transitions = typename FA<A>::Transitions;

// Transition table
template <typename A>
using TPtr = std::shared_ptr<Transitions<A>>;

// Follows closely from https://www.tifr.res.in/~shibashis.guha/courses/diwali2021/L-starMalharManagoli.pdf
template <typename A>
class LStar {
public:
    explicit LStar(std::shared_ptr<Query<A>> query) : query(std::move(query)) {}
    ~LStar() = default;
    FA<A> run() {
        WordsPtr<A> states = std::make_shared<Words<A>>();
        states->insert(std::vector<A>{});
        WordsPtr<A> testWords = std::make_shared<Words<A>>();
        testWords->insert(std::vector<A>{});

        auto alphabet = query->getAlphabet();

        std::vector<A> startState{};

        while (true) {
            auto transitions = close(states, testWords).second;
            WordsPtr<A> finalStates = std::make_shared<Words<A>>();
            std::copy_if(states->begin(), states->end(),
                         std::inserter(*finalStates, finalStates->end()),
                         [this](const std::vector<A>& word) { return query->membershipQuery(word); });
            FA<A> machine{
                alphabet,
                states,
                transitions,
                startState,
                finalStates
            };
            ///////////////////////////////////////////
            cout << "=======================" << endl;
            cout << "Test words: " << endl;
            for (const auto& testWord : *testWords) {
                cout << "\"";
                for (const auto& c : testWord) {
                    cout << c;
                }
                cout << "\"" << endl;
            }
            cout << "#states" << endl;
            for (const auto& state : *states) {
                cout << "s";
                for (const auto& c : state) {
                   cout << c;
                }
                cout << endl;
            }
            cout << "#initial" << endl;
            cout << "s" << endl;
            cout << "#accepting" << endl;
            for (const auto& s : *finalStates) {
                cout << "s";
                for (const auto& c: s) {
                    cout << c;
                }
                cout << endl;
            }
            cout << "#alphabet" << endl;
            for (const auto& c: *alphabet) {
                cout << c << endl;
            }
            cout << "#transitions" << endl;
            for (const auto& kv : *transitions) {
                cout << "s";
                for (const auto& c : kv.first.first) {
                    cout << c;
                }
                cout << ":" << kv.first.second << ">s";
                for (const auto& c : kv.second) {
                    cout << c;
                }
                cout << endl;
            }
            ///////////////////////////////////////////
            auto counterExample = query->equivalenceQuery(machine);
            if (!counterExample) {
                return machine;
            }
            auto ctrEx = *counterExample;
            auto [newState, newTest] = extend(states, transitions, ctrEx);
            states->insert(newState);
            testWords->insert(newTest);
        }
        cout << "End of DFA Generation" << endl;
    }

private:
    int count = 0;
    std::shared_ptr<Query<A>> query;
    bool areIndistinguishable(WordsPtr<A> testWords,
                            const std::vector<A>& a,
                            const std::vector<A>& b) {
        for (auto& testWord : *testWords) {
            if (query->membershipQuery(append(a, testWord)) !=
                query->membershipQuery(append(b, testWord))) {
                return false;
            }
        }
        return true;
    }

    std::pair<WordsPtr<A>, TPtr<A>> close(WordsPtr<A> states,
                                       WordsPtr<A> testWords) {
        TPtr<A> transitions = std::make_shared<Transitions<A>>();
        auto alphabet = query->getAlphabet();
        for (const auto& q : *states) {
            for (const auto& a : *alphabet) {
                for (const auto& r : *states) {
                    if (areIndistinguishable(testWords, append(q, {a}), r)) {
                        transitions->insert({{q, a}, r});
                        break;
                    }
                }
                // dfa is not closed since there is no r that is T-equiv to qa
                // add new state qa to states, to close while maintaining separability
                if (transitions->find({q, a}) == transitions->end()) {
                    auto q_a = append(q, {a});
                    states->insert(q_a);
                    transitions->insert({{q, a}, q_a});
                }
            }
        }
        return {states, transitions};
    }

    std::pair<std::vector<A>, std::vector<A>> extend(WordsPtr<A> states,
                                                     TPtr<A> transitions,
                                                     const std::vector<A>& ctrEx) {
        auto ctrExMembership = query->membershipQuery(ctrEx);
        std::vector<A> newState = {};
        int i = 0;
        cout << "ctrEx: ";
        for (const auto& c : ctrEx) {
            cout << c;
        }
        cout << endl;
        while (true) {
            auto a = ctrEx[i];
            auto rest = std::vector<A>(ctrEx.begin() + i + 1, ctrEx.end());
            std::vector<A> q{};
            if (transitions->find({newState, a}) != transitions->end()) {
                q = transitions->at({newState, a});
            }
            cout << "q: ";
            for (const auto& c : q) {
                cout << c;
            }
            cout << endl;
            if (query->membershipQuery(append(q, rest)) !=
                ctrExMembership) {
                return {append(newState, {a}), rest};
            } else {
                newState = q;
                i++;
            }
        }
    }

    // create new appended word
    static std::vector<A> append(const std::vector<A>& a,
                                 const std::vector<A>& b) {
        std::vector<A> res{};
        res.reserve(a.size() + b.size());
        res.insert(res.end(), a.begin(), a.end());
        res.insert(res.end(), b.begin(), b.end());
        return res;
    }
};
