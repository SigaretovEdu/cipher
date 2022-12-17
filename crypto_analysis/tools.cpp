#include "tools.hpp"

void ConvertStrLower(std::string& line) {
	for(size_t i = 0; i < line.size(); i++)
		line[i] = std::tolower(line[i]);
}
