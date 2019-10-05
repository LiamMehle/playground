#include <stdio.h>
#include <pthread.h>
#include <sys/stat.h>	//mkfifo ()
#include <time.h>		//all related time stuff
#include <stdint.h>
/*clude <fnctl.h>		//not found
//clude <sys/types.h>
//#include <sys/uio.h>
//#include <ctype.h>
//#include <unistd.h>
//#include <cstdlib.h>	//fork ()*/

#define O_RDONLY         00
#define O_WRONLY         01
#define O_RDWR           02
#define CYCLES 100000000//0000000000

pthread_cond_t cv = PTHREAD_COND_INITIALIZER;

void* read_pipe (void* end)
{
	char buff;
	FILE* f = fopen ("named_pipe", "r");
	while (1)
	{
		buff = getc (f);
		printf ("%c", buff);
		if (buff == 'q')
			break;
	}
	fclose (f);
}

int main ()
{
	mkfifo ("named_pipe", 0666);
	pthread_t thread_handle;
	pthread_create (&thread_handle, NULL, read_pipe, NULL);

	FILE* f = fopen ("named_pipe", "w");
	char buff;
	while (1)
	{
		buff = getchar ();
		fputc (buff, f);
		
		if (buff == 'q')
			break;
	}
	puts ("flushing");
	fflush (f);
	

	pthread_join (thread_handle, NULL);
	fclose (f);
	remove ("named_pipe");
	return 0;
	
}



// time    = clock ();				//ticks 
// seconds = time/CLOCKS_PER_SEC	//seconds