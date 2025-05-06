clc
close all
fplot(@(x)(x-1)./(x.^2-4),'-k','Linewidth',1.2,'MeshDensity',1000)
axis([-8 8 -8 8])
grid on
h=legend('$y=\frac{x-1}{x^2-4} $');
set(h,'interpreter','latex')