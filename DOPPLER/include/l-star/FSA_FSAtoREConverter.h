/**
 * @file FSA_FSAtoREConverter.hpp
 * Contains the definition of the FSAtoREConverter class.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 */

#ifndef FSA_FSATORECONVERTER_HPP_
#define FSA_FSATORECONVERTER_HPP_

#include "RE_RegularExpression.hpp"
#include "RE_TreeNode.hpp"
#include "FiniteAutomaton.h"


template <typename T>
using vector_hash = vector_state_hash;

template <typename T>
using StateDictionary = std::unordered_map<std::vector<T>, std::unordered_map<std::vector<T>, std::string, vector_hash<T>>, vector_hash<T>>;

template <typename T>
std::set<std::vector<T>> getIntermediateStates(std::unordered_set<std::vector<T>, vector_state_hash> stateSet, std::vector<T> startState, std::vector<T> finalState)
{
	std::set<std::vector<T>> res;
	for (const auto &state : stateSet)
	{
		if (!isEqualState(state, startState) && (!isEqualState(state, finalState)))
		{
			res.insert(state);
		}
	}
	return res;
}
template <typename T>
std::set<std::vector<T>> getPredecessors(Transitions<T> transitions, std::vector<T> state)
{
	std::set<std::vector<T>> res;
	for (const auto &kv : transitions)
	{
		std::vector<T> preState = kv.first.first;
		std::vector<T> curState = kv.second;
		if (isEqualState(curState, state))
		{
			res.insert(preState);
		}
	}
	return res;
}
template <typename T>
std::set<std::vector<T>> getSuccessors(Transitions<T> transitions, std::vector<T> state)
{
	std::set<std::vector<T>> res;
	for (const auto &kv : transitions)
	{
		std::vector<T> curState = kv.first.first;
		std::vector<T> succState = kv.second;
		if (isEqualState(curState, state))
		{
			res.insert(succState);
		}
	}
	return res;
}

template <typename T>
std::string getIfLoop(StateDictionary<T> *stateDict, std::vector<T> state)
{
	if (stateDict->at(state)[state] != "$")
	{
		return stateDict->at(state)[state];
	}
	else
	{
		std::string init("");
		return init;
	}
}

template <typename T>
Transitions<T> getSubTranFromState(Transitions<T> transitions, std::vector<T> state)
{
	Transitions<T> res;
	for (const auto &kv : transitions)
	{
		std::vector<T> curState = kv.first.first;
		std::vector<T> succState = kv.second;
		if (isEqualState(curState, state))
		{
			res.insert(kv);
		}
	}
	return res;
}
template <typename T>
Transitions<T> getSubTranToState(Transitions<T> transitions, std::vector<T> state)
{
	Transitions<T> res;
	for (const auto &kv : transitions)
	{
		std::vector<T> preState = kv.first.first;
		std::vector<T> curState = kv.second;
		if (isEqualState(curState, state))
		{
			res.insert(kv);
		}
	}
	return res;
}

template <typename T>
class FSAtoREConverter
{
public:
	static RegularExpression *toRE(FA<T> *fsa)
	{
		std::unordered_set<std::vector<T>, vector_state_hash> stateSet = fsa->getStateList();
		Transitions<T> transitions = fsa->getTransitions();
		std::vector<T> startState = fsa->getStartState();
		std::unordered_set<std::vector<T>, vector_state_hash> acceptStates = fsa->getAcceptStates();

		cout << "initial state: a";
		for (const auto &c : startState)
		{
			cout << c;
		}
		cout << endl;
		cout << "accepting states: " << endl;
		for (const auto &state : acceptStates)
		{
			cout << "s";
			for (const auto &c : state)
			{
				cout << c;
			}
			cout << endl;
		}

		// create hash-maps to easily find transitions to/from states
		//  Transitions is unordered map
		map<std::vector<T>, Transitions<T>> transitionsFromState;
		map<std::vector<T>, Transitions<T>> transitionsToState;

		for (auto &state : stateSet)
		{
			transitionsFromState[state] = getSubTranFromState(transitions, state);
			transitionsToState[state] = getSubTranToState(transitions, state);
		}

		///// BRZOZOWSKI ALGORITHM /////

		int m, n, i, j;

		// m is the number of states
		m = (int)stateSet.size();

		// b[n] holds the regular expression that describes how a final state can be reached from state n
		//  RETreeNode* b[m];
		std::vector<RETreeNode *> b;
		for (i = 0; i > m; i++)
		{
			b.push_back(NULL);
		}
		// a is a matrix that holds all transitions
		// If there is a transition from state 0 to state 1 with the symbol x
		// then a[0][1]=x

		// RETreeNode* a[m][m];
		std::vector<std::vector<RETreeNode *>> a;
		for (i = 0; i < m; i++)
		{
			std::vector<RETreeNode *> tmp;
			for (j = 0; j > m; j++)
			{
				tmp.push_back(NULL);
			}
			a.push_back(tmp);
		}

		// Make sure that start state comes first in state vector
		std::vector<std::vector<T>> states;
		states.push_back(startState);
		for (auto it : stateSet)
		{
			if (!isEqualState(it, startState))
			{
				states.push_back(it);
			}
		}

		for (i = 0; i < m; i++)
		{
			// Build b
			std::vector<T> currentState = states[i];
			if (isFinalState(currentState, acceptStates))
			{ // originally: currentState->isFinalState()
				b[i] = new RETreeNode("");
			}
			else
			{
				if (i == b.size())
				{
					b.push_back(NULL);
				}
				else
				{
					b[i] = NULL;
				}
			}

			// Build a
			Transitions<T> transFromCurrentState = transitionsFromState[currentState];
			for (j = 0; j < m; j++)
			{
				if (i == a.size())
				{
					a[i] = {NULL};
				}
				else if (i < a.size() && j == a[i].size())
				{
					a[i].push_back(NULL);
				}
				else
				{
					a[i][j] = NULL;
				}

				std::vector<T> targetState = states[j];

				for (auto it : transFromCurrentState)
				{
					TransitionKey<T> q_a = it.first;
					std::vector<T> old_q = q_a.first;
					std::string c_name = "vs" + std::to_string(q_a.second);
					std::vector<T> new_q = it.second;
					if (isEqualState(old_q, currentState))
					{
						if (isEqualState(new_q, targetState))
						{
							// If several transitions from currentState to targetState exist
							// create a boolean "or" regular expression tree node
							if (a[i][j] == NULL)
							{
								a[i][j] = new RETreeNode(c_name);
							}
							else
							{
								RETreeNode *orNode = new RETreeNode(RegularExpression::re_orOp);
								orNode->setRight(a[i][j]->clone());
								orNode->setLeft(new RETreeNode(c_name));
								a[i][j] = orNode;
							}
						}
					}
				}
			}
		}

		for (n = m - 1; n >= 0; n--)
		{
			// B[n] := star(A[n,n]) . B[n]
			bool foundNNLoop = false; // Addition to original algorithm
			if (a[n][n] != NULL)
			{
				foundNNLoop = true;
				// Loops mean repetition -> star operator
				RETreeNode *bnStarNode = new RETreeNode(RegularExpression::re_starOp);
				bnStarNode->setLeft(a[n][n]->clone());
				if (b[n] == NULL)
				{
					b[n] = bnStarNode;
				}
				else
				{
					// combine with already existing regex
					RETreeNode *bnAndNode = new RETreeNode(RegularExpression::re_andOp);
					bnAndNode->setRight(bnStarNode);
					bnAndNode->setLeft(b[n]);
					b[n] = bnAndNode;
				}
			}

			// if no loop has been found yet, there exists none for state n
			// thus the following part does not need to be executed
			if (foundNNLoop)
			{
				for (j = 0; j < n; j++)
				{
					// A[n,j] := star(A[n,n]) . A[n,j];
					RETreeNode *anjStarNode = new RETreeNode(RegularExpression::re_starOp);
					anjStarNode->setLeft(a[n][n]->clone());
					if (a[n][j] == NULL)
					{
						a[n][j] = anjStarNode;
					}
					else
					{
						RETreeNode *anjAndNode = new RETreeNode(RegularExpression::re_andOp);
						anjAndNode->setRight(anjStarNode);
						anjAndNode->setLeft(a[n][j]);
						a[n][j] = anjAndNode;
					}
				}
			}
			for (i = 0; i < n; i++)
			{
				// B[i] += A[i,n] . B[n]
				RETreeNode *newBiNode = NULL;
				if (a[i][n] != NULL && b[n] != NULL)
				{
					newBiNode = new RETreeNode(RegularExpression::re_andOp);
					newBiNode->setLeft(a[i][n]->clone());
					newBiNode->setRight(b[n]->clone());
				}
				else if (a[i][n] != NULL)
				{
					newBiNode = a[i][n]->clone();
				}
				else if (b[n] != NULL)
				{
					newBiNode = b[n]->clone();
				}
				if (b[i] != NULL && newBiNode != NULL)
				{
					RETreeNode *biOrNode = new RETreeNode(RegularExpression::re_orOp);
					biOrNode->setLeft(b[i]);
					biOrNode->setRight(newBiNode);
					b[i] = biOrNode;
				}
				else
				{
					b[i] = newBiNode;
				}

				for (j = 0; j < n; j++)
				{
					// A[i,j] += A[i,n] . A[n,j]

					RETreeNode *newAijNode = NULL;
					if (a[i][n] != NULL && a[n][j] != NULL)
					{
						newAijNode = new RETreeNode(RegularExpression::re_andOp);
						newAijNode->setLeft(a[i][n]->clone());
						newAijNode->setRight(a[n][j]->clone());
					}
					else if (a[i][n] != NULL)
					{
						newAijNode = a[i][n]->clone();
					}
					else if (a[n][j] != NULL)
					{
						newAijNode = a[n][j]->clone();
					}
					if (a[i][j] != NULL && newAijNode != NULL)
					{
						RETreeNode *aijOrNode = new RETreeNode(RegularExpression::re_orOp);
						aijOrNode->setLeft(a[i][j]);
						aijOrNode->setRight(newAijNode);
						a[i][j] = aijOrNode;
					}
					else
					{
						a[i][j] = newAijNode;
					}
				}
			}
		}

		RETreeNode *root = b[0];
		root->simplify();

		// Free memory
		for (i = 0; i < m; i++)
		{
			for (j = 0; j < m; j++)
			{
				delete a[i][j];
			}
		}
		for (i = 1; i < m; i++)
		{
			delete b[i];
		}

		return new RegularExpression(root);
	}

	static string toREStateElimination(FA<T> *fsa)
	{

		// Option1: without DFA minimization
//        std::set<std::vector<T>> stateSet{};
//        for (const auto &state : fsa->getStateList())
//        {
//            stateSet.insert(state);
//        }

		fsa->minimize();

        auto stateSet = fsa->getStateList();
        Transitions<T> transitions = fsa->getTransitions();

		std::vector<T> startState = fsa->getStartState();

        auto acceptStates = fsa->getAcceptStates();


		auto *root = new RETreeNode(RegularExpression::re_orOp);
		StateDictionary<T> stateDict;

		for (const auto &stateI : stateSet)
		{
			std::unordered_map<std::vector<T>, std::string, vector_hash<T>> tmp;
			for (const auto &stateJ : stateSet)
			{
				tmp.insert({stateJ, "$"}); // set to default: empty
			}
			stateDict.insert({stateI, tmp});
		}
		for (const auto &stateI : stateSet)
		{
			for (const auto &stateJ : stateSet)
			{
			
				std::set<T> alphSet;
				for (const auto &kv : transitions)
				{
					std::vector<T> preState = kv.first.first;
					T alph = kv.first.second;
					std::vector<T> succState = kv.second;
					if (isEqualState(preState, stateI) && isEqualState(succState, stateJ))
					{
						alphSet.insert(alph);
					}
				}
				if (alphSet.size() != 0)
				{
					string alph_str="";
					for (auto a : alphSet)
					{
						if(alph_str!=""){
							alph_str.append("+");
						}
						alph_str.append("vs"+std::to_string(a));
					}
					stateDict[stateI][stateJ] = alph_str;
					cout << "update stateI s" ;
					for (const auto& c : stateI) {
						cout << c;
					}
					cout <<" to stateJ s";
					for (const auto& c : stateJ) {
						cout << c;
					}
					cout << " alphabet string " << stateDict[stateI][stateJ] << endl;
				}
			}
		}

		// For debugging
		cout << "initial state: a";
		for (const auto &c : startState)
		{
			cout << c;
		}
		cout << endl;
		cout << "accepting states: " << endl;
		for (const auto &state : acceptStates)
		{
			cout << "s";
			for (const auto &c : state)
			{
				cout << c;
			}
			cout << endl;
		}
		cout << "updated states" << endl;
		for (const auto& state : stateSet) {
			cout << "s";
			for (const auto& c : state) {
				cout << c;
			}
			cout << endl;
		}
		cout << "updated transitions" << endl;
		for (const auto& kv : transitions) {
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

		RETreeNode *current = root;
		string re_res="";
		for (const auto &fstate : stateSet)
		{
			if (!isFinalState(fstate, acceptStates)){
				continue;
			}
			// if(stateDict[fstate][fstate]==""){
			// 	stateDict[fstate][fstate]="$";
			// }
			cout << "Testing "<< stateDict[fstate][fstate]<< ";" << endl;
			cout << "FinalState: s";
			for (const auto &c : fstate)
			{
				cout << c;
			}
			cout << endl;

			std::set<std::vector<T>> intermediateStateSet = getIntermediateStates(stateSet, startState, fstate);
			for (auto &inter : intermediateStateSet)
			{
				std::set<std::vector<T>> predecessorSet = getPredecessors(transitions, inter);
				std::set<std::vector<T>> successorSet = getSuccessors(transitions, inter);

				for (auto &i : predecessorSet)
				{
					for (auto &j : successorSet)
					{
						std::string inter_loop = getIfLoop(&stateDict, inter);
						/**
						 * "+".join((
						 * 	"(" + dict_states[i][j] + ")",
						 * 	''.join(
						 * 		(	"(" + dict_states[i][inter] + ")",
						 * 			"(" + inter_loop + ")" + '*',
						 * 			"(" + dict_states[inter][j] + ")" )
						 * 	)
						 * ))
						 *
						 * */
						if(stateDict[i][j]!="" && stateDict[i][j]!="$"){
							stateDict[i][j] = "(" + stateDict[i][j] + ")";
							stateDict[i][j].append("+ (");
						}else{
							if((stateDict[i][inter]!="" && stateDict[i][inter]!="$")|| 
								inter_loop != "" || (stateDict[inter][j]!=""&&stateDict[inter][j]!="$")){
								stateDict[i][j].append("(");
								if(stateDict[i][inter]!="" && stateDict[i][inter]!="$"){
									std::string part1 = "(" + stateDict[i][inter] + ")";
									stateDict[i][j].append(part1);
								}
								if(inter_loop != ""){
									std::string part2 = "(" + inter_loop + ") *";
									stateDict[i][j].append(part2);
								}
								if(stateDict[inter][j]!="" && stateDict[inter][j]!="$"){
									std::string part3 = "(" + stateDict[inter][j] + ")";
									stateDict[i][j].append(part3);
								}
								stateDict[i][j].append(")");
							}else{
								// nothing in this pair
							}
						}
						
						
					}
				}

				StateDictionary<T> tmpStateDict;
				for (const auto &stateI : stateSet)
				{	
					std::unordered_map<std::vector<T>, std::string, vector_hash<T>> tmpMidDict;
					for (const auto &stateJ : stateSet)
					{
						if ((!isEqualState(stateI, inter)) && (!isEqualState(stateJ, inter)))
						{
							tmpMidDict.insert({stateJ, stateDict[stateI][stateJ]});
							// tmp[stateI][stateJ] = stateDict[stateI][stateJ];
						}
					}
					tmpStateDict.insert({stateI, tmpMidDict});
				}
				stateDict = tmpStateDict;
			}
			string init_loop = "";
			if(stateDict[startState][startState]!="$" && stateDict[startState][startState]!=""){
				init_loop=stateDict[startState][startState];
			}
			string init_to_final="";
			if(stateDict[startState][fstate]!="$" && stateDict[startState][fstate]!=""){
				if(stateDict[fstate][fstate]!="$" && stateDict[fstate][fstate]!=""){
					init_to_final = stateDict[startState][fstate] + "(" + stateDict[fstate][fstate] + ")*";
				}else{
					init_to_final = stateDict[startState][fstate];
				}
			}else{
				if(stateDict[fstate][fstate]!="$" && stateDict[fstate][fstate]!=""){
					init_to_final = "(" + stateDict[fstate][fstate] + ")*";
				}
			}
			
			string final_to_init="";
			if(stateDict[fstate][startState]!="$" && stateDict[fstate][startState]!=""){
				final_to_init= stateDict[fstate][startState];
			}
			string re="";
			if(init_loop!=""){
				re = "(" + init_loop +")";
			}
			if(init_to_final!="" && final_to_init!=""){
				re = re+ " + ("+init_to_final+";"+final_to_init+")";
			}
			if(re!=""){
				re = "(" + re + ")*";
			}

			if(init_to_final!=""){
				if(re!=""){
					re = re + "; ("+init_to_final + ")";
				}else{
					re = init_to_final;
				}
				
			}
			// string re = "( ( " + init_loop + " ) + (" + init_to_final + ") (" + final_to_init + ") ) * (" + init_to_final + ")";
			if (re!=""){
				if(re_res!=""){
					re_res = re_res + "+" + re;
				}else{
					re_res = re;
				}
			}
			
			

			// root->simplify();
			// return new RegularExpression(root);
		}
		cout << "Using State Eliminate Method " << endl;
		// cout << re_res << endl;
		return re_res;
		// return new RegularExpression(root);
	}
};

#endif /* FSA_FSATORECONVERTER_HPP_ */
