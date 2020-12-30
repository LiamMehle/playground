#ifndef IO_HELPER_H
#define IO_HELPER_H
#include <iostream>

enum log_type {
	info = 0,
	note,
	warn,
	error_recoverable,
	error_fatal
};

void log( const uint_fast8_t type, const char* const s );

#define LOG_VAR(x) (std::cout << #x << " = " << x << std::endl)


#endif