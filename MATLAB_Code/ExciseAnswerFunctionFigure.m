% 函数的习题的图像绘制
clc
close all
syms x

subplot(2,3,1)
fplot((2*x+4)/(x^2+x+3),'k-','LineWidth',1,'MeshDensity',1000)
grid minor
title('$\frac{2x+4}{x^2+x+3}$','interpreter','Latex')
axis([-15 15 -1 2]) 
hold on
plot([-100 100],[0 0],'k-')
plot([0 0],[-100 100],'k-')


subplot(2,3,2)
fplot((x-1)/(x^2-x-2),'k-','LineWidth',1,'MeshDensity',1000)
grid minor
title('$\frac{x-1}{x^2-x-2}$','interpreter','Latex')
axis([-4 5 -10 10]) 
hold on
plot([-100 100],[0 0],'k-')
plot([0 0],[-100 100],'k-')

subplot(2,3,3)
fplot((x+1)/(x^2-3*x+2),'k-','LineWidth',1,'MeshDensity',1000)
grid minor
title('$\frac{x+1}{x^2-3x+2}$','interpreter','Latex')
axis([-4 8 -15 10]) 
hold on
plot([-100 100],[0 0],'k-')
plot([0 0],[-100 100],'k-')

subplot(2,3,4)
fplot((2*x-sqrt(x^2+1))/(2*x+sqrt(x^2+1)),'k-','LineWidth',1,'MeshDensity',1000)
grid minor
title('$\frac{2x-\sqrt{x^2+1}}{2x+\sqrt{x^2+1}}$','interpreter','Latex')
axis([-10 10 -3 8]) 
hold on
plot([-100 100],[0 0],'k-')
plot([0 0],[-100 100],'k-')

subplot(2,3,5)
fplot(x/((x-1)^2),'k-','LineWidth',1,'MeshDensity',1000)
grid minor
title('$\frac{x}{(x-1)^2}$','interpreter','Latex')
axis([-4 8 -2 10]) 
hold on
plot([-100 100],[0 0],'k-')
plot([0 0],[-100 100],'k-')