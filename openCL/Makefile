export VPATH=src:obj

CC=clang
CXX=clang++
FLAGS_PERF=-Ofast -march=skylake -msse2 -flto
FLAGS_DEBUG=-O0 -g3
FLAGS_FAST=-O0

#-fopt-info
#          -vec
#              -missed
#          -inline
#                 -optimized


FLAGS_PERF_DEBUG=-fopt-info-vec-missed

FLAGS_COMMON=-Wall -Wpedantic -lOpenCL

# flags used for compilation
CFLAGS=$(FLAGS_COMMON) $(FLAGS_DEBUG)
CXXFLAGS=$(CFLAGS) -Wno-c99-extensions -Wno-deprecated

OBJECTS=main.o

# final compile
all : make_dirs $(OBJECTS)
	$(CXX) obj/*.o -o bin/main $(CFLAGS) $(FLAGS_LIB)

%.o : %.c
	$(CC) $(CFLAGS)    -c $< -o obj/$@

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o obj/$@

make_dirs  :
	[ -d ./bin/          ] || mkdir ./bin/       ; sleep 0
	[ -d ./obj/          ] || mkdir ./obj/       ; sleep 0

clean:
	[ -d ./bin/          ] && rm -rf ./bin/      ; sleep 0
	[ -d ./obj/          ] && rm -rf ./obj/      ; sleep 0
	[ -f ./core*         ] && rm ./core*         ; sleep 0
