#pragma once
#ifndef GALUA
#define GALUA

#include <algorithm>
#include <cmath>
#include <map>
#include <vector>

inline std::map<int, std::vector<int>> simp3_3 = {{3, {2, 1}}, {4, {0, 2, 1}}};

std::vector<int> gen_galua_field();

template<typename T>
void rev(std::vector<T>&);

std::vector<int> explode(int);

int complete(std::vector<int>);

void add(std::vector<int>&, std::vector<int>&);

void pr(std::vector<int>);

std::vector<int> mult(std::vector<int>, std::vector<int>);

void simple(std::vector<int>&);

std::vector<int> inverse(std::vector<int>);

void sub(std::vector<int>&, std::vector<int>&);

#endif
