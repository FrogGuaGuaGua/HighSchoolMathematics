% 第一章，函数，多个绝对值相加|x-b1|+|x-b2|+|x-b3|，绘制图像
clc
close all
syms x f(x)
figure;
set(gcf,'unit','centimeters','position',[2,2,21,15])

subplot(2,2,1)
hold on
f(x)=@(x) abs(x-1)+abs(x-2);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
title('$y=|x-1|+|x-2|$','interpreter','latex','fontsize',8)
axis([0 7.5 0 10])
grid minor

subplot(2,2,2)
hold on
f(x)=@(x) abs(x-1)+abs(x-2)+abs(x-4);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
title('$y=|x-1|+|x-2|+|x-4|$','interpreter','latex','fontsize',8)
axis([0 7.5 2 10])
grid minor

subplot(2,2,3)
hold on
f(x)=@(x) abs(x-1)+abs(x-2)+abs(x-4)+abs(x-5);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
title('$y=|x-1|+|x-2|+|x-4|+|x-5|$','interpreter','latex','fontsize',8)
axis([0 7.5 4 12])
grid minor

subplot(2,2,4)
hold on
f(x)=@(x) abs(x-1)+abs(x-2)+abs(x-4)+abs(x-5)+abs(x-7);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
title('$y=|x-1|+|x-2|+|x-4|+|x-5|+|x-7|$','interpreter','latex','fontsize',8)
axis([0 7.5 8 20])
grid minor

% disp("--------------")
%%%%%%%%%%%
figure;
set(gcf,'unit','centimeters','position',[2,2,21,7])

subplot(1,2,1)
hold on
f(x)=@(x) abs(x-1)-abs(x-2);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
title('$y=|x-1|-|x-2|$','interpreter','latex','fontsize',8)
axis([-1 5 -3 3])
grid minor

subplot(1,2,2)
hold on
f(x)=@(x) abs(x-1)-abs(x-2)-abs(x-4);
fplot(f,'k','Linewidth',1.2,'showpoles','off')
title('$y=|x-1|-|x-2|-|x-4|$','interpreter','latex','fontsize',8)
axis([-1 5 -6 2])
grid minor