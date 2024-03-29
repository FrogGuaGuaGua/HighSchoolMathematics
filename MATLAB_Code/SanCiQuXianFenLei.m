% 三次曲线粗略分类
% syms x
% axis equal
% clear all
clc
close all

fig=figure;
set(gcf,'unit','centimeters','position',[2,0,18,35])

subplot(4,3,1)
fimplicit(@(x,y) x.^3 + y.^3 - 1,'k','Linewidth',1.2)
title('$x^3+y^3-1=0$', 'interpreter','latex','fontsize',10)
axis([-5 5 -5 5])
grid minor 

subplot(4,3,2)
fimplicit(@(x,y) x.^3 + y.^3 - 3*y,'k','Linewidth',1.2)
title('$x^3+y^3-3y=0$', 'interpreter','latex','fontsize',10)
axis([-5 5 -5 5])
grid minor 

subplot(4,3,3)
fimplicit(@(x,y) x.^3 + y.^3 - 3*x.*y,'k','Linewidth',1.2)
title('$x^3+y^3-3xy=0$', 'interpreter','latex','fontsize',10)
axis([-5 5 -5 5])
grid minor 

subplot(4,3,4)
fimplicit(@(x,y) y.*(x.^2+x+1/2)-1,'k','Linewidth',1.2)
title('$y(x^2+x+1/2)-1=0$', 'interpreter','latex','fontsize',10)
axis([-5 5 -0.5 5])
grid minor 

subplot(4,3,5)
fimplicit(@(x,y) y.*(x.^2+x+1/4)-1,'k','Linewidth',1.2)
title('$y(x^2+x+1/4)-1=0$', 'interpreter','latex','fontsize',10)
axis([-5 5 -0.5 5])
grid minor 

subplot(4,3,6)
fimplicit(@(x,y) y.*(x.^2+x-2)-1,'k','Linewidth',1.2)
title('$y(x^2+x-2)-1=0$', 'interpreter','latex','fontsize',10)
axis([-5 5 -5 5])
grid minor 

subplot(4,3,7)
fimplicit(@(x,y) y.*(x.^2+x-2)-x,'k','Linewidth',1.2)
title('$y(x^2+x-2)-x=0$', 'interpreter','latex','fontsize',10)
axis([-5 5 -5 5])
grid minor 

subplot(4,3,8)
fimplicit(@(x,y) x.^3-2*x.^2.*y +2.25*x.*y.^2+2.25*y.^3-9*x-9*y+10,'k','Linewidth',1.2)
title({'$x^3-2x^2y+2.25xy^2$';'$+2.25y^3-9x-9y+10=0$'}, 'interpreter','latex','fontsize',8)
% %title('方程1')
axis([-5 5 -10 10])
grid minor 

subplot(4,3,9)
fimplicit(@(x,y) x.^3-3*x.^2.*y+2.25*x.*y.^2+2.25*y.^3-9*x+9*y-10,'k','Linewidth',1.2)
title({'$x^3-3x^2y+2.25xy^2$','$+2.25y^3-9x+9y-10=0$'}, 'interpreter','latex','fontsize',8)
%title('方程2')
axis([-8 8 -15 15])
grid minor 

subplot(4,3,10)
fimplicit(@(x,y) x.^3-0.5*x.*y.^2-15*x.^2+74*x -12*y -132,'k','Linewidth',1.2)
title({'$x^3-0.5xy^2-15x^2$';'$+74x-12y-132=0$'}, 'interpreter','latex','fontsize',8)
%title('方程3')
axis([-25 15 -40 50])
grid minor  

subplot(4,3,11)
fimplicit(@(x,y) x.^3-x.*y.^2-7*x.^2+15*x-4*y-13,'k','Linewidth',1.2)
title({'$x^3-xy^2-7x^2$','$+15x-4y-13=0$'}, 'interpreter','latex','fontsize',8)
%title('方程4')
axis([-15 15 -30 30])
grid minor 

subplot(4,3,12)
fimplicit(@(x,y) x.^3-0.5*x.*y.^2-x.^2-3*x -2*y +1,'k','Linewidth',1.2)
title({'$x^3-0.5xy^2-x^2$';'$-3x-2y+1=0$'}, 'interpreter','latex','fontsize',8)
%title('方程5')
axis([-15 15 -20 20])
grid minor 




