VPATH     = ./src/
CC       := gcc
TEMP_DIR := /tmp/align_matrix/
PWD      = $(shell pwd)
# nocona core2 nehalem corei7 westmere sandybridge corei7-avx ivybridge core-avx-i haswell core-avx2 broadwell skylake skylake-avx512 cannonlake icelake-client icelake-server cascadelake tigerlake cooperlake bonnell atom silvermont slm goldmont goldmont-plus tremont knl knm x86-64 eden-x2 nano nano-1000 nano-2000 nano-3000 nano-x2 eden-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 athlon64 athlon64-sse3 athlon-fx amdfam10 barcelona bdver1 bdver2 bdver3 bdver4 znver1 znver2 btver1 btver2 native
# -march not used for portability
#OPTFLAGS = -march=skylake -Ofast -flto
OPTFLAGS := -Ofast -march=skylake -fno-signed-zeros -fno-trapping-math -frename-registers
#  -fno-omit-frame-pointer -fprofile-generate=$(TEMP_DIR)
COMMON   := $(OPTFLAGS) -Wall -Wpedantic $(shell cat 'flags')
LIBFLAGS := $(COMMON) -lstdc++
CFLAGS   := $(COMMON)
#$(OPTFLAGS)
CXXFLAGS := $(COMMON) -x c++ -std=c++20
#-g3

VPATH    := $(VPATH):TEMP_DIR

#csrc    = $(wildcard *.c)
cppsrc   := $(wildcard ./src/*.cpp)
objs     := $(notdir $(cppsrc:.cpp=.o))


# normal target
all: link

# "all+" = all + object cleanup
ap : all
	rm -rf $(TEMP_DIR) 2>/dev/null ; sleep 0


# link the objects for code analisys
asm: all
	objdump -D ./bin/main -M intel > ./asm/main.s


# link the objects
link: $(objs)
	$(CC) -o ./bin/main $(wildcard $(TEMP_DIR)*) $(LIBFLAGS) -flto

# translate the units
%.o :: %.c   mk_dirs 
	$(CC) $(CFLAGS)   -c -o $(TEMP_DIR)$@ $<

%.o :: %.cpp mk_dirs 
	$(CC) $(CXXFLAGS) -c -o $(TEMP_DIR)$@ $<

%.s :: %.c   mk_dirs 
	$(CC) $(CFLAGS)   -S -o ./asm/$@      $< -masm=intel

%.s :: %.cpp mk_dirs 
	$(CC) $(CXXFLAGS) -S -o ./asm/$@      $< -masm=intel

# make the directories
mk_dirs:
	mkdir $(TEMP_DIR) 2>/dev/null ; sleep 0
	mkdir bin         2>/dev/null ; sleep 0
	mkdir asm         2>/dev/null ; sleep 0

# clean the directories
clean :
	rm -rf $(TEMP_DIR) 2>/dev/null ; sleep 0
	rm -rf bin         2>/dev/null ; sleep 0
	rm -rf *.log       2>/dev/null ; sleep 0
	rm -rf asm         2>/dev/null ; sleep 0
	rm -rf perf.log*   2>/dev/null ; sleep 0
	rm -rf flags       2>/dev/null ; sleep 0