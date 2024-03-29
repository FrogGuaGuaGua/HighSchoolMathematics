%%
clc


syms x
f(x)=x*log(x)-x;
g(x)=2*pi*finverse(f);
Lnfinv=double(g(1:100000));

% NZ=length(RZero);
%%
close all
NZ=100000;
n=1:NZ;
hold on
plot(1:1000:NZ,RZero(1:1000:NZ),'ko','markersize',3)
plot(1:NZ,Lnfinv(1:NZ),'k-','linewidth',1.2)
fplot(x/(2*pi)*log(x/(2*pi))-x/(2*pi),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(x,'k-.','linewidth',1.2,'meshdensity',100,'showpoles','off')
axis([-100,NZ+100,-100,NZ+100]);
% axis equal
legend('zeta函数复数零点的虚部','$y=2\pi F(x) $','$y=\frac{x}{2\pi}\ln\frac{x}{2\pi}-\frac{x}{2\pi}$','$y=x$','interpreter','latex')
%%
