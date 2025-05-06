% º¯Êý°¼Í¹ÐÔ
clc
close all
syms x f(x) Zbx(x) Zby(x)
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,20,8])

h=subplot(1,2,1);
% hAxes = axes(h);

hold on
f(x)=@(x)exp(x/2);

a=0 ; b=2;

fplot(f,'k','linewidth',1.2)

plot([a b],[f(a) f(b)],'k','linewidth',0.5)
plot([a a],[0 f(a)],'k--','linewidth',0.5)
plot([b b],[0 f(b)],'k--','linewidth',0.5)

midx=(a+b)/2;
midfx=(f(a)+f(b))/2;
plot(midx,f(midx),'k.','markersize',10)
plot(midx,midfx,'k.','markersize',10)

plot([-10 midx],[midfx midfx],'k--','linewidth',0.5)
plot([-10 midx],[f(midx) f(midx)],'k--','linewidth',0.5)
plot([-10 a],[f(a) f(a)],'k--','linewidth',0.5)
plot([-10 b],[f(b) f(b)],'k--','linewidth',0.5)
plot([midx midx],[0 midfx],'k--','linewidth',0.5)

plot([-100,100],[0 0],'k','linewidth',0.5)

title('$\frac{f(x_1)+f(x_2)}{2}>f(\frac{x_1+x_2}{2})$','interpreter','latex');
xleft=a-0.3;
xright=b+0.3;
ybottom=0;
yup=3;

text(a-0.06,-0.08,'$x_1$','interpreter','latex','fontsize',12)
text(b-0.06,-0.08,'$x_2$','interpreter','latex','fontsize',12)
text(midx-0.18,-0.15,'$\frac{x_1+x_2}{2}$','interpreter','latex','fontsize',12)

text(-0.28,1.1,'$f(x_1)$','interpreter','latex','fontsize',10)
text(-0.28,2.83,'$f(x_2)$','interpreter','latex','fontsize',10)
text(-0.28,2.05,'$\frac{f(x_1)+f(x_2)}{2}$','interpreter','latex','fontsize',12)
text(-0.28,1.5,'$f(\frac{x_1+x_2}{2})$','interpreter','latex','fontsize',12)

axis([xleft xright ybottom yup])
set(h,'ytick',[])
set(h,'xtick',[])

%%%%%%%%%%%%%%%%%
subplot(1,2,2)
hold on
f(x)=@(x)2*log(x);

a=1.5 ; b=4;

fplot(f,'k','linewidth',1.2)

plot([a b],[f(a) f(b)],'k','linewidth',0.5)
plot([a a],[0 f(a)],'k--','linewidth',0.5)
plot([b b],[0 f(b)],'k--','linewidth',0.5)

midx=(a+b)/2;
midfx=(f(a)+f(b))/2;
plot(midx,f(midx),'k.','markersize',10)
plot(midx,midfx,'k.','markersize',10)

plot([-10 midx],[midfx midfx],'k--','linewidth',0.5)
plot([-10 midx],[f(midx) f(midx)],'k--','linewidth',0.5)
plot([-10 a],[f(a) f(a)],'k--','linewidth',0.5)
plot([-10 b],[f(b) f(b)],'k--','linewidth',0.5)
plot([midx midx],[0 f(midx)],'k--','linewidth',0.5)

plot([-100,100],[0 0],'k','linewidth',0.5)

title('$\frac{f(x_1)+f(x_2)}{2}<f(\frac{x_1+x_2}{2})$','interpreter','latex');
xleft=a-0.3;
xright=b+0.3;
ybottom=0;
yup=3;

text(a-0.06,-0.08,'$x_1$','interpreter','latex','fontsize',12)
text(b-0.06,-0.08,'$x_2$','interpreter','latex','fontsize',12)
text(midx-0.20,-0.15,'$\frac{x_1+x_2}{2}$','interpreter','latex','fontsize',12)

text(1.22,0.95,'$f(x_1)$','interpreter','latex','fontsize',10)
text(1.22,2.9,'$f(x_2)$','interpreter','latex','fontsize',10)
text(1.22,1.6,'$\frac{f(x_1)+f(x_2)}{2}$','interpreter','latex','fontsize',12)
text(1.22,2.2,'$f(\frac{x_1+x_2}{2})$','interpreter','latex','fontsize',12)

axis([xleft xright ybottom yup])
set(gca,'ytick',[])
set(gca,'xtick',[])