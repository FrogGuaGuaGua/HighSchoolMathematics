% (2011，浙江高考) 不等式 $ 4x^2+y^2+xy=1 $，求$ 2x+y $的最大值
clc
close all
fimplicit(@(x,y) 4*x.^2+y.^2+x.*y-1,'-k','Linewidth',1.2,'MeshDensity',1000)
hold on
fplot(@(x)-2*x+2*sqrt(10)/5,':k','Linewidth',1.2,'MeshDensity',1000)
axis equal
axis([-0.6 1.3 -1.2 1.5])
grid on

% title
h=legend('$4x^2+y^2+xy=1$','$2x+y=\frac{2\sqrt{10}}{5}$');
set(h,'interpreter','latex')