#include "affineRec.hpp"
#include <iostream>

void gen_key_affineRec() {
	std::random_device rd;
	std::mt19937 g(rd());
	std::uniform_int_distribution<int> uni(1, 27);
	std::uniform_int_distribution<int> uni2(0, 27);
	int alpha1 = uni(g);
	int beta1 = uni2(g);
    int alpha2 = uni(g);
    int beta2 = uni2(g);
	std::ofstream KeyText("../data/AffRecKeyFile.txt");
	KeyText << alpha1 << ' ' << beta1 << '\n' << alpha2 << ' ' << beta2;
	KeyText.close();
}

void affineRec_encode(std::string InFile, std::string OutFile, std::string KeyFile) {
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
		gen_key_affineRec();
		KeyFile = "../data/AffRecKeyFile.txt";
	}
    //for(size_t i = 0; i < 1000; i++)
    //    std::cout<<openText[i];
    //std::cout<<'\n';
	std::ifstream KeyText(KeyFile);
	if(!KeyText.is_open())
		throw std::runtime_error("~Unable to open key file~");
	int a1, b1, a2, b2;
	KeyText >> a1 >> b1 >> a2 >> b2;
	KeyText.close();
	auto alpha1 = explode(a1);
	auto beta1 = explode(b1);
	auto alpha2 = explode(a2);
	auto beta2 = explode(b2);

	std::ofstream OutText(OutFile);
	// 1 symbol
	auto itemAB = mult(values[openText[0]], alpha1);
	add(itemAB, beta1);
	simple(itemAB);
	int numAB = complete(itemAB);
	OutText << alphabet[numAB];
	// 2 symbol
	itemAB = mult(values[openText[1]], alpha2);
	add(itemAB, beta2);
	simple(itemAB);
	numAB = complete(itemAB);
	OutText << alphabet[numAB];
	for(size_t i = 2; i < openText.size(); i++) {
		auto newAlpha = mult(alpha1, alpha2);
		simple(newAlpha);
		auto newBeta = beta1;
		add(newBeta, beta2);
		simple(newBeta);
		alpha1 = alpha2;
		beta1 = beta2;
		alpha2 = newAlpha;
		beta2 = newBeta;

		itemAB = mult(values[openText[i]], newAlpha);
		add(itemAB, newBeta);
		simple(itemAB);
		numAB = complete(itemAB);
		OutText << alphabet[numAB];
	}
	OutText.close();
}

void affineRec_decode(std::string InFile, std::string OutFile, std::string KeyFile) {
	std::string alphabet = "abcdefghijklmnopqrstuvwxyz ";
	std::map<char, std::vector<int>> values;
	for(size_t i = 0; i < alphabet.size(); i++)
		values[alphabet[i]] = explode(i);

	std::ifstream KeyText(KeyFile);
	if(!KeyText.is_open())
		throw std::runtime_error("~Unable to open KeyFile~");
	int a1, b1, a2, b2;
	KeyText >> a1 >> b1 >> a2 >> b2;
	KeyText.close();
	auto alpha1 = inverse(explode(a1));
	auto beta1 = explode(b1);
	auto alpha2 = inverse(explode(a2));
	auto beta2 = explode(b2);

	std::ifstream InText(InFile);
	if(!InText.is_open())
		throw std::runtime_error("~Unable to open input file~");
	std::string openText, line;
	while(std::getline(InText, line))
		openText += line;
	InText.close();

	std::ofstream OutText(OutFile);
	// 1 symbol
	auto itemAB = values[openText[0]];
	sub(itemAB, beta1);
	itemAB = mult(itemAB, alpha1);
	simple(itemAB);
	int numAB = complete(itemAB);
	OutText << alphabet[numAB];
	// 2 symbol
	itemAB = values[openText[1]];
	sub(itemAB, beta2);
	itemAB = mult(itemAB, alpha2);
	simple(itemAB);
	numAB = complete(itemAB);
	OutText << alphabet[numAB];
	for(size_t i = 2; i < openText.size(); i++) {
		auto newAlpha = mult(alpha1, alpha2);
		simple(newAlpha);
		auto newBeta = beta1;
		add(newBeta, beta2);
		simple(newBeta);
		alpha1 = alpha2;
		beta1 = beta2;
		alpha2 = newAlpha;
		beta2 = newBeta;

		itemAB = values[openText[i]];
		sub(itemAB, beta2);
		itemAB = mult(itemAB, alpha2);
		simple(itemAB);
		numAB = complete(itemAB);
		OutText << alphabet[numAB];
	}
	OutText.close();
}
