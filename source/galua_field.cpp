#include "galua_field.hpp"
#include <iostream>

//std::map<int, std::vector<int>> simp3_3 = {{3, {2, 1}}, {4, {0, 2, 1}}};

std::vector<int> gen_galua_field() {
	auto v = std::vector<int>();
	for(int i = 0; i < std::pow(3, 3); i++)
		v.push_back(i);
	return v;
}

template<typename T>
void rev(std::vector<T>& v) {
	std::reverse(v.begin(), v.end());
}

std::vector<int> explode(int num) {
	auto polynom = std::vector<int>();
	if(num == 0)
		return std::vector<int>(1, 0);
	while(num > 0) {
		polynom.push_back(num % 3);
		num /= 3;
	}
	return polynom;
}

int complete(std::vector<int> polynom) {
	int result = 0;
	for(size_t i = 0; i < polynom.size(); i++) {
		result += polynom[i] * std::pow(3, i);
	}
	return result;
}

void add(std::vector<int>& a, std::vector<int>& b) {
	while(a.size() < b.size())
		a.push_back(0);
	for(size_t i = 0; i < std::min(a.size(), b.size()); i++)
		a[i] = (a[i] + b[i]);
}

void pr(std::vector<int> v) {
	for(auto item: v)
		std::cout << item << '\t';
	std::cout << '\n';
}

std::vector<int> mult(std::vector<int> a, std::vector<int> b) {
	auto extra = std::vector<std::vector<int>>();
	for(size_t i = 0; i < b.size(); i++) {
		if(b[i] != 0) {
			auto v = std::vector<int>(i, 0);
			for(size_t j = 0; j < a.size(); j++)
				v.push_back((a[j] * b[i]));
			extra.push_back(v);
		}
	}
	auto result = std::vector<int>();
	for(size_t i = 0; i < extra.size(); i++)
		add(result, extra[i]);
	a = result;
	return a;
}

void simple(std::vector<int>& pol) {
	for(size_t i = 3; i < pol.size(); i++) {
		for(int j = 0; j < pol[i]; j++) {
			add(pol, simp3_3[i]);
		}
		pol[i] = 0;
	}
	for(size_t i = 0; i < pol.size(); i++)
		pol[i] = pol[i] % 3;
	while(pol[pol.size() - 1] == 0 && pol.size() > 1)
		pol.erase(pol.end() - 1);
}

std::vector<int> inverse(std::vector<int> pol) {
	auto alp = gen_galua_field();
	for(size_t i = 1; i < alp.size(); i++) {
		auto sugg = explode(alp[i]);
		auto v = mult(pol, sugg);
		simple(v);
		if(v.size() == 1 && v[0] == 1)
			return sugg;
	}
	return std::vector<int>(10, 999);
}

void sub(std::vector<int>& a, std::vector<int>& b) {
	while(a.size() < b.size())
		a.push_back(0);
	for(size_t i = 0; i < std::min(a.size(), b.size()); i++)
		a[i] = (a[i] + 3 - b[i]) % 3;
}
