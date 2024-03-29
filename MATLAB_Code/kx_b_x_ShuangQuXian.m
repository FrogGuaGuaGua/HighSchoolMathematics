% 两种常见的双曲线
clc
close all
syms x
% fig=figure;
% set(gcf,'unit','centimeters','position',[2,2,15,12])

% subplot(1,2,1)
figure
hold on
fplot(x+2./x,'k','linewidth',1.2)
fplot(x-2./x,'k:','linewidth',1.2)
fplot(x,'k--','linewidth',0.5)
plot([-100,100],[0 0],'k','linewidth',0.5)
plot([0 0],[-100,100],'k','linewidth',0.5)
plot([sqrt(2) sqrt(2)],[0,2*sqrt(2)],'k','linewidth',0.5)
plot([-5 sqrt(2)],[2*sqrt(2),2*sqrt(2)],'k--','linewidth',0.5)
plot(sqrt(2),2*sqrt(2),'k.','markersize',13)
plot(sqrt(2),0,'k.','markersize',13)
legend('$y=kx+\frac{b}{x}$','$y=kx-\frac{b}{x}$','interpreter','latex','fontsize',15)
text(0.7,-1.4,'$\sqrt{\frac{b}{k}}$','interpreter','latex','fontsize',15)
text(-5,3.5,'$2\sqrt{kb}$','interpreter','latex','fontsize',15)
axis equal
a=12;
axis([-a a -a a])
axis off

% subplot(1,2,2)
% hold on
% fplot(x-2./x,'k','linewidth',1.2)
% fplot(x,'k--','linewidth',0.5)
% plot([-100,100],[0 0],'k','linewidth',0.5)
% plot([0 0],[-100,100],'k','linewidth',0.5)
% title('$y=kx-\frac{b}{x}$','interpreter','latex','fontsize',15)
% axis equal
% axis([-8 8 -8 8])

% plot([a b],[f(a) f(b)],'k','linewidth',0.5)
% 
% plot([a a],[0 f(a)],'k','linewidth',0.5)
% plot([b b],[0 f(b)],'k','linewidth',0.5)
% 
% midx=(a+b)/2;
% midfx=(f(a)+f(b))/2;
% plot(midx,f(midx),'k.','markersize',10)
% plot(midx,average_fx,'k.','markersize',10)
% plot(midx,midfx,'k.','markersize',10)
% 
% plot([-10 midx],[midfx midfx],'k--','linewidth',0.5)
% plot([-10 midx],[average_fx average_fx],'k--','linewidth',0.5)
% plot([-10 midx],[f(midx) f(midx)],'k--','linewidth',0.5)
% plot([-10 a],[f(a) f(a)],'k--','linewidth',0.5)
% plot([-10 b],[f(b) f(b)],'k--','linewidth',0.5)