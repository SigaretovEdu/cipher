#pragma once
#ifndef AFF
#define AFF

#include "tools.hpp"
#include "galua_field.hpp"
#include <cmath>
#include <fstream>
#include <iostream>
#include <map>
#include <random>
#include <stdexcept>
#include <string>
#include <vector>

void gen_key_affine();

void ConvertStrLower(std::string&);

void affine_encode(std::string, std::string, std::string KeyFile = "");

void affine_decode(std::string, std::string, std::string KeyFile);

#endif
