clear all
clear all
clc
R = [800 1e3 1e3 1e3 800]
M = [ 0     R(2) 0     0     R(5)
      0     R(2) -R(3) R(4)  0
      R(1) -R(2) 0     R(4) -R(5)
      0     0    -R(3) R(4) -R(5)
      R(1) -R(2) -R(3) 0     0    ];

V = [ 60
      60
      0
      0
      0 ];
null(M)

r = M\V;
