% 2010Ìì½ò¸ß¿¼ x/e^xÍ¼Ïñ
clc
close all
fplot(@(x) x.*exp(-x),'k','Linewidth',1.2)
hold on
plot([-100 100],[0.2,0.2],'k:','Linewidth',1.5)
text(0.2,0.13,'$x_1$','interpreter','latex','fontsize',13)
text(2.5,0.13,'$x_2$','interpreter','latex','fontsize',13)
title('$\frac{x}{e^x}$','interpreter','latex','fontsize',16)
axis([-1 6 -2 0.5])
grid on