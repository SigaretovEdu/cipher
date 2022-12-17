#include "tools.hpp"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <map>
#include <string>
#include <vector>

std::string alphabet = "abcdefghijklmnopqrstuvwxyz ";
std::vector<float> frequency = {8.2, 1.5, 2.8, 4.3, 13, 2.2, 2, 6.1, 7, 0.15, 0.77, 4, 2.4, 6.7, 7.5, 1.9,
	0.095, 6, 6.3, 9.1, 2.8, 0.98, 2.4, 0.15, 2, 0.074, 16.04};

bool cmp(std::pair<char, float>& a, std::pair<char, float>& b) {
	return a.second > b.second;
}

bool cmp2(std::pair<char, char>& a, std::pair<char, char>& b) {
	return a.first < b.first;
}

int main() {
	auto alp_freq1 = std::vector<std::pair<char, float>>();
	auto alp_freq2 = std::vector<std::pair<char, float>>();
	auto freq = std::map<char, int>();
	for(size_t i = 0; i < alphabet.size(); i++) {
		alp_freq1.push_back(std::make_pair(alphabet[i], frequency[i]));
		freq[alphabet[i]] = 0;
	}
	std::sort(alp_freq1.begin(), alp_freq1.end(), cmp);

	std::ifstream In("/home/sigaretov/src/cipher/data/SubOut.txt");
	std::string line, text = "";
	int s = 0;
	while(std::getline(In, line)) {
		for(size_t i = 0; i < line.size(); i++)
			if(freq.find(line[i]) != freq.end()) {
				freq[line[i]]++;
				s++;
			}
		text += line;
	}
	In.close();
	for(auto item: freq) {
		alp_freq2.push_back(std::make_pair(item.first, ((float(item.second)) / s) * 100));
	}
	std::sort(alp_freq2.begin(), alp_freq2.end(), cmp);
	// for(size_t i = 0; i < alp_freq1.size(); i++) {
	//     std::cout<<alp_freq1[i].first<<'\t'<<alp_freq2[i].first<<'\t';
	//     std::cout<<alp_freq1[i].second<<'\t'<<alp_freq2[i].second<<'\t';
	//     std::cout<<alp_freq1[i].second-alp_freq2[i].second<<'\n';
	// }

	auto ans = std::vector<std::pair<char, char>>();
	for(size_t i = 0; i < alp_freq1.size(); i++)
		ans.push_back(std::make_pair(alp_freq1[i].first, alp_freq2[i].first));
	std::sort(ans.begin(), ans.end(), cmp2);

	std::string s1 = "", s2 = "";
	for(size_t i = 0; i < ans.size(); i++) {
		s1 += ans[i].first;
		s2 += ans[i].second;
	}
	std::cout << s1 << '\n' << s2 << '\n';
	auto change = std::map<char, char>();
	for(size_t i = 0; i < s2.size(); i++)
		change[s2[i]] = s1[i];
	for(size_t i = 0; i < text.size(); i++)
		if(change.find(text[i]) != change.end())
			text[i] = change[text[i]];

	std::ofstream Out("tripFile.txt");
	Out << text;
	Out.close();
	return 0;
}
