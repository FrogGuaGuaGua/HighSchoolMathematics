% 有阻尼自由振荡函数图像
clc
close all
a=0.1;
b=1;
x1=-30;
x2=15;
hold on
fplot(@(x) exp(-a*x),[x1 x2],'k-','Linewidth',0.8)
fplot(@(x) exp(-a*x).*cos(b*x),[x1 x2],'k-','Linewidth',1.2)

plot([x1,x2],[0,0],'k-')