#include <array>
#include <string>
#include <iostream>

#include "matrix.h"


/*void print_mat(auto i) {
	std::cout << static_cast<std::string>(mat.get_array_str()) << std::endl;
}*/


int main( int argc, const char** argv ) {

	//mat.set_row(0, {1,  4,  2,  2, -2});
	//mat.set_row(1, {1,  0, -3, -3, 11});
	//mat.set_row(2, {2,  4,  1,  4, -3});
	//mat.set_row(3, {3,  2, -1,  2,  4});

	for( int i = 0; i < 1000*1000; i++) {
		{matrix2d<float, 11,12> mat = std::array<std::array<float, 11>, 12>{{
			{1,  4,  2,  2, -2,  5,  3,  6, 69, -6, -9},
			{1,  0, -3, -3, 11,  7, -4, -5, -7,  4,-10},
			{2,  4,  1,  4, -3,  9,  2, -6, -4,  8, -9},
			{3,  2, -1,  2,  4,  3,  4, -1,  6, -7, -9},
			
			{1,  4,  2, 69, -2,  5,  3, 56, 20, -6, -9},
			{1, 20, -3,-50, 11,  7, -4, -5, -7,  4,-10},
			{2, 14, 31, 44, -3,  9,  2, -6, -4,  8, -9},
			{1, 24, 72,  2, -2,  5,  3, 66, 69, -6, -9},
			
			{1,  0, -3, -3,911,  7, -4, -5, -7,  4,-10},
			{2,  4,  1,  4, -3,  9,  2, 86, -4,  8, -9},
			{1,  0, -3, 43, 11, 97, 84, 85, -7,  4,-10},
			{1,  0, -3, -3, 11, 97, 84, -5, -7,  4,-10}
		}};
		//mat.align(print_mat);
		mat.align();
		//std::cout << static_cast<std::string>(mat.get_array_str()) << std::endl;
	}
	}
	return 0;
}