% sin x > 2x/pi
clc
close all
syms x; 



% axis off

subplot(1,2,1)
hold on
fplot(sin(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(2*x/pi,'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot([-100 100],[0 0],'k','Linewidth',1)
plot([0 0],[-100 100],'k','Linewidth',1)
plot([-100 100],[1.5 1.5],'k','Linewidth',0.5)
plot([2 2],[-100 100],'k','Linewidth',0.5)
axis([-0.3 2 -0.2 1.5])
title('$\sin x>\frac{2}{\pi}x$','interpreter','latex','fontsize',12)
% grid on
% axis equal

subplot(1,2,2)
hold on
fplot(cos(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(1-2*x/pi,'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot([-100 100],[0 0],'k','Linewidth',1)
plot([0 0],[-100 100],'k','Linewidth',1)
plot([-100 100],[1.5 1.5],'k','Linewidth',0.5)
plot([2 2],[-100 100],'k','Linewidth',0.5)
axis([-0.3 2 -0.2 1.5])
title('$\cos x>1-\frac{2}{\pi}x$','interpreter','latex','fontsize',12)



