% $ y=(x-1)^k(x-3),\ k=1,2,3,4 $µÄÍ¼Ïñ
clc
close all
syms x f(x)
figure;
set(gcf,'unit','centimeters','position',[2,2,14,12])

subplot(2,2,1)
hold on
f(x)=@(x) (x-1).^1*(x-3);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
plot([-100 100],[0 0],'k','Linewidth',0.8)
title('$y=(x-1)(x-3)$','interpreter','latex','fontsize',10)
axis([-1 4 -10 12])
grid on

subplot(2,2,2)
hold on
f(x)=@(x) (x-1).^2*(x-3);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
plot([-100 100],[0 0],'k','Linewidth',0.8)
title('$y=(x-1)^2(x-3)$','interpreter','latex','fontsize',10)
axis([-1 4 -10 12])
grid on

subplot(2,2,3)
hold on
f(x)=@(x) (x-1).^3*(x-3);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
plot([-100 100],[0 0],'k','Linewidth',0.8)
title('$y=(x-1)^3(x-3)$','interpreter','latex','fontsize',10)
axis([-1 4 -10 10])
grid on

subplot(2,2,4)
hold on
f(x)=@(x) (x-1).^4*(x-3);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
plot([-100 100],[0 0],'k','Linewidth',0.8)
title('$y=(x-1)^4(x-3)$','interpreter','latex','fontsize',10)
axis([-1 4 -10 12])
grid on