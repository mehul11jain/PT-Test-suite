#include "EvaluateAnalysis.h"

PointsToEval::EvaluateAnalysis::EvaluateAnalysis(std::string ref, std::string usr, int indexOfTestCase)
{
    Path_To_Ref_file = ref;
    Path_To_user_file = usr;
    isSound = 1;
    testcaseIndex = indexOfTestCase;
    std::ifstream input_json_file(Path_To_user_file + "user" + std::to_string(testcaseIndex) + ".pt.json");
    std::ifstream ref_json_file(Path_To_Ref_file + "testcase" + std::to_string(testcaseIndex) + ".pt.json");
    input_json_file >> usr_reader;
    ref_json_file >> ref_reader;
    EvaluateSoundness();
}
PointsToEval::EvaluateAnalysis::~EvaluateAnalysis()
{
}
bool PointsToEval::EvaluateAnalysis::CheckFSTestCase()
{
    std::set<std::pair<int,std::string>> ProgramPointsinRef, ProgramPointsinUsr;
    auto FileArray = ref_reader["FlowSensitivePointsToInfo"]["File"];
    auto usrFileArray = usr_reader["FlowSensitivePointsToInfo"]["File"];
    for (auto File : FileArray)
    {
        std::string searchFile = File["name"];
        for (auto proc : File["Procedure"])
        {
            for (auto i : proc["ProgramPoints"])
            {
                int lno = i["LineNo"];

                ProgramPointsinRef.insert(make_pair(lno, searchFile));

                std::set<std::pair<std::string, std::pair<std::string, std::string>>> ptspair;
                for (auto pts : i["PointsToSet"])
                {
                    for (auto pointee : pts["PointeeSet"])
                    {
                        ptspair.insert(std::make_pair(pts["name"], make_pair(pointee["name"], pointee["PointeeType"])));
                    }
                }
                PTInf[searchFile][lno] = ptspair;
            }
        }
    }    
    

    for (auto File : usrFileArray)
    {
        std::string usr_searchFile = File["name"];
        for (auto proc : File["Procedure"])
        {
            for (auto i : proc["ProgramPoints"])
            {
                int lno = i["LineNo"];
                
                if (PTInf[usr_searchFile].find(lno) == PTInf[usr_searchFile].end())
                    continue;   

                ProgramPointsinUsr.insert(make_pair(lno, usr_searchFile));                             

                std::set<std::pair<std::string, std::pair<std::string, std::string>>> refptset = PTInf[usr_searchFile][lno];
                std::set<std::pair<std::string, std::pair<std::string, std::string>>> ptspair;

                std::set<std::pair<std::string, std::string>> ref_pt_pairs, usr_pt_pairs;
                for (auto it : refptset)
                {
                    ref_pt_pairs.insert(make_pair(it.first, it.second.first));
                }

                for (auto pts : i["PointsToSet"])
                {
                    for (auto pointee : pts["PointeeSet"])
                    {
                        ptspair.insert(std::make_pair(pts["name"], std::make_pair(pointee["name"], pointee["PointeeType"])));
                    }
                }

                for (auto it : ptspair)
                {
                    usr_pt_pairs.insert(make_pair(it.first, it.second.first));
                }

                for (auto pt : refptset)
                {
                    if (ptspair.find(pt) == ptspair.end())
                    {
                        CheckForUnsoundnessDueToMissingPointee(ref_pt_pairs, usr_pt_pairs);
                        EvalRes[std::make_pair(lno, make_pair(pt.first, pt.second.first))] = make_pair("Fail", pt.second.second);
                    }
                    else
                    {
                        EvalRes[std::make_pair(lno, make_pair(pt.first, pt.second.first))] = make_pair("Pass", pt.second.second);
                    }
                }
            }
        }
    }
    for(auto i : ProgramPointsinRef)
    {
        if(ProgramPointsinUsr.find(i) == ProgramPointsinUsr.end())
        {
            isSound = 0;
        }
    }
    return 1;
}
void PointsToEval::EvaluateAnalysis::PrintStats()
{
    int i = 1;
    std::string header = "*********************************************** BENCHMARK RESULTS "
                         "*********************************************************",
                res;
    std::cout << "\n__________________________________________________________________________________________________________________________\n";
    std::cout << header + "\n";
    std::cout << "---------------------------------------------------------------------------------------------------------------------------\n\n";
    for (auto R = EvalRes.begin(); R != EvalRes.end(); R++)
    {
        if (R == EvalRes.begin())
        {
            std::cout << "\t\t=================================================================================\n";
        }
        std::cout << std::setw(15) << "\t\t|  TestCase " << std::to_string(i) << ":\t|\t" << std::setw(10)
                  << "Line:" << (*R).first.first << "   " << (*R).second.second << "PointsTo"
                  << "("
                  << (*R).first.second.first << ", " << (*R).first.second.second << ")\t" << std::setw(5) << "|\t";
        res = (((*R).second.first == "Pass") ? (GREENT + (*R).second.first + RST) : (REDT + (*R).second.first + RST));

        if ((*R).second.first == "Fail" && (*R).second.second == "May")
        {
            isSound &= 0;
        }
        std::cout << res;
        std::cout << "\t|\n";
        std::cout << "\t\t=================================================================================\n";
        i++;
    }
    std::cout << "\n---------------------------------------------------------------------------------\n";
    if (isSound == 1)
    {
        std::cout << "\nSoundness Check : Analysis is \033[1;92mSound\033[0;m\n";
    }
    else
    {
        std::cout << "\nSoundness Check : Analysis is \033[1;91mUnsound\033[0;m\n";
    }
    std::cout << "\n---------------------------------------------------------------------------------\n";

    std::cout << "Precision Evaluation :\n\n";
    std::cout << "\t\t=================================================================="
          "=======================================\n";
    std::cout << "\t\t|\tProgram Point\t|\t"
       << "Total Pointers incorrect\t"
       << "|\tTotal Suprious Pairs\t\t|\n";
    for (auto i : SupriousPTPairs)
    {
        if (i == *(SupriousPTPairs.begin()))
        {
            std::cout << "\t\t=============================================================="
                  "===========================================\n";
        }
        std::cout << "\t\t|\tFile: " << std::to_string(i.first.first) << ", Line No: \t" << i.first.second << std::setw(1)
           << "|";
        std::cout << std::setw(14) << "\t" << std::to_string(find_distinct_pointers(i.second)) << "\t" << std::setw(13)
           << "\t|\t" << std::setw(14) << i.second.size() << std::setw(13) << "\t|\n";
        std::cout << "\t\t================================================================"
              "=========================================\n";
    }
    std::cout << "______________________________________________________________________"
          "______________________________________________________\n\n";
}
bool PointsToEval::EvaluateAnalysis::CheckFISTestCase()
{
    return 1;
}
void PointsToEval::EvaluateAnalysis::EvaluateSoundness()
{
    if (!ref_reader["FlowSensitivePointsToInfo"].empty())
    {
        CheckFSTestCase();
    }
    else if (!ref_reader["FlowInsensitivePointsToInfo"].empty())
    {
        CheckFISTestCase();
    }
}
void PointsToEval::EvaluateAnalysis::CheckForUnsoundnessDueToMissingPointee(std::set<std::pair<std::string, std::string>> &ref, std::set<std::pair<std::string, std::string>> &usr)
{
    for (auto it : ref)
    {
        if (usr.find(it) == usr.end())
        {
            llvm::outs() << it.first << ", " << it.second << "\n";
            isSound &= 0;
            return;
        }
    }
}

void PointsToEval::EvaluateAnalysis::EvalutePrecision()
{
    if (isSound)
    {
        auto usrFileArray = usr_reader["FlowSensitivePointsToInfo"]["File"];
        for (auto File : usrFileArray)
        {
            std::string usr_searchFile = File["name"];
            for (auto proc : File["Procedure"])
            {
                for (auto i : proc["ProgramPoints"])
                {
                    int lno = i["LineNo"];
                    if (PTInf[usr_searchFile].find(lno) == PTInf[usr_searchFile].end()) continue;

                    std::set<std::pair<std::string, std::pair<std::string, std::string>>> refptset = PTInf[usr_searchFile][lno];
                    std::set<std::pair<std::string, std::pair<std::string, std::string>>> ptspair;

                    std::set<std::pair<std::string, std::string>> ref_pt_pairs, usr_pt_pairs;
                    for (auto it : refptset)
                    {
                        ref_pt_pairs.insert(make_pair(it.first, it.second.first));
                    }

                    for (auto pts : i["PointsToSet"])
                    {
                        for (auto pointee : pts["PointeeSet"])
                        {
                            ptspair.insert(std::make_pair(pts["name"], std::make_pair(pointee["name"], pointee["PointeeType"])));
                        }
                    }

                    for (auto it : ptspair)
                    {
                        usr_pt_pairs.insert(make_pair(it.first, it.second.first));
                    }

                    for(auto i : usr_pt_pairs)
                    {                        
                        if(ref_pt_pairs.find(i) == ref_pt_pairs.end())
                        {
                            SupriousPTPairs[std::make_pair(lno, usr_searchFile)].insert(i);
                        }                        
                    }                    
                }
            }
        }
    }
}
int PointsToEval::EvaluateAnalysis::find_distinct_pointers(std::set<std::pair<std::string, std::string>>& pairs)
{
    std::set<std::string> Pointers;
    for(auto i : pairs)
    {
        Pointers.insert(i.first);
    }
    return Pointers.size();
}