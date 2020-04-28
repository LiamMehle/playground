
cc=g++
flags_perf=-Ofast -march=skylake -msse2 -ffast-math
#-fopt-info
#          -vec
#              -missed
#          -inline
#                 -optimized


flags_perf_debug=-fopt-info-vec-missed
flags_debug=-O0 -g3

flags_lib=-lOpenCL -pthread
flags_common=-Wno-narrowing -lm $(flags_lib)

#flags_perf+=$(flags_perf_debug)

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