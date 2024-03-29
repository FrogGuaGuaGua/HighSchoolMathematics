syms x
clc
close all
a=2; b=3;
subplot(1,2,1)
fplot(a^12*(b/a)^x/gamma(x+1)/gamma(12-x+1))
axis([0 13 0 5])
a=2; b=5;
subplot(1,2,2)
fplot(a^12*(b/a)^x/gamma(x+1)/gamma(12-x+1))
axis([0 13 0 5])