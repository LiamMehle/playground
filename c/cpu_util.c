#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

#define BUFF_SIZE 32
#define RATE      1
int main(void) {
	int fd, ret, threads = 8;
	float uptime0, noptime0, uptime1, noptime1;
	char buff[BUFF_SIZE] = "/proc/uptime";
	fd = open(buff, O_RDONLY);
	if (fd < 0) return -1;
	ret = read(fd, buff, BUFF_SIZE-1);
	if (ret <= 0) return -2;
	sscanf(buff, "%f %f", &uptime0, &noptime0);

	while (1) {
		ret = sleep(RATE);
		lseek(fd, 0, SEEK_SET);            // reset offset
		ret = read(fd, buff, BUFF_SIZE-1); // read
		if(ret < 0) continue;
		sscanf(buff, "%f %f", &uptime1, &noptime1);
		float usage = (1-(noptime1-noptime0)/threads)/(uptime1-uptime0);
		usage = usage < 0 ? 0 : usage; // floor is 0
		usage *= 100;
		printf("cpu usage: %f%\n", usage);
		uptime0 = uptime1;
		noptime0 = noptime1;
	}
	close(fd);
	return 0;
}
