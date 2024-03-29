% 拉格朗日反演(Lagrange inversion)
sympref('PolynomialDisplayStyle','ascend')
clc
close all
syms x
figure 
hold on
fplot(x*exp(x),'k--','linewidth',1)
fplot(x,'g','linewidth',0.3)
fplot(lambertw(x),'k','linewidth',0.8,'showpoles','off')
fplot(x-x^2+1.5*x^3-8/3*x^4,'k:','linewidth',1.5)
axis equal
axis([-1 1 -1 1])
grid on

gca=legend('$y=xe^x$','$y=x$','$y$=LambertW$(x)$','$y=x-x^2+\frac{3}{2}x^3-\frac{8}{3}x^4$','interpreter','latex','fontsize',8);
set( gca, 'Position', [-0.14, 0.35, 1, 1]); 
% X=-0.2:0.01:0.2;
% plot(X.*exp(-X),X,'r','linewidth',1.5)
% fplot(x+x^2+1.5*x^3+8/3*x^4,'k')
% axis([-2 2 -2 2])
% fplot(finverse(x+log(x)))
% t(x)=expand(taylor(finverse(x+log(x)),'ExpansionPoint',1,'order',5))
% c=coeffs(t(x))
% fplot(t(x))
% grid minor

%%
clc
% f(x)=x./log(x);
% f(x)=log(x)/x;
% f(x)=x*log(x);
% f(x)=x*exp(x);
% f(x)=x/exp(x);
% f(x)=exp(x)/x;
% f(x)=exp(x)-x;
f(x)=x-log(x);
% x0=exp(1);
x0=1;
F(x)=2*diff(f,x,3)/3/(diff(f,x,2))^2 ;
k=double(vpa(subs(F(x),x,x0)))
rats(k)

subs(diff(f,x,2),x,x0)
subs(diff(f,x,3),x,x0)


