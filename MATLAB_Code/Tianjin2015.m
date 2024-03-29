% 2015 Ìì½ò
clc
close all
syms x f(x)
n=3;
x0=n^(1/(n-1));
f(x)=n*x-x^n;
f1(x)=n*x;
g(x)=(n-n^2)*(x-x0);
F(x)=(n-1)*(2*x-x^2);
% figure
hold on
fplot(f(x),'k-','linewidth',1.2,'meshdensity',200,'showpoles','off')

fplot(f1(x),'k:','linewidth',1.2,'meshdensity',200,'showpoles','off')
fplot(g(x),'k--','linewidth',1.2,'meshdensity',200,'showpoles','off')
fplot(F(x),'r-','linewidth',1.2,'meshdensity',200,'showpoles','off')

plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([-100,100],[1.6,1.6],'k-.','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)

% fplot(g(x),'k-','linewidth',1.2,'meshdensity',500)
% axis equal
axis([-0.5,2.5,-1,5])

grid on
% title('$g(x)=\frac{(x-2)e^x}{(x-1)^2}$','interpreter','latex')
legend('$f(x)=nx-x^n $','$h(x)=nx$','$g(x)=(n-n^2)(x-x_0)$','$F(x)=(n-1)(2x-x^2)$','interpreter','latex')
text(2.1,1.8,'$y=a$','interpreter','latex')

