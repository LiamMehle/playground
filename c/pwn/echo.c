#include <stdio.h>
#include <stdint.h>
#include <assert.h>


int main(void) {
	char buf[4];
	gets(buf);
	return 0;
}

void hello_world(int key) {
	if(key & 0xff00)
		__asm__ volatile ("xor rbx, rbx\n div rbx");
	if(key & 0x00f0)
		puts("hello World!");
}