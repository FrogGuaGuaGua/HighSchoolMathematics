%  (2014，新课标全国II卷)，估算ln2
clc
close all
syms x f(x)

a=1.4;
f1(x)=2*(sinh(x)-x);
f2(x)=f1(2*x)-8*f1(x);
f3(x)=f1(2*x)-(4+3*sqrt(2))*f1(x);
hold on
fplot(f1(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f2(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f3(x),'k--','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(x,'k-','linewidth',0.6,'meshdensity',100,'showpoles','off')
plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)

% axis equal
axis([-0.05,1.1,-0.05,0.4])
grid minor
legend('$ y=f(x) $','$y=g(x),(b=2)$','$y=g(x),(b=\frac{4+3\sqrt{2}}{4})$','interpreter','latex')
% title('$a<e^{1/e}$','interpreter','latex')
