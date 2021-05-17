#ifndef _EVAL_SOUNDNESS_
#define _EVAL_SOUNDNESS_
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

#define RED "\033[1;91m"
#define GREEN "\033[1;92m"
#define CYAN "\033[1;36m"
#define NC "\033[0m"

using json = nlohmann::json;

namespace PointsToEval
{
    class EvalSoundness
    {
        std::string Path_To_file;
        json reader;        
        public :        
            EvalSoundness();
            EvalSoundness(std::string);
            ~EvalSoundness();
            void PrintStats();
            bool CheckFISTestCase();
            bool CheckFSTestCase();
            void EvaluateTestcase();
    };
};

#endif /* _EVAL_SOUNDNESS_ */
