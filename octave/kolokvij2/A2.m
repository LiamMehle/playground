clear all % v primeru, da obstaja spremenljivka z imenom 'all'
clear all % zbrisem vse spremenljivke
clc       % zbrisem konzolo


L  = 4      ; % m
h  = 1.5    ; % m
fi = 30     ; % °
q  = 3 *10^3; % N/m
F  = 6 *10^3; % N

M = [ sind(fi), 1, 0;
      cosd(fi), 0 ,1;
      0,        0, L; ];

V = [F, q*L, -F*h+q*L^2/2];
V = V'; % pravilno obrnem vektor

% shranim v spremenljivko, da ne računam več krat po nepotrebnem
v_null = null(M);
v_det  = det(M);
v_rank = rank(M);
fprintf('Stevilo neznank je %u,\nstevlilo enacb je %u.\n', v_rank, size(M)(2))

if v_rank == size(M)(2)
	fprintf('Stevili sta enaki.\n\n')
end

if v_det != 0
	fprintf('Obstaja resitev.\n')

	 if size(v_null)(2) == 0
	 	fprintf('Reseitev je enolicna.\n')
	 end
end

A = M\V;

fprintf('\nRa  = %.2fN\nRBx = %.2fN\nRBy = %.2fN\n', A(1), A(2), A(3))