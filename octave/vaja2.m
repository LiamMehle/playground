# init
clear all
clear all
clc
function nl()
	fprintf('\n');
end

# setting up variables
p  = 3
q1 = 0.3
q2 = 0.7
z1 = 17
z2 = 76
n1 = 710*60  # h^-1
n2 = n1*z1/z2
P1 = 3500    # N
P2 = 1750    # N
F  = 30*10^3 # N

nl()

n_m   = q1*n1 + q2*n2
P_m   = (P1^p*q1+P2^p*q2)^(1/p)
L_10h = 10^6*(F/P_m)^p*1/n_m

fprintf('\nZivljenska doba lezajev je:\n%.2f ur\n%.2f dni\n%.2f let\n',
L_10h, L_10h/24, L_10h/24/365)

nl()

# cleanup
clear all
clear all