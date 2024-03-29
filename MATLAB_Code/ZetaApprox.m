% zetaº¯Êý½üËÆ¼ÆËã
clc
syms x
% F(x)=1/(x - 1) + 0.57721566490153286061 + 0.072815845483676724861*(x - 1) - 0.0048451815964361592422*(x - 1)^2;
% vpa(expand(F(x)),10)
%  F(x)=1/(x - 1) + 0.577215+ 0.072815*(x - 1) - 0.004845*(x - 1)^2;
% \dfrac{1}{s-1}+0.499555+0.082505s-0.004845s^2
F(x)=1/(x - 1)+0.5+0.0824*x-0.005*x^2;
% F(x)=1/(x - 1)+0.5+0.08*x-0.0038*x^2;
vpa(expand(F(x)),10)
close all
% hold on
% fplot(F(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(zeta(x),'ko','linewidth',1.2,'meshdensity',100,'showpoles','off')

A=zeros(6,5);
for n=1:6
s=0.5*n+1;
A(n,1)=zeta(s);
A(n,2)=F(s);
A(n,3)=sum((1:10).^(-s));
A(n,4)=sum((1:20).^(-s));
A(n,5)=sum((1:40).^(-s));
end

%%
% clc
g(x)=zeta(x)-1/(x-1)-1/2+0.005*x^2;
xn=1.1:0.1:3;
yn=double(g(xn));
polyfit(xn,yn,1)

%%
clc
g(x)=zeta(x)-1/(x-1)-1/2-0.08*x;
xn=1.1:0.1:2;
yn=double(g(xn));
polyfit(xn,yn,2)