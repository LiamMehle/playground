VPATH     = ./src/
CC       := gcc
# nocona core2 nehalem corei7 westmere sandybridge corei7-avx ivybridge core-avx-i haswell core-avx2 broadwell skylake skylake-avx512 cannonlake icelake-client icelake-server cascadelake tigerlake cooperlake bonnell atom silvermont slm goldmont goldmont-plus tremont knl knm x86-64 eden-x2 nano nano-1000 nano-2000 nano-3000 nano-x2 eden-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 athlon64 athlon64-sse3 athlon-fx amdfam10 barcelona bdver1 bdver2 bdver3 bdver4 znver1 znver2 btver1 btver2 native
# -march not used for portability
#OPTFLAGS = -march=skylake -Ofast -flto
OPTFLAGS := -Ofast -flto   -fno-signed-zeros -fno-trapping-math -frename-registers
LIBFLAGS := -lstdc++
COMMON   := -Wall -Wpedantic $(OPTFLAGS) 
PROJECT_SPECIFIC :=  -nostdlib
CFLAGS   := $(COMMON) -std=c2x $(PROJECT_SPECIFIC)
CXXFLAGS := $(COMMON) -x c++ -std=c++20
#-g3

TEMP_DIR := /tmp/tiny/
VPATH    := $(VPATH):TEMP_DIR

#ssrc    = $(wildcard ./src/*.s) $(wildcard ./src/*.S)
csrc    = $(wildcard ./src/*.c)
cppsrc   := $(wildcard ./src/*.cpp)
objs     := $(notdir $(cppsrc:.cpp=.o)) $(notdir $(csrc:.c=.o)) $(notdir $(ssrc:.s=.o))


# normal target
all: link

# "all+" = all + object cleanup
ap : all
	rm -rf $(TEMP_DIR) 2>/dev/null ; sleep 0

# link the objects
link: $(objs) mk_dirs
	echo $(wildcard $(TEMP_DIR)*)
	$(CC) $(CFLAGS) -o ./bin/main $(wildcard $(TEMP_DIR)*) $(LIBFLAGS) -Wl,-e_main

# translate the units
%.o :: %.s   mk_dirs 
	$(CC) $(CFLAGS)   -c -o $(TEMP_DIR)$@ $<

%.o :: %.c   mk_dirs 
	$(CC) $(CFLAGS)   -c -o $(TEMP_DIR)$@ $<

%.o :: %.cpp mk_dirs 
	$(CC) $(CXXFLAGS) -c -o $(TEMP_DIR)$@ $<

# make the directories
mk_dirs:
	mkdir $(TEMP_DIR) 2>/dev/null ; sleep 0
	mkdir bin         2>/dev/null ; sleep 0

# clean the directories
clean :
	rm -rf $(TEMP_DIR) 2>/dev/null ; sleep 0
	rm -rf bin         2>/dev/null ; sleep 0
	rm -rf *.log       2>/dev/null ; sleep 0
