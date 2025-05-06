clc
close all
syms x y
fimplicit(5*x.^2-4*x.*y+y.^2-6,'k','linewidth',1.2);

axis equal; axis([-3.5 3.5 -6.5 6.5]);
grid on;
title('$5x^2-4xy+y^2-6=0$','interpreter','latex')