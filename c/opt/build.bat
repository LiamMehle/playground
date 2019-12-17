del a.exe
rem gcc -Ofast -ffast-math -fopt-info -fopt-info-vec-missed -msse2 -fno-dce -S -masm=intel ivdep.c
g++ -Ofast -ffast-math -fopt-info -msse2 -fno-dce -S -masm=intel ivdep.c
g++ -Ofast -ffast-math -fopt-info -fopt-info-vec-missed -msse2 -fno-dce -g ivdep.s
echo done
echo running code
a.exe