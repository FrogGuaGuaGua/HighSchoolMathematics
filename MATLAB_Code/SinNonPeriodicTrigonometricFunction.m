syms x
clc
close all

% 三个sin乘除型非周期函数
subplot(1,3,1)
fplot(sin(x)*x,'k','Linewidth',1.2)
title('$x\sin x$', 'interpreter','latex','fontsize',12)
axis([-25 25 -20 20])
grid on


subplot(1,3,2)
fplot(sin(x)/x,'k','Linewidth',1.2)
title('$\frac{\sin x}{x}$', 'interpreter','latex','fontsize',16)
axis([-20 20 -0.3 1.1])
grid on 

subplot(1,3,3)
fplot(x/sin(x),'k','Linewidth',1.2,'showpoles','off')
title('$\frac{x}{\sin x}$', 'interpreter','latex','fontsize',16)
axis([-20 20 -40 40])
grid on 

%%%%%%%%%%%%%%%%%%%%%%%%
% 三个sin括号内变化的非周期函数

% subplot(1,3,1)
% fplot(sin(1/x),'k','Linewidth',1.2,'showpoles','off')
% title('$\sin\left(\frac{1}{x}\right)$', 'interpreter','latex','fontsize',12)
% axis([-0.5 0.5 -1.2 1.2])
% grid on 
% 
% subplot(1,3,2)
% fplot(sin(sqrt(x)),'k','Linewidth',1.2)
% title('$\sin(\sqrt{x})$', 'interpreter','latex','fontsize',12)
% axis([0 400 -1.2 1.2])
% grid on 
% 
% subplot(1,3,3)
% fplot(sin(x^2),'k','Linewidth',1.2)
% title('$\sin(x^2)$', 'interpreter','latex','fontsize',12)
% axis([-6 6 -1.2 1.2])
% grid on








