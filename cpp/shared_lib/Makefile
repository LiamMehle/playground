CC=gcc
FLAGS_PERF=-Ofast -march=skylake
FLAGS_DEBUG=-Og -g3

all: libs
	$(CC) -Wall -o main main.c -L. -lfoo
	sudo ldconfig

clean:
	rm *.so*
	rm *.o
	sudo rm /usr/lib/libfoo.so

libs: make_libs
	sudo ln libfoo.so /usr/lib/libfoo.so

make_libs: make_lib_objects
	$(CC) -Wall libfoo.o -o libfoo.so -fpic -shared -Wl,-soname,lfoo

make_lib_objects:
	$(CC) -c -Wall libfoo.c -fpic
