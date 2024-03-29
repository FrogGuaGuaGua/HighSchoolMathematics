% 
clc
close all
% syms x f(x)
figure;
set(gcf,'unit','centimeters','position',[2,2,22,13])

subplot(2,2,1)
hold on
fplot(@(x) sin(x)./x,'k','Linewidth',0.8)
fplot(@(x) (pi^2-x.^2)./(pi^2+x.^2),'k:','Linewidth',1.2)
legend('$\frac{\sin x}{x}$','$\frac{\pi^2-x^2}{\pi^2+x^2}$','interpreter','latex','fontsize',8)
axis([-5 5 -1 1.5])
grid on

subplot(2,2,2)
hold on
fplot(@(x) sinh(x)./x,'k','Linewidth',0.8)
fplot(@(x) (pi^2+x.^2)./(pi^2-x.^2),'k:','Linewidth',1.2) % 'showpoles','off'
legend('$\frac{\sinh x}{x}$','$\frac{\pi^2-x^2}{\pi^2+x^2}$','interpreter','latex','fontsize',8)
axis([-4 4 0 10])
grid on

subplot(2,2,3)
hold on
fplot(@(x) cos(x),'k','Linewidth',0.8)
fplot(@(x) (pi^2-4*x.^2)./(pi^2+4*x.^2),'k:','Linewidth',1.2)
legend('$\cos x$','$\frac{\pi^2-4x^2}{\pi^2+4x^2}$','interpreter','latex','fontsize',8)
axis([-2 2 -1 1.5])
grid on

subplot(2,2,4)
hold on
fplot(@(x) cosh(x),'k','Linewidth',0.8)
fplot(@(x) (pi^2+4*x.^2)./(pi^2-4*x.^2),'k:','Linewidth',1.2)
legend('$\cosh x$','$\frac{\pi^2+4x^2}{\pi^2-4x^2}$','interpreter','latex','fontsize',8)
axis([-2 2 0 10])
grid on