% 抛物线对称弦，交点连线斜率为定值
clc
close all
p=2;
fpwx=@(x,y)y.^2-2*p*x;
figure 
hold on
fimplicit(fpwx,'k','linewidth',1.2)
% fimplicit(@(x,y)x+p/2,'k','linewidth',1.2)

grid on
axis equal

xb1=-p/2; xb2=13; yb1=-9; yb2=6;
axis([xb1 xb2 yb1 yb2])
plot([xb1 xb2],[yb2 yb2],'k','linewidth',0.2) % 补充图形外框-上边缘
plot([xb2 xb2],[yb1 yb2],'k','linewidth',0.3) % 补充图形外框-右边缘


x0=4; y0=4;
plot(x0,y0,'k.','markersize',15)
plot([x0 x0],[y0 -y0],'k:','linewidth',1.2)
fimplicit(@(x,y)y*y0+p*(x+x0),'k:','linewidth',1.2)

% k=5;
% y1=2*p/k-y0;
% y2=-2*p/k-y0;
% x1=y1^2/2/p;
% x2=y2^2/2/p;
% plot([x0 x1],[y0 y1],'k','linewidth',1.2)
% plot([x0 x2],[y0 y2],'k','linewidth',1.2)
% fimplicit(@(x,y)y-y2+p/y0*(x-x2),'k','linewidth',1.2)

k=3;
y1=2*p/k-y0;
y2=-2*p/k-y0;
x1=y1^2/2/p;
x2=y2^2/2/p;
plot([x0 x1],[y0 y1],'k','linewidth',1.2)
plot([x0 x2],[y0 y2],'k','linewidth',1.2)
fimplicit(@(x,y)y-y2+p/y0*(x-x2),'k','linewidth',1.2)

k=2;
y1=2*p/k-y0;
y2=-2*p/k-y0;
x1=y1^2/2/p;
x2=y2^2/2/p;
plot([x0 x1],[y0 y1],'k','linewidth',1.2)
plot([x0 x2],[y0 y2],'k','linewidth',1.2)
fimplicit(@(x,y)y-y2+p/y0*(x-x2),'k','linewidth',1.2)

k=1.4;
y1=2*p/k-y0;
y2=-2*p/k-y0;
x1=y1^2/2/p;
x2=y2^2/2/p;
plot([x0 x1],[y0 y1],'k','linewidth',1.2)
plot([x0 x2],[y0 y2],'k','linewidth',1.2)
fimplicit(@(x,y)y-y2+p/y0*(x-x2),'k','linewidth',1.2)