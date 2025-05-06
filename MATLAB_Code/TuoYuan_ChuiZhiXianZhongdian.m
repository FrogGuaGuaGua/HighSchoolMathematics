% 椭圆两条垂直弦中点过定点
clc
close all
a2=4;b2=2;
syms x y
fty=x.^2/a2+y.^2/b2-1==0;
fimplicit(fty,'k','linewidth',1.2)
hold on
grid on
axis equal
axis([-sqrt(a2)-0.2 sqrt(a2)+0.2 -sqrt(b2)-0.2 sqrt(b2)+0.2])

plot(x0,y0,'k.','markersize',18)
plot(a2*x0/(a2+b2),b2*y0/(a2+b2),'k.','markersize',25)

x0=-1; y0=1;
fimplicit(x/x0+y/y0-1,'k','linewidth',1.2)
fimplicit(x*x0-y*y0,'k','linewidth',1.2)
fimplicit(x*x0+y*y0-x0^2-y0^2,'k','linewidth',1.2)
S=solve([x*x0+y*y0-x0^2-y0^2==0,fty],[x,y]);

plot([0 (S.x(1)+S.x(2))/2],[0 (S.y(1)+S.y(2))/2],'k','linewidth',1.2)


k=0.2;
f1=k*(x-x0)-(y-y0);
f2=-1/k*(x-x0)-(y-y0);
fimplicit(f1,'k:','linewidth',1)
fimplicit(f2,'k:','linewidth',1)

S1=solve([f1,fty],[x,y]);
S2=solve([f2,fty],[x,y]);

plot([(S1.x(1)+S1.x(2))/2 (S2.x(1)+S2.x(2))/2],[(S1.y(1)+S1.y(2))/2 (S2.y(1)+S2.y(2))/2],'k:','linewidth',1)

k=-0.5;
f1=k*(x-x0)-(y-y0);
f2=-1/k*(x-x0)-(y-y0);
fimplicit(f1,'k--','linewidth',0.8)
fimplicit(f2,'k--','linewidth',0.8)

S1=solve([f1,fty],[x,y]);
S2=solve([f2,fty],[x,y]);

plot([(S1.x(1)+S1.x(2))/2 (S2.x(1)+S2.x(2))/2],[(S1.y(1)+S1.y(2))/2 (S2.y(1)+S2.y(2))/2],'k--','linewidth',0.8)
