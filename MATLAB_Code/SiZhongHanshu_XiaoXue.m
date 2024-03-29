% 正比例函数：$ y=kx $，一次函数$ y=kx+b $，$ k $叫斜率，$ b $叫截距，
% 正比例函数就是截距为0的一次函数，也属于一次函数。反比例函数(也叫双曲线)：
% $ y=\dfrac{k}{x} $；二次函数：$ y=ax^2+bx+c $；
clc
close all
syms x f(x)
figure;
set(gcf,'unit','centimeters','position',[2,2,22,5])

subplot(1,4,1) 
hold on
plot([-100 100],[0 0],'k','Linewidth',0.6)
plot([0 0],[-100 100],'k','Linewidth',0.6)
axis([-10 10 -10 10])
fplot(@(x) 2*x,'k','Linewidth',1.5)
title('正比例函数 y=2x ')
grid minor


subplot(1,4,2)
hold on
plot([-100 100],[0 0],'k','Linewidth',0.6)
plot([0 0],[-100 100],'k','Linewidth',0.6)
axis([-10 10 -10 10])
fplot(@(x) 2*x+3,'k','Linewidth',1.5)
title('一次函数 y=2x+3 ')
grid minor

subplot(1,4,3)
hold on
plot([-100 100],[0 0],'k','Linewidth',0.6)
plot([0 0],[-100 100],'k','Linewidth',0.6)
axis([-10 10 -10 10])
fplot(@(x) 2./x,'k','Linewidth',1.5,'showpoles','off')
title('反比例函数(双曲线) xy=2 ')
grid minor

subplot(1,4,4)
hold on
plot([-100 100],[0 0],'k','Linewidth',0.6)
plot([0 0],[-100 100],'k','Linewidth',0.6)
axis([-10 10 -10 10])
fplot(@(x) -x.^2/2+2*x+5,'k','Linewidth',1.5)
title('二次函数(抛物线) y=-0.5x^2+2x+5 ')
grid minor

