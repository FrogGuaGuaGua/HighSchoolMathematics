clc
close all
subplot(1,3,1)
fplot(@(x) 1./(x.^2-4),'-k','Linewidth',1.2,'MeshDensity',1000)
axis([-10 10 -3 3])
grid on
title('$y=\frac{1}{x^2-4} $','interpreter','latex')

subplot(1,3,2)
fplot(@(x) 1./(x.^2+x+1),'-k','Linewidth',1.2,'MeshDensity',1000)
axis([-15 15 -0.1 1.5])
grid on
title('$y=\frac{1}{x^2+x+1} $','interpreter','latex')

subplot(1,3,3)
fplot(@(x) x./(x.^2+x+1),'-k','Linewidth',1.2,'MeshDensity',1000)
axis([-20 20 -1.2 0.5])
grid on
title('$y=\frac{x}{x^2+x+1} $','interpreter','latex')
