#include <unistd.h>

#define _sys_ret( ret )            __asm__ volatile ( "ret":/* outputs */: "D" (ret) :/*clobbers*/ )
#define _fast_exit( return_value ) __asm__ volatile ( "syscall":/* outputs */: "D" (return_value), "a" (60) :/*clobbers*/ )

extern "C" {
[[gnu::hot, gnu::used , gnu::noreturn]]
void _main( void ) {
	char string[] = "hello, there.";
	write(1, string, sizeof(string));
	_fast_exit(2);
	__builtin_unreachable();
}
}d