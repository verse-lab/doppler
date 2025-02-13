#pragma once

#include "l-star/Query.h"
#include "langGenerator.h"

using A = uint32_t;
A MAX_A = std::numeric_limits<A>::max();
A MIN_A = std::numeric_limits<A>::min();

class DopplerQuery: public Query<A> {
public:
    explicit DopplerQuery(const language& lang, int num_negative = 20) : Query() {
        // need to link the number to origin statement
        if (lang.stmts.size() > MAX_A - MIN_A) {
            throw std::invalid_argument("Warning: The number of statements in the language is too large");
        }
        A letter = MIN_A;
        alphabet = std::make_shared<std::unordered_set<A>>();
        for (auto stmt : lang.stmts) {
            charToValidStmt[letter] = stmt;
            validStmtToChar[stmt] = letter;
            stmt->alphabetID = "vs"+std::to_string(letter); // GStmt stores pointers, alphabetIDs update as well.
            alphabet->insert(letter);
            letter++;
        }
        // cout << "update GStmt alphabetID" << endl;
        // for (auto gstmts_it : lang.grammar_stmts) {
        //     for( Stmt *st : gstmts_it->gstmt){
        //         for (const auto stmt : lang.stmts){
        //             if(stmt->getLine()!=st->getLine()){
        //                 st->alphabetID = stmt->alphabetID;
        //                 }
        //             }
        //         }
        //     }
        // }
        cout << "[+] update trace hashmap key..." << endl;
        for (auto gstmts_it : lang.grammar_stmts) {
            gstmts_it->traceHash="";
            string tmp="";
            for( const auto st : gstmts_it->gstmt){
                tmp += st->alphabetID; // TODO: get hash value
            }
            gstmts_it->traceHash=tmp;
        }
        cout << "[+] num grammar stmts: " << lang.grammar_stmts.size() << endl;
        for (const auto gstmt : lang.grammar_stmts) {
            std::vector<A> trace{};
            trace.reserve(gstmt->gstmt.size());
            for (auto stmt : gstmt->gstmt) {
                trace.push_back(validStmtToChar[stmt]);
            }
            traces.insert(std::move(trace));
        }
        cout << "[+] num unique traces: " << traces.size() << endl;
        // TODO: do something smarter here
        // generate 1 to n lengthed lists and if not in set,
        // add to negative examples
        vector<size_t> base_powers{1};
        size_t current_max = alphabet->size();
        size_t word_count = 0;
        // convert alphabet set to vector
        vector<A> alphabet_vec;
        alphabet_vec.reserve(alphabet->size());
        for (auto a : *alphabet) {
            alphabet_vec.push_back(a);
        }

        if (alphabet->size() > 0) {
            while (negativeExamples.size() < num_negative) {
                if (word_count >= current_max) {
                    base_powers.push_back(current_max);
                    current_max *= alphabet->size();
                }
                std::vector<A> list;
                list.reserve(base_powers.size());

                for (size_t base_power: base_powers) {
                    list.push_back(
                            alphabet_vec[(word_count / base_power) % alphabet->size()]
                    );
                }

                // Debug: print list
                // cout << "negative example check: ";
                // for (auto a : list) {
                //     cout << a << " ";
                // }
                // cout << endl;

                if (traces.find(list) == traces.end()) {
                    negativeExamples.insert(std::move(list));
                }

                word_count++;
            }
        }

        cout << "alphabet: ";
        for (auto a : *alphabet) {
            cout << a << " ";
        }
        cout << endl << "traces: " << endl;
        int count = 0;
        for (const auto& trace : traces) {
            cout << count << ": ";
            for (auto a : trace) {
                cout << a << " ";
            }
            cout << endl;
            count++;
        }
        cout << "negative examples: " << endl;
        count = 0;
        for (const auto& trace : negativeExamples) {
            cout << count << ": ";
            for (auto a : trace) {
                cout << a << " ";
            }
            cout << endl;
            count++;
        }
    }
    ~DopplerQuery() override = default;
    bool membershipQuery(const std::vector<A>& word) override {
        return traces.find(word) != traces.end();
    }

    NonDetFiniteAutomaton<std::vector<uint32_t>, uint32_t , vector_state_hash>::NewDFA directFA() {
        return Query<uint32_t>::FA::from(traces);
    }

    std::optional<VectorState> equivalenceQuery(const FA& machine) override {
        // L - L(H)
        for (const auto& trace : traces) {
            if (!machine.accepts(trace)) {
                return {trace};
            }
        }
        // L(H) - L
        for (const auto& trace : negativeExamples) {
            if (machine.accepts(trace)) {
                for (auto a : trace) {
                    cout << a << " ";
                }
                cout << endl;
                return {trace};
            }
        }
        cout << "[+] No counter example found" << endl;
        return std::nullopt;
    }

    std::shared_ptr<std::unordered_set<A>> getAlphabet() override {
        return alphabet;
    }

private:
    std::map<A, Stmt *> charToValidStmt;
    std::map<Stmt *, A> validStmtToChar;
    // examples that shouldn't be accepted
    std::set<VectorState> negativeExamples;
    std::set<VectorState> traces;

    std::shared_ptr<std::unordered_set<A>> alphabet;
};
