
cc=g++
flags_perf=-Ofast -march=skylake -msse2 -ffast-math
flags_perf_debug=-ftree-vectorizer-verbose=2
flags_debug=-O0 -g3

flags_lib=-lGL -L/usr/lib -L/usr/local/include -lglfw3 -lGLEW -ldl -lvulkan -lpthread -I/home/wolf/vulkan-sdk/x86_64/include -L/home/wolf/vulkan-sdk/x86_64/lib
flags_common=-Wno-narrowing -lm $(flags_lib)

flags_perf+=$(flags_perf_debug)

#assem: main.cpp, clean
#	$(cc) -S $(target).cpp -o (target).s $(flags)

#perf: main.cpp, clean
#	assem
all: debug

perf: clean make_dir_struct
	$(cc) src/main.cpp -o bin/main $(flags_common) $(flags_perf)

debug: clean make_dir_struct
	$(cc) src/main.cpp -o bin/main $(flags_common) $(flags_debug)


asm: clean make_dir_struct
	$(cc) -S -include-pch src/pch.pch -masm=intel src/main.cpp -o bin/main.s $(flags_perf)

make_dir_struct:
	[ -e './bin/' ] || mkdir bin

clean:
	[ $(ls ./bin/ | wc -l) -eq '0'] || rm -rf bin/*