CC       := gcc

VPATH     = ./src/
PWD       = $(shell pwd)
TEMP_DIR := /tmp/$(shell basename $(PWD))

OPTFLAGS :=
COMMON   := $(OPTFLAGS) -Wall -Wpedantic $(shell cat 'flags')
LIBFLAGS := $(COMMON) -lstdc++


CFLAGS   :=
CPPFLAGS :=

CSRC     := $(wildcard *.c)
CPPSRC   := $(wildcard ./src/*.cpp)
OBJS     := $(notdir $(cppsrc:.cpp=.o))

all: link

link: $(OBJS)
	echo $(PWD)
	echo $(TEMP_DIR)
	#$(CC) -o ./bin/main $(wildcard $(TEMP_DIR)*) $(LIBFLAGS) -flto

# translate the units
%.o :: %.c   mk_dirs 
	$(CC) $(CFLAGS)   -c -o $(TEMP_DIR)$@ $<

%.o :: %.cpp mk_dirs 
	$(CC) $(CXXFLAGS) -c -o $(TEMP_DIR)$@ $<

mk_dirs:
	mkdir $(TEMP_DIR) 2>/dev/null ; sleep 0
	mkdir bin         2>/dev/null ; sleep 0
	mkdir asm         2>/dev/null ; sleep 0

# clean the directories
clean :
	rm -rf $(TEMP_DIR) 2>/dev/null ; sleep 0
	rm -rf bin         2>/dev/null ; sleep 0

