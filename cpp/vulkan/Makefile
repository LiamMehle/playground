
export CC=gcc
FLAGS_PERF=-Ofast -march=skylake -msse2 -flto
FLAGS_DEBUG=-O0 -g3
FLAGS_FAST=-O0

#-fopt-info
#          -vec
#              -missed
#          -inline
#                 -optimized


FLAGS_PERF_debug=-fopt-info-vec-missed

VULKAN_SDK=/home/wolf/Downloads/vulkan-sdk/x86_64/
#FLAGS_LIB=-lGL -lm-L/usr/lib -L/usr/local/include -lglfw3 -ldl -lvulkan -lpthread -I$(VULKAN_SDK)/include -L$(VULKAN_SKD)/lib
FLAGS_LIB=-lglfw3 -ldl -lm -lvulkan -lpthread -I$(VULKAN_SDK)/include -L$(VULKAN_SKD)/lib
FLAGS_COMMON=-Wall

# flags used for the pch
export FLAGS_PCH=$(FLAGS_LIB) $(FLAGS_COMMON) $(FLAGS_PERF)

# flags used for compilation
FLAGS=$(FLAGS_COMMON) $(FLAGS_PERF) 

# final compile
all: compile_objects make_dirs
	$(CC) obj/*.o -o bin/main $(FLAGS)

# add lines for every source file
compile_objects: pch make_dirs
	$(CC) src/main.c        -o obj/main.o        $(FLAGS) -c
	$(CC) src/renderer.c    -o obj/renderer.o    $(FLAGS) -c
	$(CC) src/debug_utils.c -o obj/debug_utils.o $(FLAGS) -c

pch:
	$(MAKE) -f make_pch

make_dirs:
	[ -e './bin/' ] || mkdir bin
	[ -e './obj/' ] || mkdir obj

clean:
	[ $(ls ./bin/ | wc -l) -eq '0'] || rm -rf ./bin/*
	[ $(ls ./obj/ | wc -l) -eq '0'] || rm -rf ./obj/*
	rm ./src/pch.pch