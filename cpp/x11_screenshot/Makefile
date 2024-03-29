VPATH     = ./src/:$(wildcard ./src/**/)
export CC       := clang
export PWD      = $(shell pwd)
export TEMP_DIR := /tmp/$(notdir $(PWD))/
# nocona core2 nehalem corei7 westmere sandybridge corei7-avx ivybridge core-avx-i haswell core-avx2 broadwell skylake skylake-avx512 cannonlake icelake-client icelake-server cascadelake tigerlake cooperlake bonnell atom silvermont slm goldmont goldmont-plus tremont knl knm x86-64 eden-x2 nano nano-1000 nano-2000 nano-3000 nano-x2 eden-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 athlon64 athlon64-sse3 athlon-fx amdfam10 barcelona bdver1 bdver2 bdver3 bdver4 znver1 znver2 btver1 btver2 native
# -march not used for portability
#OPTFLAGS = -march=skylake -Ofast -flto
OPTFLAGS := -Ofast -march=skylake -fno-signed-zeros -fno-trapping-math -frename-registers -flto
#  -fno-omit-frame-pointer -fprofile-generate=$(TEMP_DIR)
COMMON   := -fno-omit-frame-pointer -O0 -g3 -Werror -Wall -Wpedantic $(shell cat 'flags' 2>/dev/null) -fopenmp -fno-exceptions
LIBFLAGS := $(COMMON) -lstdc++ -lX11 -lm -lpthread
export CFLAGS   := $(COMMON)
#$(OPTFLAGS)
export CXXFLAGS := $(COMMON) -x c++ -std=c++20

VPATH    := $(VPATH):TEMP_DIR


csrc     := $(wildcard ./src/*.c)   $(wildcard ./src/**/*.c)
cppsrc   := $(wildcard ./src/*.cpp) $(wildcard ./src/**/*.cpp)
objs     := $(notdir $(cppsrc:.cpp=.o)) $(notdir $(csrc:.c=.o))


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
	$(CC) -o ./bin/main $(wildcard $(TEMP_DIR)*) $(LIBFLAGS)

# translate the units
%.o :: %.c   mk_dirs
	$(CC) $(CFLAGS)   -c -o $(TEMP_DIR)$@ $<

%.o :: %.cpp mk_dirs
	$(CC) $(CXXFLAGS) -c -o $(TEMP_DIR)$@ $<

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
	rm -rf src/renderer/renderer_common.h.pch 2>/dev/null ; sleep 0
