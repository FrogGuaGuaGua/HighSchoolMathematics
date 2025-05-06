%  (2022£¬ÐÂ¸ß¿¼I¾í)
clc
close all
syms x f(x)


f(x)=exp(x)-x;
g(x)=x-log(x);
hold on
fplot(f(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(g(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(f3(x),'k--','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(x,'k-','linewidth',0.6,'meshdensity',100,'showpoles','off')
plot([-100,100],[1.1671536,1.1671536],'k--','linewidth',0.8)

plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)

% axis equal
axis([-1.5,2.5,0.5,3])
grid minor
legend('$ y=f(x)=e^x-x $','$y=g(x)=x-\ln x$','$y=b=1.167153\cdots $','interpreter','latex')
%%%%%%%%%%%%%%
%%
close all
figure
subplot(1,2,1)
f(x)=2*exp(x)-x;
g(x)=x-log(x/2);
hold on
fplot(f(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(g(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(f3(x),'k--','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(x,'k-','linewidth',0.6,'meshdensity',100,'showpoles','off')
plot([-100,100],[2.3219832346,2.3219832346],'k--','linewidth',0.8)

plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)

% axis equal
axis([-3,3,1.5,4])
grid minor
legend('$ y=f(x)=2e^x-x $','$y=g(x)=x-\ln\frac{x}{2}$','$y=b=2.321983\cdots $','interpreter','latex')
%%%%%%%%%%%%%%
subplot(1,2,2)
f(x)=x^4-x;
g(x)=x-x^(1/4);
hold on
fplot(f(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(g(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(f3(x),'k--','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(x,'k-','linewidth',0.6,'meshdensity',100,'showpoles','off')
plot([-100,100],[-0.386662275,-0.386662275],'k--','linewidth',0.8)

plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)

% axis equal
axis([-0.5,1.5,-0.6,1])
grid minor
legend('$ y=f(x)=x^4-x $','$y=g(x)=x-x^{1/4}$','$y=b=-0.386662\cdots $','interpreter','latex')
