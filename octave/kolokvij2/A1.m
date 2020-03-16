clear all % v primeru, da obstaja spremenljivka z imenom 'all'
clear all % zbrisem vse spremenljivke
clc       % zbrisem konzolo

% vrenost pretvorba
q = 15     *10^3     ; % N/m
L = 5                ; % m
E = 2*10^5 *10^6     ; % Pa
J = 4*10^6 *10^(-3*4); % m^4
korak = 10*10^-3     ; % m
x = 0:korak:L        ; % m



F = q*L^4/(120*E*J)*(2.*(x./L).^2-3.*(x./L).^3+(x./L).^5);
M = q*L^2/60*(-10.*(x./L).^3+9.*(x./L)-2);
[Fm, Fx] = max(F);
[Mm, Mx] = max(M);
fprintf('Maksimalni poves je %.2fmm\nin se pojavi na mestu x=%.2fm.\n\nMaksimalni notrajnji moment je %.2fNm\nin se pojavi na razdalji x = %.2fm od levega konca.\n\n', Fm*10^3, (Fx-1)*korak, Mm, (Mx-1)*korak)

% grafiranje
plot(x,M);
xlabel('pomik [m]');
ylabel('notranji moment [Nm]');
