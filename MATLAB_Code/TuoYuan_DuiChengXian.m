% 椭圆对称弦，交点连线斜率为定值
clc
close all
p=2;
a2=4;b2=-2;
fty=@(x,y)x.^2/a2+y.^2/b2-1;

figure 
hold on
fimplicit(fty,'k','linewidth',1.2)
% fimplicit(@(x,y)x+p/2,'k','linewidth',1)

grid on
axis equal

% xb1=-sqrt(a2)-0.2; xb2=sqrt(a2)+0.2; yb1=-sqrt(b2)-0.2; yb2=sqrt(b2)+0.2;
% 椭圆
xb1=0; xb2=14; yb1=-9; yb2=4; % 双曲线
axis([xb1 xb2 yb1 yb2])
plot([xb1 xb2],[yb2 yb2],'k','linewidth',0.2) % 补充图形外框-上边缘
plot([xb2 xb2],[yb1 yb2],'k','linewidth',0.3) % 补充图形外框-右边缘


% x0=-1; y0=sqrt(6)/2; % 椭圆
x0=4; y0=sqrt(6); % 双曲线
plot(x0,y0,'k.','markersize',15)
plot([x0 x0],[y0 -y0],'k:','linewidth',1)
fimplicit(@(x,y)x*x0/a2-y*y0/b2-1,'k:','linewidth',1)

% k=6;
% x1=a2*((y0-k*x0)^2-b2)/x0/(b2+a2*k^2);
% x2=a2*((y0+k*x0)^2-b2)/x0/(b2+a2*k^2);
% y1=-sqrt(b2-b2*x1^2/a2);
% y2=-sqrt(b2-b2*x2^2/a2);
% 
% plot([x0 x1],[y0 y1],'k','linewidth',1)
% plot([x0 x2],[y0 y2],'k','linewidth',1)
% fimplicit(@(x,y)y-y2-b2*x0/a2/y0*(x-x2),'k','linewidth',1)

k=3;
x1=a2*((y0-k*x0)^2-b2)/x0/(b2+a2*k^2);
x2=a2*((y0+k*x0)^2-b2)/x0/(b2+a2*k^2);
y1=-sqrt(b2-b2*x1^2/a2);
y2=-sqrt(b2-b2*x2^2/a2);

plot([x0 x1],[y0 y1],'k','linewidth',1)
plot([x0 x2],[y0 y2],'k','linewidth',1)
fimplicit(@(x,y)y-y2-b2*x0/a2/y0*(x-x2),'k','linewidth',1)

k=2;
x1=a2*((y0-k*x0)^2-b2)/x0/(b2+a2*k^2);
x2=a2*((y0+k*x0)^2-b2)/x0/(b2+a2*k^2);
y1=-sqrt(b2-b2*x1^2/a2);
y2=-sqrt(b2-b2*x2^2/a2);

plot([x0 x1],[y0 y1],'k','linewidth',1)
plot([x0 x2],[y0 y2],'k','linewidth',1)
fimplicit(@(x,y)y-y2-b2*x0/a2/y0*(x-x2),'k','linewidth',1)


k=1.4;
x1=a2*((y0-k*x0)^2-b2)/x0/(b2+a2*k^2);
x2=a2*((y0+k*x0)^2-b2)/x0/(b2+a2*k^2);
y1=-sqrt(b2-b2*x1^2/a2);
y2=-sqrt(b2-b2*x2^2/a2);

plot([x0 x1],[y0 y1],'k','linewidth',1)
plot([x0 x2],[y0 y2],'k','linewidth',1)
fimplicit(@(x,y)y-y2-b2*x0/a2/y0*(x-x2),'k','linewidth',1)
