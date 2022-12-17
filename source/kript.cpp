#include "kript.hpp"

int main() {
	SimpleSubstitution("../data/1984.txt", "../data/SubOut.txt", "en");
	SimpleSubstitution("../data/SubOut.txt", "../data/checkSub.txt", "de", "../data/SubKeyFile.txt");
	std::cout<<"made SimpleSubstitution\n";
	
    affine_encode("../data/1984.txt", "../data/affOut.txt");
	affine_decode("../data/affOut.txt", "../data/checkAff.txt", "../data/AffKeyFile.txt");
	std::cout << "made affine\n";
	
    affineRec_encode("../data/1984.txt", "../data/AffRecOut.txt");
	affineRec_decode("../data/AffRecOut.txt", "../data/checkAffRec.txt", "../data/AffRecKeyFile.txt");
	std::cout << "made affineREC\n";
	return 0;
}
