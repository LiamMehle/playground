#include <arpa/inet.h>
#include <stdio.h>
#include <sys/socket.h>
#include <unistd.h>
#include <errno.h>

#ifndef ADDRESS
#define ADDRESS "172.217.22.110"
#endif

#ifndef PORT
#define PORT 80
#endif

#define PAGE 4096

int main(int argc, char** argv, char** env) {
	int                ret = 0;
	int                conn_fd;
	struct sockaddr_in server_addr = { 0 };

	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(PORT);

	ret = inet_pton(AF_INET, ADDRESS, &server_addr.sin_addr);
	if (ret != 1) {
		if (ret == -1) {
			perror("inet_pton");
		}
		fprintf(stderr,
		        "failed to convert address %s "
		        "to binary net address\n",
		        ADDRESS);
		return errno;
	}

	fprintf(stdout, "CONNECTING: address=%s port=%d\n", ADDRESS, PORT);
	conn_fd = socket(AF_INET, SOCK_STREAM, 0);

	if (conn_fd == -1) {
		perror("socket");
		return errno;
	}

	ret = connect(conn_fd, (struct sockaddr*)&server_addr, sizeof(server_addr));
	if (ret == -1) {
		perror("connect");
		return errno;
	}

	{ // sending bytes
		char buf[] = "GET / HTTP/1.0\r\n\r\n";
		ret = write(conn_fd, buf, sizeof(buf));
		if( ret == -1 )
			perror("sending bytes");
		if( ret != sizeof(buf) )
			fprintf(stderr, "size of message is %ld, but sent %d\n", sizeof(buf), ret);
	}
	{
		unsigned long bytes_read = 0;
		char buf[PAGE];
		ret = read(conn_fd, buf, PAGE);
		do {
			switch(ret) {
				case -1:
					fprintf(stderr, "failed to read");
					break;
				case 0:
					fprintf(stderr, "read 0 bytes");
					break;
				default:
					write(1, buf, ret);
					bytes_read += ret;
			}
		} while(ret == PAGE);
		printf("\nRX bytes = %lu\n", bytes_read);
	}

	ret = shutdown(conn_fd, SHUT_RDWR);
	if (ret == -1) {
		perror("shutdown");
		return errno;
	}

	ret = close(conn_fd);
	if (ret == -1) {
		perror("close");
		return errno;
	}

	return 0;
}
