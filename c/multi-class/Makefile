CC=gcc
FLAGS=-march=skylake -Ofast -flto

all: compile_objects
	$(CC) $(FLAGS) *.o -o main

clean:
	rm *.o main

compile_objects:
	$(CC) $(FLAGS) main.c  -c -o main.o
	$(CC) $(FLAGS) print.c -c -o print.o
	$(CC) $(FLAGS) add.c   -c -o add.o