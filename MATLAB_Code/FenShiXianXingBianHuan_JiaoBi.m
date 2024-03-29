% 分式线性变换保交比
clc
close all
syms x f1(x) f2(x)
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,16,12])

hold on
a=3 ; b=4;
f1(x)= b*sqrt(x.^2/a^2-1);
f2(x)=-b*sqrt(x.^2/a^2-1);

x1=6; y1=f1(x1);
x2=3.1;   y2=f1(x2);
x3=3.2; y3=f2(x3);
x4=6.5;   y4=f2(x4);

fplot(f1(x),'k','linewidth',1.5,'showpoles','off')
fplot(f2(x),'k','linewidth',1.5,'showpoles','off')

fplot( b/a*x,'k--','linewidth',0.5)
fplot(-b/a*x,'k--','linewidth',0.5)

fplot( b/a*(x-x1)+y1,'k','linewidth',0.5)
fplot(-b/a*(x-x1)+y1,'k','linewidth',0.5)
fplot( b/a*(x-x2)+y2,'k','linewidth',0.5)
fplot(-b/a*(x-x2)+y2,'k','linewidth',0.5)
fplot( b/a*(x-x3)+y3,'k','linewidth',0.5)
fplot(-b/a*(x-x3)+y3,'k','linewidth',0.5)
fplot( b/a*(x-x4)+y4,'k','linewidth',0.5)
fplot(-b/a*(x-x4)+y4,'k','linewidth',0.5)
axis equal
axis([-12 12 -10 10])
% plot([-10 a],[f(a) f(a)],'k--','linewidth',0.5)
% plot([-10 b],[f(b) f(b)],'k--','linewidth',0.5)
