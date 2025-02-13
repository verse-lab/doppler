#include <map>
#include <string>
#include <vector>

using namespace std;

struct TreeNode {
    std::map<std::string, int> value; // assignment maps for vulnerable variables
    string key;
    std::vector<TreeNode* > children;

};

class ExecutionTree {
    public:
        TreeNode* root;

        ExecutionTree(){
            std::map<std::string, int> empty;
            root->value=empty;
            root->key="init";
        }

        ExecutionTree(std::map<std::string, int> data){
            root->value=data;
            root->key="init";
        }

        void addString(vector<string> validString, std::map<std::string, int> data){
            // traverse the tree, add the node
            TreeNode* current = root;
            for(const auto validStmt : validString){
                while(true){
                    
                }
            }

        }
};