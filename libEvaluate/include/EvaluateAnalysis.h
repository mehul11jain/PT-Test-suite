#ifndef _EVAL_ANALYSIS_
#define _EVAL_ANALYSIS_
#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Casting.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "nlohmann/json.hpp"
#include <iomanip>
#include <iostream>
#include <fstream>
#include <map>
#include <set>

#define CYANB "\033[1;46m"
#define REDT "\033[1;91m"
#define GREENT "\033[1;92m"
#define YELLOWT "\033[1;93m"
#define RST "\033[0;m"

using json = nlohmann::json;

namespace PointsToEval
{
    class EvaluateAnalysis
    {
        int testcaseIndex;
        json usr_reader;   
        bool isSound;    
        json ref_reader; 
        std::string Path_To_user_file;
        std::string Path_To_Ref_file;
        std::map<std::string, std::map<int, std::set<std::pair<std::string, std::pair<std::string, std::string>>>>> PTInf;
        std::map<std::pair<int, std::pair<std::string, std::string>>, std::pair<std::string, std::string>> EvalRes;
        public :                    
            EvaluateAnalysis(std::string, std::string, int);
            ~EvaluateAnalysis();
            void PrintStats();
            bool CheckFISTestCase();
            void CheckForUnsoundnessDueToMissingPointee(std::set<std::pair<std::string, std::string>>&, std::set<std::pair<std::string, std::string>>&);
            bool CheckFSTestCase();
            void EvaluateSoundness();
            void EvalutePrecision();
    };
};

#endif /* _EVAL_ANALYSIS_ */
