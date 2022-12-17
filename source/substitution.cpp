#include "substitution.hpp"
#include <iostream>

void GenKeySimpleSubstitution(const std::string FileName) {
	std::random_device rd;
	std::mt19937 g(rd());
    std::string orig = "abcdefghijklmnopqrstuvwxyz ";
    std::string key = orig;
	std::shuffle(key.begin(), key.end(), rd);
    std::ofstream KeyFile(FileName);
    KeyFile << orig << '\n' << key;
}

void SimpleSubstitution(const std::string InFile, const std::string OutFile, const std::string operType, const std::string KeyFile) {
	if(operType != "en" && operType != "de")
        throw std::runtime_error("~Invalid argument OperType('en'/'de')~");
    auto openText = std::string();
    auto substitution = std::map<char, char>();
	
    // get key
    if(KeyFile.empty()) {
        GenKeySimpleSubstitution("../data/SubKeyFile.txt");
        std::ifstream KeyText("../data/SubKeyFile.txt");
        std::string l1, l2;
        std::getline(KeyText, l1);
        std::getline(KeyText, l2);
        KeyText.close();
        if(operType == "de")
            std::swap(l1, l2);
        for(size_t i = 0; i < l1.size(); i++)
            substitution[l1[i]] = l2[i];
    } else {
        std::ifstream KeyText(KeyFile);
        if(KeyText.is_open()) {
            std::string l1, l2;
            std::getline(KeyText, l1);
            std::getline(KeyText, l2);
            KeyText.close();
            if(operType == "de")
                std::swap(l1, l2);
            for(size_t i = 0; i < l1.size(); i++)
                substitution[l1[i]] = l2[i];
        } else throw std::runtime_error("~Unable to open key file~");
    }
    
    // open input file
	std::ifstream InText(InFile);
	if(InText.is_open()) {
		auto line = std::string();
		while(std::getline(InText, line)) {
			ConvertStrLower(line);
            for(size_t i = 0; i < line.size(); i++)
                if(substitution[line[i]]) {
                    openText += line[i];
                }
		}
		InText.close();
	} else
		throw std::runtime_error("~Unable to open input file~");

	// write output
	std::ofstream OutText(OutFile);
    for(size_t i = 0; i < openText.size(); i++)
        if(substitution.find(openText[i]) != substitution.end())
            openText[i] = substitution[openText[i]];
    OutText << openText;
    OutText.close();
}
