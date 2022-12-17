#include "affine.hpp"
#include <iostream>

void gen_key_affine() {
	std::random_device rd;
	std::mt19937 g(rd());
	std::uniform_int_distribution<int> uni(1, 27);
	std::uniform_int_distribution<int> uni2(0, 27);
	int alpha = uni(g);
	int beta = uni2(g);
	std::ofstream KeyText("../data/AffKeyFile.txt");
	KeyText << alpha << ' ' << beta;
	KeyText.close();
}

void affine_encode(std::string InFile, std::string OutFile, std::string KeyFile) {
	std::string openText = "";
	std::string alphabet = "abcdefghijklmnopqrstuvwxyz ";
	std::map<char, std::vector<int>> values;
	for(size_t i = 0; i < alphabet.size(); i++)
		values[alphabet[i]] = explode(i);

	std::ifstream InText(InFile);
	if(!InText.is_open())
		throw std::runtime_error("~Unable to open input file~");
	auto line = std::string();
	while(std::getline(InText, line)) {
		ConvertStrLower(line);
		for(auto item: line)
			if((item >= 'a' && item <= 'z') || (item == ' '))
				openText += item;
	}

	if(KeyFile == "") {
		gen_key_affine();
		KeyFile = "../data/AffKeyFile.txt";
	}

	std::ifstream KeyText(KeyFile);
	if(!KeyText.is_open())
		throw std::runtime_error("~Unable to open key file~");
	int a, b;
	KeyText >> a >> b;
	KeyText.close();
	auto alpha = explode(a);
	auto beta = explode(b);

	std::ofstream OutText(OutFile);
	for(auto item: openText) {
		auto itemAB = mult(values[item], alpha);
		add(itemAB, beta);
		simple(itemAB);
		int numAB = complete(itemAB);
		OutText << alphabet[numAB];
	}
    OutText.close();
}

void affine_decode(std::string InFile, std::string OutFile, std::string KeyFile) {
	std::string alphabet = "abcdefghijklmnopqrstuvwxyz ";
	std::map<char, std::vector<int>> values;
	for(size_t i = 0; i < alphabet.size(); i++)
		values[alphabet[i]] = explode(i);

	std::ifstream KeyText(KeyFile);
	if(!KeyText.is_open())
		throw std::runtime_error("~Unable to open KeyFile~");
	int a, b;
	KeyText >> a >> b;
	KeyText.close();
	auto alpha = inverse(explode(a));
	auto beta = explode(b);

	std::ifstream InText(InFile);
	if(!InText.is_open())
		throw std::runtime_error("~Unable to open input file~");
	std::ofstream OutText(OutFile);

	std::string line;
	while(std::getline(InText, line)) {
		for(auto item: line) {
			auto pol = values[item];
			sub(pol, beta);
			auto itemBA = mult(pol, alpha);
			simple(itemBA);
			OutText << alphabet[complete(itemBA)];
		}
	}
    InText.close();
	OutText.close();
}
