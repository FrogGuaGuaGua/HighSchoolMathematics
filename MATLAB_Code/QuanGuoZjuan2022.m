% 2022全国乙卷选择题双选 11
clc
close all
syms x; 

subplot(1,2,1)
hold on
grid off
axis off
axis equal
axis([-6 6 -6 6])
fimplicit(@(x,y) x.^2/4-y.^2/9-1,'k-','linewidth',1.2,'meshdensity',50)
fimplicit(@(x,y) x.^2/4+y.^2/4-1,'k-','linewidth',1.2,'meshdensity',50)
fplot(2/3*(x+sqrt(13)),'k-','linewidth',1.2,'meshdensity',50,'showpoles','off')
fplot(3/2*x,'k:','linewidth',0.5,'meshdensity',50,'showpoles','off')
fplot(-3/2*x,'k:','linewidth',0.5,'meshdensity',50,'showpoles','off')
plot([-100 100],[0 0],'k-','Linewidth',1)
plot([0 0],[-100 100],'k-','Linewidth',1)
xN=14/sqrt(13);  yN=2/3*(xN+sqrt(13));
plot([sqrt(13) xN],[0 yN],'k','Linewidth',1)
xP=5/sqrt(13);   yP=-3/2*(xP-sqrt(13));
plot([sqrt(13) xP],[0 yP],'k','Linewidth',1)

text(-3.7,-0.7,'$F_1$','interpreter','latex','fontsize',12)
text(3.4,-0.7,'$F_2$','interpreter','latex','fontsize',12)
text(-3.5,1,'$M$','interpreter','latex','fontsize',12)
text(3.85,4.5,'$N$','interpreter','latex','fontsize',12)
text(1.1,3.8,'$P$','interpreter','latex','fontsize',12)

subplot(1,2,2)
hold on
grid off
axis off
axis equal
aa=3.2;
axis([-aa aa -aa aa])
fimplicit(@(x,y) x.^2/4-y.^2-1,'k-','linewidth',1.2,'meshdensity',50)
fimplicit(@(x,y) x.^2/4+y.^2/4-1,'k-','linewidth',1.2,'meshdensity',50)
fplot(2*(x+sqrt(5)),'k-','linewidth',1.2,'meshdensity',50,'showpoles','off')
fplot(1/2*x,'k:','linewidth',0.5,'meshdensity',50,'showpoles','off')
fplot(-1/2*x,'k:','linewidth',0.5,'meshdensity',50,'showpoles','off')
plot([-100 100],[0 0],'k-','Linewidth',1)
plot([0 0],[-100 100],'k-','Linewidth',1)
xN=-6/sqrt(5);  yN=2*(xN+sqrt(5));
plot([sqrt(5) xN],[0 yN],'k','Linewidth',1)
xP=-3/sqrt(5);   yP=-1/2*(xP-sqrt(5));
plot([sqrt(5) xP],[0 yP],'k','Linewidth',1)

text(-3,-0.3,'$F_1$','interpreter','latex','fontsize',12)
text(2.2,-0.3,'$F_2$','interpreter','latex','fontsize',12)
text(-2.7,0.3,'$M$','interpreter','latex','fontsize',10)
text(-3.2,-0.8,'$N$','interpreter','latex','fontsize',12)
text(-1.8,1.8,'$P$','interpreter','latex','fontsize',12)