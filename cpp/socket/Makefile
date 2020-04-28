export VPATH=src:obj

CC=clang
CCFLAGS=-Ofast -flto -Wall -Wpedantic

OBJS=main.o

all : mk_dirs $(OBJS)
	$(CC) $(CCFLAGS) ./obj/*.o -o ./bin/main

%.o : %.c
	$(CC) $(CCFLAGS) -c $< -o ./obj/$@

mk_dirs :
	[ -d ./bin/ ] || mkdir ./bin/  ; sleep 0
	[ -d ./obj/ ] || mkdir ./obj/  ; sleep 0

clean :
	[ -d ./bin/ ] && rm -rf ./bin/ ; sleep 0
	[ -d ./obj/ ] && rm -rf ./obj/ ; sleep 0
