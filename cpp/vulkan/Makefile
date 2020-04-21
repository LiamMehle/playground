export VPATH=src:obj

export CC=gcc
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
# FLAGS_LIB=-lGL -lm-L/usr/lib -L/usr/local/include -lglfw3 -ldl -lvulkan -lpthread -I$(VULKAN_SDK)/include -L$(VULKAN_SKD)/lib
FLAGS_LIB=-lglfw3 -ldl -lm -lvulkan -lpthread -I$(VULKAN_SDK)/include -L$(VULKAN_SKD)/lib
FLAGS_COMMON=-Wall -Wpedantic

# flags used for the pch
export FLAGS_PCH=$(FLAGS_LIB) $(FLAGS_COMMON) $(FLAGS_PERF)

# flags used for compilation
FLAGS=$(FLAGS_COMMON) $(FLAGS_DEBUG)



OBJECTS=main.o renderer.o debug_utils.o thread_pool.o

# final compile
all : make_dirs $(OBJECTS)
	$(CC) obj/*.o -o bin/main $(FLAGS) $(FLAGS_LIB)

%.o : %.c pch.h.gch
	$(CC) $(FLAGS) -c $< -o obj/$@

pch.h.gch :
	$(CC) ./src/pch.h

make_dirs  :
	[ -e './bin/' ] || mkdir bin
	[ -e './obj/' ] || mkdir obj

clean:
	[ $(shell ls ./bin/ | wc -l) -gt '0' ] && rm -rf ./bin/
	[ $(shell ls ./obj/ | wc -l) -gt '0' ] && rm -rf ./obj/
	[ $(shell ls ./obj/ | wc -l) -gt '0' ] && rm ./src/pch.h.gch
	rm core*



run: exec clean

exec: all
	bin/main