% (2021£¨–¬∏ﬂøº»´π˙IæÌ)“—÷™∫Ø ˝$ f(x)=x(1-\ln x)
clc
close all
syms x f(x)
figure;
set(gcf,'unit','centimeters','position',[2,2,23,9])

subplot(1,2,1)
hold on
f(x)=@(x) x.*(1-log(x));
fplot(f,'k','Linewidth',1.2,'showpoles','off')
fplot(f(2-x),'k--','Linewidth',1.2,'showpoles','off')
fplot(f(x)-f(2-x),'k:','Linewidth',1.2,'showpoles','off')

plot([-100,100],[0,0],'k-','linewidth',0.8) % ª≠x÷·
plot([0,0],[-100,100],'k-','linewidth',0.8) % ª≠y÷·

plot(0,0,'ko','markersize',5)
plot(exp(1),0,'k.','markersize',15)
plot(1,1,'k.','markersize',15)
% 
 plot([-100 100],[0.35,0.35],'k','Linewidth',0.8)
 plot([0.11,0.11],[0,f(0.11)],'k--','linewidth',0.4) 
 text(0.06,-0.07,'$x_1$','interpreter','latex','fontsize',13)
 plot([2.34,2.34],[0,f(0.11)],'k--','linewidth',0.4) 
 text(2.25,-0.07,'$x_2$','interpreter','latex','fontsize',13)
legend('$f(x)$','$f(2-x)$','$h(x)=f(x)-f(2-x)$','interpreter','latex','fontsize',8)
axis([-1 4 -1 2])
grid on


subplot(1,2,2)
hold on
% f(x)=@(x) x.*(1-log(x));
fplot(f,'k','Linewidth',1.2,'showpoles','off')
fplot(f(exp(1)-x),'k--','Linewidth',1.2,'showpoles','off')
fplot(f(x)-f(exp(1)-x),'k:','Linewidth',1.2,'showpoles','off')

plot([-100,100],[0,0],'k-','linewidth',0.8) % ª≠x÷·
plot([0,0],[-100,100],'k-','linewidth',0.8) % ª≠y÷·

plot(0,0,'ko','markersize',5)
plot(exp(1),0,'k.','markersize',15)
plot(1,1,'k.','markersize',15)
% 
 plot([-100 100],[0.35,0.35],'k','Linewidth',0.8)
 plot([0.11,0.11],[0,f(0.11)],'k--','linewidth',0.4) 
 text(0.06,-0.07,'$x_1$','interpreter','latex','fontsize',13)
 plot([2.34,2.34],[0,f(0.11)],'k--','linewidth',0.4) 
 text(2.25,-0.07,'$x_2$','interpreter','latex','fontsize',13)
legend('$f(x)$','$f(e-x)$','$H(x)=f(x)-f(e-x)$','interpreter','latex','fontsize',8)
axis([-1 4 -1 2])
grid on

%%
close all
figure;
set(gcf,'unit','centimeters','position',[2,12,23,9])
% set(gcf,'unit','centimeters','position',[2,2,12,9])
subplot(1,2,1)
hold on
f(x)=@(x) x.*(1-log(x));
fplot(f,'k','Linewidth',1.2,'showpoles','off')
fplot(x,'k:','Linewidth',1.2,'showpoles','off')
fplot(exp(1)-x,'k--','Linewidth',0.8,'showpoles','off')

plot([-100,100],[0,0],'k-','linewidth',0.8) % ª≠x÷·
plot([0,0],[-100,100],'k-','linewidth',0.8) % ª≠y÷·

plot(0,0,'ko','markersize',5)
plot(exp(1),0,'k.','markersize',15)
plot(exp(1)/2,exp(1)/2,'k.','markersize',15)
plot(1,1,'k.','markersize',15)
% 
 plot([-100 100],[0.7,0.7],'k','Linewidth',0.8)
 
 plot([0.34,0.34],[0,f(0.34)],'k-','linewidth',0.4) 
 text(0.24,-0.09,'$x_1$','interpreter','latex','fontsize',13)
 plot([1.87,1.87],[0,f(0.34)],'k-','linewidth',0.4) 
 text(1.70,-0.09,'$x_2$','interpreter','latex','fontsize',13)
 
 plot([0.7,0.7],[0,f(0.34)],'k-','linewidth',0.4) 
 text(0.71,0.1,'$x''_1$','interpreter','latex','fontsize',13)
 plot([2.02,2.02],[0,f(0.34)],'k-','linewidth',0.4) 
 text(2.02,0.1,'$x''_2$','interpreter','latex','fontsize',13)
 
 text(3.0,0.82,'$y_0$','interpreter','latex','fontsize',13)
legend('$f(x)$','$f_1(x)=x$','$f_2(x)=-x+e$','interpreter','latex','fontsize',8)
axis([-1 4 -1 2])
grid on
%--------------

subplot(1,2,2)
hold on
f(x)=@(x) x.*(1-log(x));
fplot(f,'k','Linewidth',1.2,'showpoles','off')
fplot(x*(exp(1)-x)/(exp(1)-1),'k--','Linewidth',1.2,'showpoles','off')
% fplot(exp(1)-x,'k--','Linewidth',0.8,'showpoles','off')
plot([-100,100],[0,0],'k-','linewidth',0.8) % ª≠x÷·
plot([0,0],[-100,100],'k-','linewidth',0.8) % ª≠y÷·

plot(0,0,'ko','markersize',5)
plot(exp(1),0,'k.','markersize',15)

plot(1,1,'k.','markersize',15)
% 
 plot([-100 100],[0.7,0.7],'k','Linewidth',0.8)
 
 plot([0.335,0.335],[0,f(0.335)],'k-','linewidth',0.4) 
 text(0.24,-0.09,'$x_1$','interpreter','latex','fontsize',13)
 plot([1.87,1.87],[0,f(0.335)],'k-','linewidth',0.4) 
 text(1.70,-0.09,'$x_2$','interpreter','latex','fontsize',13)
 
 plot([0.555,0.555],[0,f(0.335)],'k-','linewidth',0.4) 
 text(0.56,0.1,'$x''_1$','interpreter','latex','fontsize',13)
 plot([2.16,2.16],[0,f(0.335)],'k-','linewidth',0.4) 
 text(2.17,0.1,'$x''_2$','interpreter','latex','fontsize',13)
 
 text(3.0,0.82,'$y_0$','interpreter','latex','fontsize',13)

% legend('$f(x)$','interpreter','latex','fontsize',8)
legend('$f(x)$','$P(x)=\frac{1}{e-1}x(e-x)$','interpreter','latex','fontsize',10)
axis([-1 4 -1 2])
grid on

