clc
close all

% fplot(@(x)x+2*sqrt(3-x),'-k','Linewidth',1.2,'MeshDensity',500)
% % fimplicit(@(x,y) y-x+2*sqrt(3-x),'-k','Linewidth',1.2,'MeshDensity',5000)
% hold on
% fplot(@(x)x-2*sqrt(3-x),':k','Linewidth',1.2,'MeshDensity',500)
% % fimplicit(@(x,y) y-x-2*sqrt(3-x),':k','Linewidth',1.5,'MeshDensity',500)
% axis([-5 5 -5 6])
% grid on
% h=legend('$y=x+2\sqrt{3-x}$','$y=x-2\sqrt{3-x}$');
% set(h,'interpreter','latex')
%%
fimplicit(@(x,y) 4*x.^2+y.^2+x.*y-1,'-k','Linewidth',1.2,'MeshDensity',1000)
hold on
fplot(@(x)-2*x+2*sqrt(10)/5,':k','Linewidth',1.2,'MeshDensity',1000)
axis equal
axis([-0.6 1.3 -1.2 1.5])
grid on

% title
h=legend('$4x^2+y^2+xy=1$','$2x+y=\frac{2\sqrt{10}}{5}$');
set(h,'interpreter','latex')

%%
clc
close all
fplot(@(x)x.^2+4./x,'-k','Linewidth',1.2,'MeshDensity',1000)
hold on
fplot(@(x)x.^2,':k','Linewidth',1.2,'MeshDensity',1000)
% axis equal
axis([-8 8 -70 70])
grid on

% title
h=legend('$y=x^2+\frac{4}{x}$','$y=x^2$');
set(h,'interpreter','latex')

%%
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

%%
clc
close all
fplot(@(x)(x-1)./(x.^2-4),'-k','Linewidth',1.2,'MeshDensity',1000)
axis([-8 8 -8 8])
grid on

% title
h=legend('$y=\frac{x-1}{x^2-4} $');
set(h,'interpreter','latex')

%%
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


