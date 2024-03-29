% 迭代序列 函数与y轴交点
clc
close all
syms x f(x) Q(x)
% figure;
% set(gcf,'unit','centimeters','position',[2,2,22,13])

% f(x)=-(1+x.^2/2+x.^3/6);
f(x)=-(1+x.^2/2+x.^3/6+x.^4/24+x.^5/120);
% f(x)=(x+1)./(x.^2+1);
% Q(x)=f(x)-x*diff(f(x),x);
% simplify(Q)
% pretty(simplify(Q))
% diff(Q(x),x)
% simplify(diff(Q(x),x))
% pretty(simplify(diff(Q(x),x)))

xn=-3;
for n=1:50
    xn=double(f(xn))
end
double(solve(f(x)-x,x))

fplot(f,'k')
hold on
fplot(@(x) x,'r')
grid minor