clc
close all
syms x y

hold on
grid minor
fimplicit(@(x,y) x.^2+y.^2-5/2,'k-','linewidth',0.8,'meshdensity',50)
xx=0.5:0.01:1.5;
yy=sqrt(5/2-xx.^2);
plot(xx,yy,'k-','linewidth',3)
fplot(-x+1,'k:','linewidth',1.2,'meshdensity',50,'showpoles','off')
fplot( x+1,'k:','linewidth',1.2,'meshdensity',50,'showpoles','off')
fplot( x-1,'k:','linewidth',1.2,'meshdensity',50,'showpoles','off')

plot([-100 100],[0 0],'k-','Linewidth',0.5)
plot([0 0],[-100 100],'k-','Linewidth',0.5)
plot([-100 100],[2 2],'k-','Linewidth',0.1)
plot([2 2],[-100 100],'k-','Linewidth',0.1)
axis equal 
axis([-2 2 -2 2])
% legend('$y=2x^2$','$y=x^2$','$y=\frac{1}{2}x^2$','$y=-x^2$','interpreter','latex','fontsize',12)