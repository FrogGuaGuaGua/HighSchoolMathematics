clc
close all
syms x y z
fimplicit(121*x.^2 - (14*y.^2 + 374).*x + y.^4 + 2*y.^2 + 289,'k','linewidth',1.2);
title('$121x^2-(14y^2+374)x + y^4+2y^2+289=0$','interpreter','latex')

axis equal; axis([-1 6 -6.5 6.5]);
grid on

figure
fimplicit(5*x.^2-4*x.*y+y.^2-6,'k','linewidth',1.2);

axis equal; axis([-3.5 3.5 -6.5 6.5]);
grid on;
title('$5x^2-4xy+y^2-6=0$','interpreter','latex')