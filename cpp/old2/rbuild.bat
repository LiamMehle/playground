:loop
  cls
  g++ -O0 %1.cpp -o %1.S -S
  g++ -O0 %1.cpp -o %1.exe -g
  timeout /t 4
goto loop
