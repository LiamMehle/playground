# working make file v2.0

CC       := gcc

VPATH     = ./src/
PWD       = $(shell pwd)
TEMP_DIR := /tmp/$(shell basename $(PWD))/

OPTFLAGS := -O0
COMMON   := $(OPTFLAGS) -Wall -Wpedantic -Werror $(shell cat 'flags') -g
LIBFLAGS := $(COMMON) -lstdc++


CFLAGS   := $(COMMON)
CPPFLAGS :=	$(COMMON)

CSRC     := $(wildcard *.c)
CPPSRC   := $(wildcard ./src/*.cpp)
OBJS     := $(notdir $(CPPSRC:.cpp=.o)) $(notdir $(CSRC:.c=.o))

all: link

link: $(OBJS)
	$(CC) -o ./bin/main $(wildcard $(TEMP_DIR)*) $(LIBFLAGS)

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

