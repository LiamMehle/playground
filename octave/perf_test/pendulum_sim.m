h = .5
fi = 5
fi = fi/180*pi
x = h*cos(fi)
dt = 0.00001
g = 9.81

v = 0;
t = 0;

printf('simulating\n\n');
while fi>0
  v  += g*sin(fi)*dt;
  x  -= v*dt;
  fi = asin(x/h);
  t += dt;
endwhile
t *= 2; # time spent is simetric 
disp(t);