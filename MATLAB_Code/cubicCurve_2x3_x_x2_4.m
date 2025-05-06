clc
close all
fplot(@(x)2*(3-x)./(x.^2-4),'-k','Linewidth',1.2,'MeshDensity',1000)
hold on
fplot(@(x)(3-x).*(x.^2-4),':k','Linewidth',1.2,'MeshDensity',1000)
axis([-8 8 -14 8])
grid on

% title
h=legend('$y=\frac{2(3-x)}{x^2-4} $','$y=(x+2)(x-2)(3-x)$');
set(h,'interpreter','latex')