# init
clear all
clear all
clc
function nl()
	fprintf('\n');
end

Nen=3;
M=[3  0 -2
   4  1  2
  -2  3 -1]
M(2,1);
det(M)
rank(M)
null(M)
V=[16;32;-38];
R=M\V;
razlika=V-M*R
for n=1:1:Nen
  fprintf('R(%d)=%.2f\n',n,R(n));
end
