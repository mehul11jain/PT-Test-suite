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
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Metadata.h"
#include "nlohmann/json.hpp"
#include "PointsToDump/FS_PTWriter.h"


#define RED "\033[1;91m"
#define GREEN "\033[1;92m"
#define CYAN "\033[1;36m"
#define NC "\033[0m"

using namespace llvm;
using json = nlohmann::json;

namespace
{
	struct RefPass : public ModulePass
	{
		static char ID;
		RefPass() : ModulePass(ID) {}
		bool runOnModule(Module &M) override
		{ 
            std::string fileName;  
            int lineNo;
            errs() << "Testing\n";
            PTDump::FS_PTWriter* pt = new PTDump::FS_PTWriter(PTDump::AnalysisType::FlowSensitive, M.getModuleIdentifier(), "../FSRef_pt_Files/");            
			for(Function& F : M.functions())
            {
               for(BasicBlock& BB : F)
               {
                   for(Instruction& I : BB)
                   {                       
                       if(isa<CallInst>(&I))
                       {
                           CallInst* CI = dyn_cast<CallInst>(&I);                           
                           errs() << I << "\n";
                           if(CI->getCalledFunction()->getName().contains("PointsTo"))
                           {
                                Value* pointer = dyn_cast<Instruction>(CI->getArgOperand(0))->getOperand(0);
                                Value* pointee = dyn_cast<Instruction>(CI->getArgOperand(1))->getOperand(0);                                
                                if(CI->getCalledFunction()->getName().contains("Must"))
                                {
                                    if (I.hasMetadata())
                                    {
                                        MDNode *node = I.getMetadata("dbg");
                                        if (DILocation *loc = dyn_cast<DILocation>(node))
                                        {
                                            lineNo = loc->getLine();
                                            fileName = loc->getFilename();
                                        }
                                    }
                                    pt->WritePointsToinfoAt(&F, lineNo ,fileName, pointer, pointee,PTDump::MustPointee);
                                }
                                else if(CI->getCalledFunction()->getName().contains("May"))
                                {
                                    if (I.hasMetadata())
                                    {
                                        MDNode *node = I.getMetadata("dbg");
                                        if (DILocation *loc = dyn_cast<DILocation>(node))
                                        {
                                            lineNo = loc->getLine();
                                            fileName = loc->getFilename();
                                        }
                                    }
                                    pt->WritePointsToinfoAt(&F, lineNo ,fileName, pointer, pointee,PTDump::MayPointee);
                                }
                           }                           
                       }
                   }
               }
            }
            delete pt;
			return 0;
		}
	}; // end of struct RefPass
} // end of anonymous namespace

char RefPass::ID = 0;
static RegisterPass<RefPass> X("RefPass", "RefPass to create the reference .pt files",
							 false /* Only looks at CFG */,
							 false /* Analysis Pass */);

static RegisterStandardPasses Y(
	PassManagerBuilder::EP_EarlyAsPossible,
	[](const PassManagerBuilder &Builder,
	   legacy::PassManagerBase &PM) { PM.add(new RefPass()); });