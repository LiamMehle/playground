#include <unistd.h>
#include <sys/syscall.h>

#define _sys_ret( ret )            __asm__ volatile ( "ret":/* outputs */: "D" (ret) :/*clobbers*/ )
#define _fast_exit( return_value ) __asm__ volatile ( "syscall":/* outputs */: "D" (return_value), "a" (60) :/*clobbers*/ )


[[gnu::hot, gnu::used , gnu::noreturn]]
void _start( void ) {
	int ret;

	#define MESSAGE "Hello, there\n"
	const  char* const restrict string  =        MESSAGE;
	const  int                  len     = sizeof(MESSAGE);
	#undef  MESSAGE
	
	//write(1, string, sizeof(string));
	//                                           write    fd       source        len
	__asm__  volatile ( "syscall" : "=a" (ret) : "a" (1), "D" (1), "S" (string), "d" (len) : /*clobbers*/ );
	_fast_exit( ret );
	__builtin_unreachable();
}