%  2018Ìì½ò¸ß¿¼
clc
close all
syms x f(x)
subplot(1,3,1)
a=1.4;
f1(x)=a^x;
f2(x)=log(x)/log(a);
hold on
fplot(f1(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f2(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
% fplot(x,'k-','linewidth',0.6,'meshdensity',100,'showpoles','off')
plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)

axis equal
axis([-2,8,-2,8])
grid on
% legend('$ y=a^x $','$y=\log_a x$','interpreter','latex')
title('$a<e^{1/e}$','interpreter','latex')
%-------
subplot(1,3,2)
a=exp(exp(-1));
f1(x)=a^x;
f2(x)=log(x)/log(a);
hold on
fplot(f1(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f2(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)
axis equal
axis([-2,8,-2,8])
grid on
% legend('$ y=a^x $','$y=\log_a x$','interpreter','latex')
title('$a=e^{1/e}$','interpreter','latex')
%-------
subplot(1,3,3)
a=2;
f1(x)=a^x;
f2(x)=log(x)/log(a);
hold on
fplot(f1(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(f2(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)
axis equal
axis([-2,8,-2,8])
grid on
% legend('$ y=a^x $','$y=\log_a x$','interpreter','latex')
title('$a>e^{1/e}$','interpreter','latex')