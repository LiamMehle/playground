echo off
del /S /Q bin\*
g++ -O0 src/main.cpp -o bin/main.exe
echo on