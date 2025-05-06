clc
close all
syms x y
fimplicit(121*x.^2 - (14*y.^2 + 374).*x + y.^4 + 2*y.^2 + 289,'k','linewidth',1.2);
title('$121x^2-(14y^2+374)x + y^4+2y^2+289=0$','interpreter','latex')

axis equal; axis([-1 6 -6.5 6.5]);
grid on

