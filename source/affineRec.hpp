#pragma once
#ifndef AFFREC
#define AFFREC

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

void gen_key_affineRec();

void affineRec_encode(std::string, std::string, std::string KeyFile = "");

void affineRec_decode(std::string, std::string, std::string KeyFile);

#endif
