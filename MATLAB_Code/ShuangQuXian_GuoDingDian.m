% 双曲线直角弦过定点
clc
close all
a2=4;b2=-2;
fimplicit(@(x,y)x.^2/a2+y.^2/b2-1,'k','linewidth',1.2)
hold on
fimplicit(@(x,y)x.^2/a2/((a2-b2)/(a2+b2))^2+y.^2/b2/((a2-b2)/(a2+b2))^2-1,'r','linewidth',0.8)


x0=-sqrt(6); y0=1;

plot([x0 -x0],[y0 y0],'k','linewidth',1.2)
plot([x0 x0],[y0 -y0],'k','linewidth',1.2)
fimplicit(@(x,y)y+y0/x0*x,'k','linewidth',1.2)

fimplicit(@(x,y)x*x0/a2+y*y0/b2-1,'k','linewidth',0.8) % 切线
fimplicit(@(x,y)a2*y0*(x-x0)-b2*x0*(y-y0),'k','linewidth',0.8) %法线
axis equal

k=0.2;
syms x y
f1=k*(x-x0)-(y-y0)==0;
f2=-1/k*(x-x0)-(y-y0)==0;
fty=x.^2/a2+y.^2/b2-1==0;
S1=solve([f1,fty],[x,y]);
S2=solve([f2,fty],[x,y]);

plot([x0 S1.x(2)],[y0 S1.y(2)],'k:','linewidth',1.2)
plot([x0 S2.x(2)],[y0 S2.y(2)],'k:','linewidth',1.2)
% plot([S1.x(2) S2.x(2)],[S1.y(2) S2.y(2)],'k:','linewidth',1.2)
fimplicit(@(x,y)y-S1.y(2)-(S1.y(2)-S2.y(2))/(S1.x(2)-S2.x(2))*(x-S1.x(2)),'k:','linewidth',1.2)

k=-1;
f1=k*(x-x0)-(y-y0)==0;
f2=-1/k*(x-x0)-(y-y0)==0;
fty=x.^2/a2+y.^2/b2-1==0;
S1=solve([f1,fty],[x,y]);
S2=solve([f2,fty],[x,y]);

plot([x0 S1.x(2)],[y0 S1.y(2)],'k--','linewidth',0.8)
plot([x0 S2.x(2)],[y0 S2.y(2)],'k--','linewidth',0.8)
plot([S1.x(2) S2.x(2)],[S1.y(2) S2.y(2)],'k--','linewidth',0.8)
axis([-15 15 -11 11])

plot(x0,y0,'k.','markersize',20)
plot((a2-b2)*x0/(a2+b2),-(a2-b2)*y0/(a2+b2),'k.','markersize',25)
grid on