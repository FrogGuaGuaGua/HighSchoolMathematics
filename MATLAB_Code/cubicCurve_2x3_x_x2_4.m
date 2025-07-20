clc
close all
syms x
f(x)=2*(3-x)/(x^2-4);
fplot(f(x),'-k','Linewidth',1.2,'MeshDensity',1000)
hold on
fplot(@(x)(3-x).*(x.^2-4),':k','Linewidth',1.2,'MeshDensity',1000)

plot(3-sqrt(5),f(3-sqrt(5)),'k.','markersize',10)
plot(3+sqrt(5),f(3+sqrt(5)),'k.','markersize',10)
plot(3,0,'k.','markersize',13)

plot([3-sqrt(5),3-sqrt(5)],[0,f(3-sqrt(5))],'k--')
plot([3+sqrt(5),3+sqrt(5)],[0,f(3+sqrt(5))],'k--')

axis([-8 8 -14 8])
grid on

% title
h=legend('$y=\frac{2(3-x)}{x^2-4} $','$y=(x+2)(x-2)(3-x)$');
set(h,'interpreter','latex')