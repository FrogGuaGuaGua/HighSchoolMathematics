%  2015£¨…œ∫£
clc
close all
% syms x f(x)


hold on
x=0:0.01:1;
plot(x,x.^3,'k-','linewidth',1.2)

plot(x+1,x.^3+1,'k-','linewidth',1.2)
plot(x+2,x.^3+2,'k-','linewidth',1.2)
plot(x+3,x.^3+3,'k-','linewidth',1.2)
plot(x-1,x.^3-1,'k-','linewidth',1.2)
plot(x-2,x.^3-2,'k-','linewidth',1.2)
plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)
% plot([-2,4],[4,4],'k-','linewidth',0.8)
% plot([4,4],[-2,4],'k-','linewidth',0.8)
% set(gca,'xtick',[],'xticklabel',[])
% set(gca,'ytick',[],'yticklabel',[])
% axis equal
axis off
axis([-2,4,-2,4])
 grid on
% legend('$ y=f(x) $','$y=g(x),(b=2)$','$y=g(x),(b=\frac{4+3\sqrt{2}}{4})$','interpreter','latex')
% title('$a<e^{1/e}$','interpreter','latex')
