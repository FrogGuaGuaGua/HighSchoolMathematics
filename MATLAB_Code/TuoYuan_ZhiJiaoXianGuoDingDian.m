% 椭圆直角弦过定点
clc
close all
syms x y
a2=4;b2=2;
fimplicit(x.^2/a2+y.^2/b2-1,'k','linewidth',1.2)
hold on
fimplicit(x.^2/a2/((a2-b2)/(a2+b2))^2+y.^2/b2/((a2-b2)/(a2+b2))^2-1,'k','linewidth',0.8)


x0=-sqrt(2); y0=1;

plot([x0 -x0],[y0 y0],'k','linewidth',1.2)
plot([x0 x0],[y0 -y0],'k','linewidth',1.2)
plot([x0 -x0],[-y0 y0],'k','linewidth',1.2)

fimplicit(x*x0/a2+y*y0/b2-1,'k','linewidth',0.8)
fimplicit(a2*y0*(x-x0)-b2*x0*(y-y0),'k','linewidth',0.8)
axis equal

k=0.2;
f1=k*(x-x0)-(y-y0);
f2=-1/k*(x-x0)-(y-y0);
fty=x.^2/a2+y.^2/b2-1;
S1=solve([f1,fty],[x,y]);
S2=solve([f2,fty],[x,y]);

plot([x0 S1.x(2)],[y0 S1.y(2)],'k:','linewidth',1.2)
plot([x0 S2.x(2)],[y0 S2.y(2)],'k:','linewidth',1.2)
plot([S1.x(2) S2.x(2)],[S1.y(2) S2.y(2)],'k:','linewidth',1.2)

k=-1;
f1=k*(x-x0)-(y-y0);
f2=-1/k*(x-x0)-(y-y0);
fty=x.^2/a2+y.^2/b2-1;
S1=solve([f1,fty],[x,y]);
S2=solve([f2,fty],[x,y]);

plot([x0 S1.x(2)],[y0 S1.y(2)],'k--','linewidth',1.2)
plot([x0 S2.x(2)],[y0 S2.y(2)],'k--','linewidth',1.2)
plot([S1.x(2) S2.x(2)],[S1.y(2) S2.y(2)],'k--','linewidth',1.2)
axis([-sqrt(a2)-0.2 sqrt(a2)+0.2 -sqrt(b2)-0.2 sqrt(b2)+0.2])

plot(x0,y0,'k.','markersize',20)
plot((a2-b2)*x0/(a2+b2),-(a2-b2)*y0/(a2+b2),'k.','markersize',25)
grid on