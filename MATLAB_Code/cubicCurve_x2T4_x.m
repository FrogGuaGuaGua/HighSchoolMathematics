clc
close all
fplot(@(x)x.^2+4./x,'-k','Linewidth',1.2,'MeshDensity',1000)
hold on
fplot(@(x)x.^2,':k','Linewidth',1.2,'MeshDensity',1000)
% axis equal
axis([-8 8 -70 70])
grid on

h=legend('$y=x^2+\frac{4}{x}$','$y=x^2$');
set(h,'interpreter','latex') 