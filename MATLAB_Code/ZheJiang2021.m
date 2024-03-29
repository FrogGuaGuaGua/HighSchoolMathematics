%  2021’„Ω≠
clc
close all
syms x f(x)
f1(x)=log(5*x-exp(2));
F(x)=(2*x+exp(2)-1-sqrt((1-exp(2)-2*x)^2-4*x*(2+2*exp(2))))/(2*x);
f2(x)=F(x)*x*log(x)/2/exp(2)+exp(2)/x;
f3(x)=log(x)+exp(2)/x;

hold on
fplot(f1(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f2(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f3(x),'k-.','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot([exp(4),exp(4)],[-100,100],'k--','linewidth',0.8)
% plot([9.2906374471574,9.2906374471574],[-100,100],'k-.','linewidth',0.8)

plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)

axis([-2,70,-2,8])

grid on
% title('$g(x)=\frac{(x-2)e^x}{(x-1)^2}$','interpreter','latex')
legend('$ y=\ln(5b-e^2) $','$y=\frac{b\ln b}{2e^{2}}\varphi(b)+\frac{e^{2}}{b}$',...
    '$y=\ln b+\frac{e^2}{b}$','$b=e^4$','interpreter','latex')
% text(2.1,1.8,'$y=a$','interpreter','latex')
(exp(2)+3+sqrt(8*exp(2)+8))/2