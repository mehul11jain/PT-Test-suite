#include "EvalSoundness.h"
PointsToEval::EvalSoundness::EvalSoundness(std::string ref, std::string usr, int indexOfTestCase)
{
    Path_To_Ref_file = ref;
    Path_To_user_file = usr;
    testcaseIndex = indexOfTestCase;    
    std::ifstream input_json_file(Path_To_user_file + "user" + std::to_string(testcaseIndex) + ".pt.json");    
    std::ifstream ref_json_file(Path_To_Ref_file + "testcase" + std::to_string(testcaseIndex) + ".pt.json");      
    input_json_file >> usr_reader;    
    ref_json_file >> ref_reader;    
    EvaluateTestcase();
}
PointsToEval::EvalSoundness::~EvalSoundness()
{
}
bool PointsToEval::EvalSoundness::CheckFSTestCase()
{    
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

                std::set<std::pair<std::string, std::pair<std::string, std::string>>> refptset = PTInf[usr_searchFile][lno];
                std::set<std::pair<std::string, std::pair<std::string, std::string>>> ptspair;
                for (auto pts : i["PointsToSet"])
                {
                    for (auto pointee : pts["PointeeSet"])
                    {
                        ptspair.insert(std::make_pair(pts["name"], std::make_pair(pointee["name"], pointee["PointeeType"])));
                    }
                }
                for (auto pt : refptset)
                {
                    if (ptspair.find(pt) == ptspair.end())
                    {
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
    return 1;
}
void PointsToEval::EvalSoundness::PrintStats()
{
    bool isSound = 1;
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
                     << "Line:" << (*R).first.first  << "   " << (*R).second.second << "PointsTo" << "("
                     << (*R).first.second.first << ", " << (*R).first.second.second << ")\t" << std::setw(5) << "|\t";
        res = (((*R).second.first == "Pass") ? (GREENT + (*R).second.first + RST) : (REDT + (*R).second.first + RST));

        if((*R).second.first == "Fail" && (*R).second.second == "May")
        {
            isSound = 0;
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
}
bool PointsToEval::EvalSoundness::CheckFISTestCase()
{
    return 1;
}
void PointsToEval::EvalSoundness::EvaluateTestcase()
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