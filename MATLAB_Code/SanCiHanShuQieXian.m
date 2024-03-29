%  三次函数切线条数
clc
close all
syms x f(x)
subplot(1,2,1)
f1(x)=x^3-3*x;
f2(x)=-3*x;
hold on
fplot(f1(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f2(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot(0,0,'k.','markersize',10)
plot([-3,3],[6,6],'k-','linewidth',0.2)
plot([3,3],[-6,6],'k-','linewidth',0.2)
axis([-3,3,-6,6])
% axis off
set(gca,'xtick',[],'xticklabel',[])
set(gca,'ytick',[],'yticklabel',[])
% legend('$ y=a^x $','$y=\log_a x$','interpreter','latex')
% title('$a<e^{1/e}$','interpreter','latex')
text(0,4,'$A$','interpreter','latex','fontsize',15)
text(0,-4,'$A''$','interpreter','latex','fontsize',15)
text(-2.4,0,'$B$','interpreter','latex','fontsize',15)
text(2.2,0,'$B''$','interpreter','latex','fontsize',15)
%----------
subplot(1,2,2)
f1(x)=x^3+x;
f2(x)=x;
hold on
fplot(f1(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f2(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot(0,0,'k.','markersize',10)
plot([-3,3],[6,6],'k-','linewidth',0.2)
plot([3,3],[-6,6],'k-','linewidth',0.2)
axis([-3,3,-6,6])
% axis off
set(gca,'xtick',[],'xticklabel',[])
set(gca,'ytick',[],'yticklabel',[])
text(0,4,'$A$','interpreter','latex','fontsize',15)
text(0,-4,'$A''$','interpreter','latex','fontsize',15)
text(-2.4,-4,'$B$','interpreter','latex','fontsize',15)
text(2.2,4,'$B''$','interpreter','latex','fontsize',15)
