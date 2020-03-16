#include <stdio.h>

#define vec std::vector

int bits_set(int num) {
	int output = 0;
	for(int i = 0; i<32; i++) {
		if(num & 1<<i) {
			output++;
		}
	}
	return output;
}

int main() {
	constexpr int parts_total 10;
	constexpr int parts_studied_num 5;
	constexpr int parts_on_test_num 5;
	// for each permutation
	for(int parts_on_test = 0; i < 1<<parts_total) {
		// if there are exactly enough parts
		if(!(parts_on_test_num == bits_set(parts_on_test)))
			continue;
		

	}
}