% 绘制 2013辽宁高考微分方程
clc
close all
% syms x f(x)
% figure;
% set(gcf,'unit','centimeters','position',[2,2,21,15])
% opts = odeset('RelTol',1e-2,'AbsTol',1e-4); 
% [x1,y1]=ode45(@(x,y) (exp(x)./x.^3-2*y./x),[2,10],exp(2)/8);
% % plot(x1,y1,'k','Linewidth',1.2)
% exp(2)/8
% % grid minor
% 
% % figure
% [x2,y2]=ode45(@(x,y) (exp(x)./x.^3-2*y./x),[2,0.3],exp(2)/8);
% % plot(x2,y2,'k','Linewidth',1.2)
% % grid minor
% 
% figure


[x1,y1]=ode45(@(x,y) exp(x)./x.^3-2*y./x, [2,0.3], exp(2)/8);
[x2,y2]=ode45(@(x,y) exp(x)./x.^3-2*y./x, [2,10],  exp(2)/8);
plot([flipud(x1);x2],[flipud(y1);y2],'k','Linewidth',1.2)
grid minor
title('$y\,''=\frac{e^x}{x^3}-\frac{2y}{x} $','interpreter','latex','fontsize',15)