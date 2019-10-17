rem simple script to build program set in %TARGET% with %CC%

@echo off
cls
set CC=g++
set TARGET=eve_utility
echo building %TARGET%

rem setting flags
if "%1"==""       (set FLAGS=-O0)

if "%1"=="r"        (set FLAGS=-O3)
if "%1"=="rel"      (set FLAGS=-O3)
if "%1"=="release"  (set FLAGS=-O3)

if "%1"=="0debug"    (set FLAGS=-O0 -g)
if "%1"=="debug"    (set FLAGS=-Og -g)
if "%1"=="debg"     (set FLAGS=-Og -g)
if "%1"=="dbg"      (set FLAGS=-Og -g)

if "%1"=="flag"     (set FLAGS=%2)
if "%1"=="flags"    (set FLAGS=%2)



if "%1"=="test_size" (
	call :test_size -Os
	call :test_size -O0
	call :test_size -O1
	call :test_size -O2
	call :test_size -O3
	call :test_size -Ofast
	exit /B 0
)

rem executing CC
set FLAGS=%FLAGS% -Wall
echo building with flags: %FLAGS%
echo %CC% %TARGET%.cpp -o %TARGET% %FLAGS%
%CC% %TARGET%.cpp -o %TARGET% %FLAGS%

if "%1"=="run"    (eve_utility)

echo done
exit /B 0

:test_size
	set output=temp
	set output=%output%%~1
	%CC% %TARGET%.cpp -o %output% %~1
	size %output%.exe
	del %output%.exe
exit /B 0