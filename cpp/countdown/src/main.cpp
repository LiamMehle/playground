#include <stdio.h> // io
#include <time.h>  // get current time
#include <stdint.h>

//#define TIME_FORMAT R"(%d.%m.%y %H:%M:%S)" // to-do: define format
#define TIME_FORMAT R"(%Y)" // to-do: define format
#define PAGE 4096

int main( int argc, char** argv ) {
	// get values

	//char   timestamp[PAGE];       // string representation of target_time
	struct timespec target_time;  // will get manipulated 
	struct tm       target_time_tm;
	struct timespec current_time;
	struct timespec diff_time;

	if( argc != 2 )
		return 1;

	if( strptime( argv[1], TIME_FORMAT, &target_time_tm ) != NULL )
		target_time.tv_sec = mktime( &target_time_tm );
	else
		return -1; // to-do: fix error code/message

	printf("%s\n", argv[1]);
	printf("%llu\n", target_time_tm.tm_year);


	// compute difference
	if( target_time.tv_nsec >= current_time.tv_nsec ) {
		//diff_time.tv_nsec = target_time.tv_nsec - current_time.tv_nsec; // unnecessary work
		diff_time.tv_sec  = target_time.tv_sec       - current_time.tv_sec;
	}
	else {
		//diff_time.tv_nsec = target_time.tv_nsec - current_time.tv_nsec + 1000000000UL;
		diff_time.tv_sec  = target_time.tv_sec       - current_time.tv_sec - 1;
	}

	const uint8_t seconds = (diff_time.tv_sec) % 60;
	const uint8_t minutes = (diff_time.tv_sec  / 60) % 60;
	const uint8_t hours   = (diff_time.tv_sec  / 60  / 60) % 24;
	const uint64_t days   = (diff_time.tv_sec  / 60  / 60  / 24);
	printf("%2u days\t%2u:%2u:%2u\n", days, hours, minutes, seconds);
	return 0;
}