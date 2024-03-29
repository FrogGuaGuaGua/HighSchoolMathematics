% 最贱数学题
clc
% clear all
syms a b c x y
% x= -28*(a + b + 2*c)/(6*a + 6*b - c);
% y= 364*(a - b)/(6*a + 6*b - c);
% expand(x^3 + 109*x^2 - y^2 + 224*x)

a=(56 - x + y)/(56 - 14*x);
b=(56 - x - y)/(56 - 14*x);
c=(-28 - 6*x)/(28 - 7*x);
simplify(expand(a/(b+c)+b/(a+c)+c/(a+b)-4))
