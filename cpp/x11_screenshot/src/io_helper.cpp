#include "io_helper.h"

void log( const uint_fast8_t type, const char* const s ) {
	/*
		prints:
		<s_program_name>:<info_type> <info>
	*/

	const char* const program_name      = "vulkan_demo";

	const char* const info              = "[info]             ";
	const char* const note              = "[note]             ";
	const char* const warn              = "[WARN]             ";
	const char* const error_recoverable = "[ERROR_RECOVERABLE]";
	const char* const error_fatal       = "[ERROR_FATAL]      ";

	const char*       info_type;

	switch( type ) {
		//case note: // unlikely to be used
#define CASE( X ) case log_type::X : info_type = X; break;
		case log_type::info :              info_type = info; break;
		case log_type::note :              info_type = note; break;
		case log_type::warn :              info_type = warn; break;
		case log_type::error_recoverable : info_type = error_recoverable; break;
		case log_type::error_fatal :       info_type = error_fatal; break;
	};
	printf( "%s:%s %s", program_name, info_type, s );
}