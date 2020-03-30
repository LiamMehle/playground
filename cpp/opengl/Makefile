
cc=g++
flags_perf=-Ofast -march=skylake
flags_debug=-Og -g3

flags_lib=-lGL -L/usr/lib -L/usr/local/include -lglfw3 -lGLEW -ldl -lpthread
flags_common=-Wall $(flags_lib) 

#assem: main.cpp, clean
#	$(cc) -S $(target).cpp -o (target).s $(flags)

#perf: main.cpp, clean
#	assem
all: clean
	mkdir bin
	$(cc) src/main.cpp -o bin/main $(flags_common)

clean:
	rm -rf bin