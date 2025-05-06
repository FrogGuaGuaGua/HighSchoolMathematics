clc
close all

fplot(@(x)x+2*sqrt(3-x),'-k','Linewidth',1.2,'MeshDensity',500)
% fimplicit(@(x,y) y-x+2*sqrt(3-x),'-k','Linewidth',1.2,'MeshDensity',5000)
hold on
fplot(@(x)x-2*sqrt(3-x),':k','Linewidth',1.2,'MeshDensity',500)
% fimplicit(@(x,y) y-x-2*sqrt(3-x),':k','Linewidth',1.5,'MeshDensity',500)
axis([-5 5 -5 6])
grid on
h=legend('$y=x+2\sqrt{3-x}$','$y=x-2\sqrt{3-x}$');
set(h,'interpreter','latex')












