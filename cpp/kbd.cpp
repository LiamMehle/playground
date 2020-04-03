#include <iostream>
#include <fcntl.h>
#include <unistd.h>
#include <assert.h>
#include <linux/input.h>

#define ms_to_us 1000
#define PAGE     4096
#define log_var(var) (std::cout << #var << "=" << var << std::endl)

//
//struct input_event {
//struct timeval time;
//__u16 type;
//__u16 code;
//__s32 value;
//};
//

int main() {
	input_event ev;
	int n;
	int fd = open("/dev/input/by-path/platform-i8042-serio-0-event-kbd", O_RDONLY);
	assert(fd > 2);
	while(true) {
		n = read(fd, &ev, sizeof(ev));
		if (n > 0) {
			//log_var(ev.time);
			//log_var(ev.type);
			//log_var(ev.code);
			log_var(ev.value);
		}
		else if (n < 0) {
			std::cout << "[error] " << errno << std::endl;
			usleep(10*ms_to_us);
		}
	}
	return 0;
}