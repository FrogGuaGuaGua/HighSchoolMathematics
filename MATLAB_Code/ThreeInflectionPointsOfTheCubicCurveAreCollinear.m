% f=(x+a)/(x^2+b),  b>0,三次曲线3拐点共线问题
clc
% syms x a b
% f=(x+a)/(x^2+b);
% f1=simplify(diff(f,x)*(x^2 + b)^2)
% f2=simplify(diff(f,x,2)*(x^2 + b)^3)
% factor(f2)
% 
% x=-a-sqrt(a^2+b);
% simplify(x^3+3*a*x^2-3*b*x-a*b)
% x=-a+sqrt(a^2+b);
% simplify(x^3+3*a*x^2-3*b*x-a*b)
syms a b c A B C D t
u=A*t+B;
v=C*t+D;
r=expand(a*u^2+b*u*v+c*v^2)
co=coeffs(r,t)
simplify(co(2)*co(2)-4*co(1)*co(3))



