% 抛物线垂直弦过定点
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

xb1=-p/2; xb2=10; yb1=-7; yb2=7;
axis([xb1 xb2 yb1 yb2])
plot([xb1 xb2],[yb2 yb2],'k','linewidth',0.2) % 补充图形外框-上边缘
plot([xb2 xb2],[yb1 yb2],'k','linewidth',0.3) % 补充图形外框-右边缘


x0=1; y0=2;
plot(x0,y0,'k.','markersize',15)
plot(x0+2*p,-y0,'k.','markersize',20)

k=0.5;
y1=2*p/k-y0;
y2=-2*p*k-y0;
x1=y1^2/2/p;
x2=y2^2/2/p;
plot([x0 x1],[y0 y1],'k','linewidth',1.2)
plot([x0 x2],[y0 y2],'k','linewidth',1.2)
plot([x1 x2],[y1 y2],'k','linewidth',1.2)

%%%%
k=0.65;
y1=2*p/k-y0;
y2=-2*p*k-y0;
x1=y1^2/2/p;
x2=y2^2/2/p;
plot([x0 x1],[y0 y1],'k--','linewidth',0.8)
plot([x0 x2],[y0 y2],'k--','linewidth',0.8)
plot([x1 x2],[y1 y2],'k--','linewidth',0.8)

%%%%
k=0.8;
y1=2*p/k-y0;
y2=-2*p*k-y0;
x1=y1^2/2/p;
x2=y2^2/2/p;
plot([x0 x1],[y0 y1],'k:','linewidth',1.2)
plot([x0 x2],[y0 y2],'k:','linewidth',1.2)
plot([x1 x2],[y1 y2],'k:','linewidth',1.2)