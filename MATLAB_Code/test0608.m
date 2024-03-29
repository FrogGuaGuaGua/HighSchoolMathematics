% 组合数 生成函数
clc
syms x y(x)
% f(x)=1/(1-x^1)/(1-x^5)/(1-x^10)/(1-x^20);
% taylor(f(x),x,0,'order',35)
% 
% f(x)=1/(1-x^1)/(1-x^2)/(1-x^5)/(1-x^10);
% taylor(f(x),x,0,'order',27)

dsolve(x*diff(y,x,2)+(1-x)*diff(y,x,1)+y)
dsolve(x*diff(y,x,2)+(1-x^2)*diff(y,x,1)+y)
