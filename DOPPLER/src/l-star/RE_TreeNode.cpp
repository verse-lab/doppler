/**
 * @file RE_TreeNode.cpp
 * Implementation of the regular expression tree node class.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 */
#include <string>
#include <vector>
#include "l-star/RE_TreeNode.hpp"
#include "l-star/RE_RegularExpression.hpp"

using namespace std;

/**
 * Creates a new node in the regular expression tree.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 * @param c The content of the node. This is either an operator or a literal.
 */
RETreeNode::RETreeNode(string c) {
	content = std::move(c);
	if(content == "$") {
		//empty literal
		content = "";
	}
	p_left = nullptr;
	p_right = nullptr;
}

RETreeNode::~RETreeNode() {
	if(p_left != nullptr) {
		delete p_left;
        p_left = nullptr;
	}
	if(p_right != nullptr) {
		delete p_right;
        p_right = nullptr;
	}
}

/**
 * Gets the content of the node. This is either an operator or a literal.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 * @return Node content.
 */
string RETreeNode::getContent() {
	return content;
}

/**
 * Sets the content of the node. This can either be an operator or a literal.
 * Note that you cannot change a node type by giving an operator node a literal value
 * or vice versa.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 */
void RETreeNode::setContent(const string& c) {
	if(!isOperator() && RegularExpression::isOperator(c))
		throw "Cannot change a terminal to an operator.";
	if(isOperator() && !RegularExpression::isOperator(c))
		throw "Cannot change an operator to a terminal.";
	content = c;
}

/**
 * Checks whether the given node represents an operator.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 * @return Returns true only if a child node is present and the content of the node is a valid operator.
 */
bool RETreeNode::isOperator() {
	return (p_left != nullptr || RegularExpression::isOperator(content));
}

/**
 * Gets the left operand of this operator. Literals have no left operand.
 * @return Left operand.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 */
RETreeNode *RETreeNode::getLeft() {
	return p_left;
}

/**
 * Gets the right operand of this operator. Literals have no right operand.
 * @return Right operand.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 */
RETreeNode *RETreeNode::getRight() {
	return p_right;
}

/**
 * Sets the left operand of this operator. Literals can have no left operand.
 * @param p_l Left operand.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 */
void RETreeNode::setLeft(RETreeNode *p_l) {
	if(isOperator()||p_l==nullptr)
		p_left = p_l;
	else
		throw "Node ("+content+") does not represent an operator. Cannot add left child: "+p_l->getContent();
}

/**
 * Sets the right operand of this operator. Literals and Kleene-Stars can have no right operand.
 * @param p_r Right operand.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 */
void RETreeNode::setRight(RETreeNode *p_r) {
	if((isOperator() && content!=RegularExpression::re_starOp) || p_r==nullptr)
		p_right = p_r;
	else
		throw "Node ("+content+") does not represent an operator. Cannot add right child: "+p_r->getContent();
}

/**
 * Determines whether this tree node represents an empty regular expression.
 * @return Whether the regular expression represented by this node is empty.
 * @author Daniel Dreibrodt
 */
bool RETreeNode::isEmpty() {
	if(content.empty()) {
        return true;
    } else if(isOperator()) {
        bool lEmpty = p_left == nullptr || p_left->isEmpty();
        bool rEmpty = p_right == nullptr || p_right->isEmpty();
        return lEmpty && rEmpty;
    } else {
        return false;
    }
}

/**
 * Creates a clone of this tree node.
 * @return A new tree node that represents the same regular expression tree as this node.
 * @author Daniel Dreibrodt
 */
RETreeNode *RETreeNode::clone() {
    RETreeNode *node = new RETreeNode(content);
    if(p_left!=nullptr)
        node->setLeft(p_left->clone());
    if(p_right!=nullptr)
        node->setRight(p_right->clone());
    return node;
}

/**
 * Removes all redundancies from the regular expression.
 * So expressions like (<epsilon>)* or (<epsilon>|<epsilon>) will be changed to <epsilon>.
 * Expressions like (A.<epsilon>) will be changed to A (if A is a literal, subtree equality is not yet checked).
 * Also incomplete subtrees, like operator nodes without children, will be changed to empty nodes.
 * @author Daniel Dreibrodt
 */
void RETreeNode::simplify() {
    if(p_left!=nullptr)
        p_left->simplify();
    if(p_right!=nullptr)
        p_right->simplify();
    
    if(isEmpty() && !content.empty()) {
        if(p_left!=nullptr) {
            delete p_left;
            p_left = nullptr;
        }
        if(p_right!=nullptr) {
            delete p_right;
            p_right = nullptr;
        }
        content = "";
    } else {
       
        
        if(content == RegularExpression::re_andOp) {
            if(p_left->isEmpty()) {
                RETreeNode *p_oldRight = p_right;
                content = p_oldRight->content;
                if(p_oldRight->getLeft()!=nullptr) {
                    setLeft(p_oldRight->getLeft()->clone());
                } else {
                    setLeft(nullptr);
                }
                if(p_oldRight->getRight()!=nullptr) {
                    setRight(p_oldRight->getRight()->clone());
                } else {
                    setRight(nullptr);
                }
                //Delete old node
                delete p_oldRight;
                p_oldRight = nullptr;
            } else if(p_right->isEmpty()) {
                RETreeNode *p_oldLeft = p_left;
                content = p_oldLeft->content;
                if(p_oldLeft->getLeft()!=nullptr) {
                    setLeft(p_oldLeft->getLeft()->clone());
                } else {
                    setLeft(nullptr);
                }
                if(p_oldLeft->getRight()!=nullptr) {
                    setRight(p_oldLeft->getRight()->clone());
                } else {
                    setRight(nullptr);
                }
                //Delete old node
                delete p_oldLeft;
                p_oldLeft = nullptr;
            }
        } else if(content == RegularExpression::re_orOp) {
            if(!p_left->isOperator() && !p_right->isOperator()) {
                if(p_left->getContent() == p_right->getContent()) {
                    content = p_left->getContent();
                    delete p_left;
                    p_left = nullptr;
                    delete p_right;
                    p_right = nullptr;
                }
            }
        }
    }
}

/**
 * Converts a regular expression tree to a string by performing
 * an inorder tree walk.
 * @return The string representation of the regular expression specified by the given node.
 * @author Daniel Dreibrodt, Konstantin Steinmiller
 */
string RETreeNode::toString() {
    string s = "";
	if(isOperator()) {
		s += "(";
		if(getLeft() != nullptr) {
			s += getLeft()->toString();
		}
	}
    
	if(content.empty()) {
		s += "$";
	} else {
		s += getContent();
	}
    
	if(isOperator()) {
		if(getRight() != nullptr) {
			s += getRight()->toString();
		}
		s += ")";
	}
    
	return s;
}
