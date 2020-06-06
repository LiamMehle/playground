#include <iostream>
#include <errno.h>
#include <sys/types.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <unistd.h>
#include <array>
#include <sys/time.h>
#include <string.h>


void error(const char* const msg) {
	std::cout << msg << std::endl;
	std::exit(errno);
}

#define DIR "/home/wolf/battery_log/"
const char* __restrict dir_path  = DIR;
const char* __restrict file_path = DIR"log";
#undef DIR

void echo(char* s) {
	std::cout << s << std::endl;
}

int main() {
	int len = 3;
	int source_fd;
	int log_fd;
	std::array<char, 4> buf;
	std::array<char, 24> time_str;

	struct timeval tv;
	gettimeofday(&tv, nullptr);
	sprintf(&time_str[0], "%ld.%ld", tv.tv_sec, tv.tv_usec);

	// aquire and prepare shared resource
	source_fd = open("/sys/class/power_supply/BAT0/capacity", O_RDONLY);
	if(source_fd == -1) error("could not access pseudo-file");

	int count = read(source_fd, &buf[0], 3);
	buf[count] = '\0';

	// release shared resource
	close(source_fd);
	
	{
		struct stat sb;
		
		if(stat(dir_path, &sb) != 0) {
			mkdir(dir_path, 0777);
		}
		if(stat(file_path, &sb) == 0) {
			log_fd = open(file_path, O_WRONLY);
		} else {
			log_fd = open(file_path, O_CREAT | O_WRONLY, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH);
		}
		if(log_fd == -1) error("could not open/create log file");
	}

	// data is currently accessable in buf
	// write/append to log
	lseek(log_fd, 0, SEEK_END);

	{
		std::array<char, time_str.size()+3+1> string;
		len = sprintf(&string[0], "%s;%s\n", &time_str[0], &buf[0]);
		write(log_fd, &string[0], len);
	}
	// close with mem-leak

	// memory leaks:
	// log_fd, buf

	return 0;
}
