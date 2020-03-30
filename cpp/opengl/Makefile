
cc=clang
flags_perf=-Ofast -march=skylake -unroll-count=4
flags_debug=-Og -g3

flags_lib=-lGL -L/usr/lib -L/usr/local/include -lglfw3 -lGLEW -ldl -lpthread
flags_common=-Wall -lm $(flags_lib)

#assem: main.cpp, clean
#	$(cc) -S $(target).cpp -o (target).s $(flags)

#perf: main.cpp, clean
#	assem
all: clean
	mkdir bin
	$(cc) src/main.cpp -o bin/main $(flags_common) $(flags_perf)

asm: clean
	mkdir bin
	$(cc) -S -masm=intel src/main.cpp -o bin/main.s $(flags_perf)

clean:
	rm -rf bin

run: all
	./bin/main