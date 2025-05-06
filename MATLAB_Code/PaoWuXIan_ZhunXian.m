% 抛物线准线作两条垂直切线
clc
close all
p=2;
fpwx=@(x,y)y.^2-2*p*x;
figure 
hold on
fimplicit(fpwx,'k','linewidth',1.2)
fimplicit(@(x,y)x+p/2,'k','linewidth',1.2)
plot(p/2,0,'k.','markersize',20)
grid on
axis equal

xb1=-p/2-1; xb2=12; yb1=-7; yb2=7;
axis([xb1 xb2 yb1 yb2])
plot([xb1 xb2],[yb2 yb2],'k','linewidth',0.2) % 补充图形外框-上边缘
plot([xb2 xb2],[yb1 yb2],'k','linewidth',0.3) % 补充图形外框-右边缘

syms k
x0=-p/2; y0=1;
k1=-y0/p+sqrt((y0/p)^2+1);
k2=-1/k1;
y1=p/k1;
y2=-p*k1;
x1=y1^2/2/p;
x2=y2^2/2/p;

fimplicit(@(x,y)y-y0-k1*(x-x0),'k','linewidth',0.8)
fimplicit(@(x,y)y-y0-k2*(x-x0),'k','linewidth',0.8)
plot([x1 x2],[y1 y2],'k','linewidth',0.8)
plot([-p/2 p/2],[y0 0],'k','linewidth',0.8)
%%%%
x0=-p/2; y0=-2;
k1=-y0/p+sqrt((y0/p)^2+1);
k2=-1/k1;
y1=p/k1;
y2=-p*k1;
x1=y1^2/2/p;
x2=y2^2/2/p;

fimplicit(@(x,y)y-y0-k1*(x-x0),'k--','linewidth',0.8)
fimplicit(@(x,y)y-y0-k2*(x-x0),'k--','linewidth',0.8)
plot([x1 x2],[y1 y2],'k--','linewidth',0.8)
plot([-p/2 p/2],[y0 0],'k--','linewidth',0.8)
%%%%
x0=-p/2; y0=3;
k1=-y0/p+sqrt((y0/p)^2+1);
k2=-1/k1;
y1=p/k1;
y2=-p*k1;
x1=y1^2/2/p;
x2=y2^2/2/p;

fimplicit(@(x,y)y-y0-k1*(x-x0),'k:','linewidth',1.2)
fimplicit(@(x,y)y-y0-k2*(x-x0),'k:','linewidth',1.2)
plot([x1 x2],[y1 y2],'k:','linewidth',1.2)
plot([-p/2 p/2],[y0 0],'k:','linewidth',1.2)