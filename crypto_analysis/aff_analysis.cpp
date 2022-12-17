#include "tools.hpp"
#include "galua_field.hpp"
#include <algorithm>
#include <iostream>
#include <string>
#include <utility>
#include <vector>
#include <map>
#include <fstream>


bool cmp(std::pair<char, int>& a, std::pair<char, int>& b) {
    return a.second > b.second;
}


int main() {
    std::string alph = "abcdefghijklmnopqrstuvwxyz ";
    std::map<char, int> freq;
    for(size_t i = 0; i < alph.size(); i++)
        freq[alph[i]] = 0;

    std::ifstream In("/home/sigaretov/src/cipher/data/affOut.txt");
    std::string line;
    while(std::getline(In, line)) {
        ConvertStrLower(line);
        for(size_t i = 0; i < line.size(); i++)
            if(freq.find(line[i]) != freq.end())
                freq[line[i]]++;
    }
    In.close();
    std::vector<std::pair<char, int>> v;
    int i = 0;
    for(auto item: freq)
        v.push_back(std::make_pair(item.first, item.second));
    std::sort(v.begin(), v.end(), cmp);
    //for(auto item: v)
    //    std::cout<<item.first<<' '<<item.second<<'\n';
    int e_num = alph.find(v[1].first), sp_num = alph.find(v[0].first);
    //std::cout<<"e = "<<e_num<<'\n'<<"_ = "<<sp_num<<'\n';
    auto y1 = explode(e_num), y2 = explode(sp_num);
    auto x1 = explode(4), x2 = explode(26);
    auto alpha = mult(sub(y2, y1), inverse(sub(x2, x1)));
    simple(alpha);
    auto beta = sub(y1, mult(alpha, x1));
    simple(beta);
    int a = complete(alpha), b = complete(beta);
    std::cout<<"alpha = "<<a<<'\n'<<"beta = "<<b<<'\n';
    return 0;
}
