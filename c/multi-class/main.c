#include "add.h"
#include "print.h"

int main(void) {
	int a = 3, b = 48, c;
	c = add(a, b);
	print((char*)&(c));
	return 0;
}