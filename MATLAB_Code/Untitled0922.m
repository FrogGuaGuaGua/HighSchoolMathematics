syms x
close all
% fplot(gamma(x+1))
hold on
% fplot(3^x)
% fplot(exp(x))
fplot(2^x)
fplot(x^2)
axis([0 10 0 100])
grid minor
% legend('n!','2^n')
legend('2^n','n^2')