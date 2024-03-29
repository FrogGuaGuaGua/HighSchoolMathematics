% 2021上海高考参数曲线 李萨如
clc
close all
b=1.1;
subplot(1,4,1)
hold on
fimplicit(@(x,y) x.^4+y.^4-1,'k','linewidth',1.2)
plot([-b b],[0,0],'k','linewidth',0.5)
plot([0,0],[-b b],'k','linewidth',0.5)
title('A');
grid minor
axis equal
axis([-b b -b b])

subplot(1,4,2)
hold on
% fimplicit(@(x,y) x.^4+y.^4-1,'k','linewidth',1.2)
t=0:0.01:2*pi;
t=t-pi/2;
plot(sin(3*t),sin(2*t),'k','linewidth',1.2)
plot([-b b],[0,0],'k','linewidth',0.5)
plot([0,0],[-b b],'k','linewidth',0.5)
title('B');
grid minor
axis equal
axis([-b b -b b])

subplot(1,4,3)
hold on
fimplicit(@(x,y) x.^2-y,'k','linewidth',1.2)
fimplicit(@(x,y) x.^2+y,'k','linewidth',1.2)
plot([-b b],[0,0],'k','linewidth',0.5)
plot([0,0],[-b b],'k','linewidth',0.5)
title('C');
grid minor
axis equal
axis([-b b -b b])

subplot(1,4,4)
hold on
fimplicit(@(x,y) (x.^2+y.^2).^2-2*(x.^2-y.^2),'k','linewidth',1.2)
plot([-3 3],[0,0],'k','linewidth',0.5)
plot([0,0],[-3 3],'k','linewidth',0.5)
title('D');
grid minor
axis equal
axis([-b-0.5 b+0.5 -b-0.5 b+0.5])