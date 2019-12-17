# init
clear all
clear all
clc
function nl()
	fprintf('\n');
end

# setup
# nedefinirano je v [mm]
a      = 120
h      = 25
ro     = 7800/(10^3)^3 # [kg/mm3]
h_valj = h-10
r      = 10
R      = 20

nl();

V_kvader = a*a*h
V_valj = pi*r^2*h_valj
V_pr_stozec = pi*(h - h_valj)/3*(R^2+r^2+R*r)
V = V_kvader - V_valj - V_pr_stozec
m = V*ro

nl();

fprintf('Volumen: %.2fm^3\nMasa predmeta je %0.2fkg\n',(V/10^3)/10^3, m);
nl();

clear all