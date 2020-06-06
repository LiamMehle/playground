VPATH   = ./src/
CC=clang
# -march not used for portability
CFLAGS  = -mtune=skylake -Ofast -flto -Wall -Wpedantic -Werror
#-lstdc++
CXXFLAGS= $(CFLAGS) -x c++
#csrc   = $(wildcard *.c)
cppsrc  = $(wildcard ./src/*.cpp)
objs    = $(notdir $(cppsrc:.cpp=.o))

all: mk_dirs link

link: $(objs)
	$(CC) $(CFLAGS) -o ./bin/main $(wildcard ./obj/*) -lstdc++

%.o :: %.c
	$(CC) $(CFLAGS)   -o ./obj/$@ $<

%.o :: %.cpp
	$(CC) $(CXXFLAGS) -c -o ./obj/$@ $<

mk_dirs:
	mkdir obj  2>/dev/null ; sleep 0
	mkdir bin  2>/dev/null ; sleep 0

clean:
	rm -rf bin 2>/dev/null ; sleep 0
	rm -rf obj 2>/dev/null ; sleep 0
