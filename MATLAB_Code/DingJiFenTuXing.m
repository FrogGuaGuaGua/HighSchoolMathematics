% 定积分的图形意义
clc
close all
syms x
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,16,5])

subplot(1,3,1)
hold on
f(x)=x.^3-6*x.^2+9*x+15;
g(x)=-(x-1).^2+14;
a=0 ; b=2;
fill([a,a:0.01:b,b],[0,f(a:0.01:b),0],[0.8 0.8 0.8])
fill([a,a:0.01:b,b],[0,g(a:0.01:b),0],[0.95 0.95 0.95])
fplot(f,'k','linewidth',1.2)
fplot(g,'k:','linewidth',1.2)


plot([a a],[0,f(a)],'k','linewidth',0.5)
plot([b b],[0 f(b)],'k','linewidth',0.5)
text(a-0.1,-1,'$a$','interpreter','latex')
text(b-0.1,-1.2,'$b$','interpreter','latex')
plot([-100,100],[0 0],'k','linewidth',0.5)
% plot([0 0],[-100,100],'k','linewidth',0.5)

title({'$\int_a^b f(x)dx<\int_a^b g(x)dx $'},'interpreter','latex');
text(0.5,12,'$f(x)$','interpreter','latex')
text(-0.4,19,'$g(x)$','interpreter','latex')
% grid minor
axis off
axis([-1.5 4 -3 23])
%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,2)
hold on
f(x)=x.^3-10*x;
fplot(f,'k','linewidth',1.2)
a=-2 ; b=0;  c=2;
plot([a a],[0,f(a)],'k','linewidth',0.5)
plot([b b],[0 f(b)],'k','linewidth',0.5)
text(a-0.9,-0.8,'$-a$','interpreter','latex')
text(c-0.1,0.9,'$a$','interpreter','latex')
plot([-100,100],[0 0],'k','linewidth',0.5)
plot([0 0],[-100,100],'k','linewidth',0.5)
fill([a,a:0.01:b,b],[0,f(a:0.01:b),0],'r')
fill([b,b:0.01:c,c],[0,f(b:0.01:c),0],'g')
title('奇函数');
% grid minor
axis off
axis([-4 4 -13 13])
%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,3)
hold on
f(x)=x.^2/2+1;
fplot(f,'k','linewidth',1.2)
a=-2 ; b=0;  c=2;
plot([a a],[0,f(a)],'k','linewidth',0.5)
plot([b b],[0 f(b)],'k','linewidth',0.5)
text(a-0.7,-0.2,'$-a$','interpreter','latex')
text(c-0.1,-0.2,'$a$','interpreter','latex')
plot([-100,100],[0 0],'k','linewidth',0.5)
plot([0 0],[-100,100],'k','linewidth',0.5)
fill([a,a:0.01:b,b],[0,f(a:0.01:b),0],'r')
fill([b,b:0.01:c,c],[0,f(b:0.01:c),0],'g')
title('偶函数');
% grid minor
axis off
axis([-3 3 -0.5 3.5])