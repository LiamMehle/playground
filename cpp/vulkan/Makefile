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

VULKAN_SDK=/home/wolf/Downloads/vulkan-sdk/x86_64/
FLAGS_LIB=-lglfw3 -ldl -lm -lvulkan -lpthread -I$(VULKAN_SDK)/include -L$(VULKAN_SKD)/lib
FLAGS_COMMON=-Wall -Wpedantic -Wno-c99-extensions -Wno-deprecated

# flags used for the pch
export FLAGS_PCH=$(FLAGS_LIB) $(FLAGS_COMMON) $(FLAGS_PERF)

# flags used for compilation
CFLAGS=$(FLAGS_COMMON) $(FLAGS_DEBUG)
CXXFLAGS=$(CFLAGS)


OBJECTS=main.o renderer.o debug_utils.o thread_pool.o

# final compile
all : make_dirs $(OBJECTS)
	$(CXX) obj/*.o -o bin/main $(CFLAGS) $(FLAGS_LIB)

%.o : %.c pch.h.gch
	$(CC) $(CFLAGS)    -c $< -o obj/$@

%.o : %.cpp pch.h.gch
	$(CXX) $(CXXFLAGS) -c $< -o obj/$@

pch.h.gch :
	$(CC) ./src/pch.h

make_dirs  :
	[ -d ./bin/          ] || mkdir ./bin/       ; sleep 0
	[ -d ./obj/          ] || mkdir ./obj/       ; sleep 0

clean:
	[ -d ./bin/          ] && rm -rf ./bin/      ; sleep 0
	[ -d ./obj/          ] && rm -rf ./obj/      ; sleep 0
	[ -f ./src/pch.h.gch ] && rm ./src/pch.h.gch ; sleep 0
	[ -f ./core*         ] && rm ./core*         ; sleep 0



run: clean exec clean

exec: all
	bin/main