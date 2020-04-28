#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <string.h>

#define PORT 987

int main(void) {
	struct sockaddr_in serv_addr;
	int sock = socket(AF_LOCAL, SOCK_STREAM, 0);
	
	bzero((void*)&serv_addr, sizeof(serv_addr));
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port   = htons(PORT);
	inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr);
	
	return 0;
}
