% ˫����������ֱ���е������
clc
close all
syms x y
a2=4;b2=-2;
fty=x.^2/a2+y.^2/b2-1==0;
fimplicit(fty,'k','linewidth',1.2)
hold on
grid on
axis equal
axis([-15 15 -11 11])
% axis([-40 40 -30 30])
x0=-3; y0=3;
plot(x0,y0,'k.','markersize',18)
plot(a2*x0/(a2+b2),b2*y0/(a2+b2),'k.','markersize',20)


fimplicit(@(x,y)x/x0+y/y0-1,'k','linewidth',1.2)
fimplicit(@(x,y)x*x0-y*y0,'k','linewidth',1.2)
fimplicit(@(x,y)x*x0+y*y0-x0^2-y0^2,'k','linewidth',1.2)
S=solve([x*x0+y*y0-x0^2-y0^2==0,x.^2/a2+y.^2/b2-1==0],[x,y]);

plot([0 (S.x(1)+S.x(2))/2],[0 (S.y(1)+S.y(2))/2],'k','linewidth',1.2)


k=0.3;
f1=k*(x-x0)-(y-y0)==0;
f2=-1/k*(x-x0)-(y-y0)==0;
fimplicit(f1,'k:','linewidth',1)
fimplicit(f2,'k:','linewidth',1)

S1=solve([f1,fty],[x,y]);
S2=solve([f2,fty],[x,y]);

u1=double((S1.x(1)+S1.x(2))/2);
v1=double((S1.y(1)+S1.y(2))/2);
u2=double((S2.x(1)+S2.x(2))/2);
v2=double((S2.y(1)+S2.y(2))/2);
% plot([(S1.x(1)+S1.x(2))/2 (S2.x(1)+S2.x(2))/2],[(S1.y(1)+S1.y(2))/2 (S2.y(1)+S2.y(2))/2],'k:','linewidth',1)
fimplicit(@(x,y)y-v1-(v2-v1)/(u2-u1)*(x-u1),'k:','linewidth',1)

k=-0.3;
f1=k*(x-x0)-(y-y0)==0;
f2=-1/k*(x-x0)-(y-y0)==0;
fimplicit(f1,'k--','linewidth',0.8)
fimplicit(f2,'k--','linewidth',0.8)

S1=solve([f1,fty],[x,y]);
S2=solve([f2,fty],[x,y]);

u1=double((S1.x(1)+S1.x(2))/2);
v1=double((S1.y(1)+S1.y(2))/2);
u2=double((S2.x(1)+S2.x(2))/2);
v2=double((S2.y(1)+S2.y(2))/2);
% plot([(S1.x(1)+S1.x(2))/2 (S2.x(1)+S2.x(2))/2],[(S1.y(1)+S1.y(2))/2 (S2.y(1)+S2.y(2))/2],'k:','linewidth',1)
fimplicit(@(x,y)y-v1-(v2-v1)/(u2-u1)*(x-u1),'k--','linewidth',1)
