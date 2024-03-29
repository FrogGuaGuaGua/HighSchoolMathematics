clc;    close all
a=2; b=1;
t=tan(pi/3);
fimplicit(@(x,y) x.^2/a^2+y.^2/b^2-1,'k','Linewidth',1.3)
hold on
fimplicit(@(x,y) (x.^2+y.^2-(a^2+b^2)).^2-4*a^2*b^2/t^2*(x.^2/a^2+y.^2/b^2-1),'k:','Linewidth',1.3,'meshdensity',1000)
axis equal
axis([ -3 3 -4 4])
% x1=a*cos(1); y1=b*sin(1);
x1=-1.324; y1=1.133;
X1=-1.895; Y1=0.320;
X2=0.44; Y2=0.9752;
plot([x1,X1],[y1,Y1],'k')
plot([x1,X2],[y1,Y2],'k')

x2=0.9219; y2=-3.438;
X1=-1.826; Y1=-0.4082;
X2=1.975; Y2=-0.1565;
plot([x2,X1],[y2,Y1],'k')
plot([x2,X2],[y2,Y2],'k')
