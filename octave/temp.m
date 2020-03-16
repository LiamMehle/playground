clear all
clear all
clc

function y = f(x)
	y = x.^2.*log(x);
end

x = 0:10^-3:100;
y = f(x);


fprintf("text%f%f", spremen, s2)

plot(x,y,'-.k')
plot(x,x,'--b')
plot(x,y,'-.k')

xlabel('input')
ylabel('output')