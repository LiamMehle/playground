#include <stdio.h>
#include <stdint.h>
#include <string>
int main() {
	uint32_t h;
	std::string str = " 2d 5h 20m\0";
	str[0] = (char)h;
	sscanf(str.c_str(), "%dh", &h);
	printf("%d\n", h);
}