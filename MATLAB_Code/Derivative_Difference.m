% 导数与差分的关系
clc
syms x a3 a2 a1 a0
f(x)=a3*x^3+a2*x^2+a1*x+a0;
simplify(f(x+1)-f(x))
simplify(f(x+1/2)-f(x-1/2))
simplify(f(x)-f(x-1))