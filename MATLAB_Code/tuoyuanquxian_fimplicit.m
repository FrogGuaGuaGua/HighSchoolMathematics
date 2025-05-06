clc
close all

subplot(2,3,1)
fimplicit(@(x,y) x.^3 -y.^2,'k','Linewidth',1.5)
title('$y^2=x^3$', 'interpreter','latex','fontsize',10)
axis([-0.5 6 -15 15])
grid on

subplot(2,3,2)
fimplicit(@(x,y) x.^3 -y.^2-1,'k','Linewidth',1.5)
title('$y^2=x^3-1$', 'interpreter','latex','fontsize',10)
axis([0 6 -15 15])
grid on

subplot(2,3,3)
fimplicit(@(x,y) x.^3 -y.^2-2*x+2,'k','Linewidth',1.5)
title('$y^2=x^3-2x+2$', 'interpreter','latex','fontsize',10)
axis([-3 6 -15 15])
grid on

subplot(2,3,4)
fimplicit(@(x,y) x.^3 -y.^2-3*x+2,'k','Linewidth',1.5)
title('$y^2=x^3-3x+2$', 'interpreter','latex','fontsize',10)
axis([-3 6 -15 15])
grid on

subplot(2,3,5)
fimplicit(@(x,y) x.^3 -y.^2-4*x,'k','Linewidth',1.5)
title('$y^2=x^3-4x$', 'interpreter','latex','fontsize',10)
axis([-3 6 -15 15])
grid on

subplot(2,3,6)
fimplicit(@(x,y) x.^3 -y.^2-x,'k','Linewidth',1.5)
title('$y^2=x^3-x$', 'interpreter','latex','fontsize',10)
axis([-2 6 -15 15])
grid on

