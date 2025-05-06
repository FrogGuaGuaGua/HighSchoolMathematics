% 2022浙江解析几何
clc
close all
syms x; 

figure 
hold on
grid off
axis off
axis([-5 6 -2 3.5])
fimplicit(@(x,y) x.^2/12+y.^2-1,'k-','linewidth',1.2,'meshdensity',100)

FAB(x)=x/10+1/2;
fplot(-x/2+3,'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(FAB(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')

root2=solve(x.^2/12+(FAB(x)).^2-1,x);
xA=root2(1);  xB=root2(2);
yA=FAB(xA);   yB=FAB(xB);  
plot(xA-1:0.01:xB,FAB(xA-1:0.01:xB),'k-','linewidth',1.2)
fplot((1-yA)/(-xA)*x+1,'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot((1-yB)/(-xB)*x+1,'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
text(-3.7,0.26,'$A$','interpreter','latex','fontsize',12)
text(2.1,0.54,'$B$','interpreter','latex','fontsize',12)
text(2.47,1.5,'$C$','interpreter','latex','fontsize',12)
text(4.9,0.23,'$D$','interpreter','latex','fontsize',12)
text(-0.32,1.12,'$P$','interpreter','latex','fontsize',12)
text(0.1,0.35,'$Q$','interpreter','latex','fontsize',12)
text(-0.33,-0.15,'$O$','interpreter','latex','fontsize',12)
% text(0,2,'$B$')
plot([-100 100],[0 0],'k','Linewidth',1)
plot([0 0],[-100 100],'k','Linewidth',1)
