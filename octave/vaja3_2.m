clear all;
clear all;
clc;

p=7.5;
L=5; # m
E=2*10^5; # MPa/m^2
J=700*10^4*10^(-3*3); # m^4
x = 0:10^-6:L;
f = ((p.*L.^3.*x)/(48.*E.*J)).*(1-3.*(x-L).^2+2.*(x./L).^3);
max(f)
plot(x, f)
figure(1)
title('poves nosilca')
xlabel('pozicija na nosilcu[m]')
ylabel('sila[N]')
