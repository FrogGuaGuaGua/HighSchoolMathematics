syms x y
close all
clc
subplot(2,3,1)
xmin=-0.5;  xmax=6;
fplot(sqrt(x^3),[xmin xmax],'k','linewidth',1.5)
hold on
fplot(-sqrt(x^3),[xmin xmax],'k','linewidth',1.5)
axis([xmin xmax -15 15])
grid on
title('$y^2=x^3$', 'interpreter','latex','fontsize',10)

subplot(2,3,2)
xmin=0.5;  xmax=6;
fplot(sqrt(x^3-1),[xmin xmax],'k','linewidth',1.5)
hold on
fplot(-sqrt(x^3-1),[xmin xmax],'k','linewidth',1.5)
axis([xmin xmax -15 15])
grid on
title('$y^2=x^3-1$', 'interpreter','latex','fontsize',10)

subplot(2,3,3)
xmin=-2.3;  xmax=6;
fplot(sqrt(x^3-2*x+2),[xmin xmax],'k','linewidth',1.5)
hold on
fplot(-sqrt(x^3-2*x+2),[xmin xmax],'k','linewidth',1.5)
axis([xmin xmax -15 15])
grid on
title('$y^2=x^3-2x+2$', 'interpreter','latex','fontsize',10)

subplot(2,3,4)
xmin=-3;  xmax=6;
fplot(sqrt(x^3 - 3*x + 2),[xmin xmax],'k','linewidth',1.5)
hold on
fplot(-sqrt(x^3 - 3*x + 2),[xmin xmax],'k','linewidth',1.5)
axis([xmin xmax -15 15])
grid on
title('$y^2=x^3-3x+2$', 'interpreter','latex','fontsize',10)

subplot(2,3,5)
xmin=-2.5;  xmax=6;
fplot(sqrt(x^3-4*x),[xmin xmax],'k','linewidth',1.5)
hold on
fplot(-sqrt(x^3-4*x),[xmin xmax],'k','linewidth',1.5)
axis([xmin xmax -15 15])
grid on
title('$y^2=x^3-4x$', 'interpreter','latex','fontsize',10)

subplot(2,3,6)
xmin=-2;  xmax=6;
fplot(sqrt(x^3-x),[xmin xmax],'k','linewidth',1.5)
hold on
fplot(-sqrt(x^3-x),[xmin xmax],'k','linewidth',1.5)
axis([xmin xmax -15 15])
grid on
title('$y^2=x^3-x$', 'interpreter','latex','fontsize',10)
