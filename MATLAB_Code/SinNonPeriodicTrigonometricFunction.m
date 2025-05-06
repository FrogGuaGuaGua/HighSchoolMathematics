syms x
clc
close all

% fplot(sin(x)*x,'k','Linewidth',2)
% title('$x\sin x$', 'interpreter','latex','fontsize',26)
% axis([-20 20 -10 10])
% grid on

% ����sin�˳��ͷ����ں���
% subplot(1,3,1)
% fplot(sin(x)*x,'k','Linewidth',2)
% title('$x\sin x$', 'interpreter','latex','fontsize',22)
% axis([-25 25 -20 20])
% grid on
% 
% 
% subplot(1,3,2)
% fplot(sin(x)/x,'k','Linewidth',2)
% title('$\frac{\sin x}{x}$', 'interpreter','latex','fontsize',26)
% axis([-20 20 -0.3 1.1])
% grid on 
% 
% subplot(1,3,3)
% fplot(x/sin(x),'k','Linewidth',2)
% title('$\frac{x}{\sin x}$', 'interpreter','latex','fontsize',26)
% axis([-20 20 -40 40])
% grid on 

%%%%%%%%%%%%%%%%%%%%%%%%
% ����sin�����ڱ仯�ķ����ں���
subplot(1,3,1)
fplot(sin(x^2),'k','Linewidth',1.5)
title('$\sin(x^2)$', 'interpreter','latex','fontsize',22)
axis([-6 6 -1.2 1.2])
grid on


subplot(1,3,2)
fplot(sin(sqrt(x)),'k','Linewidth',2)
title('$\sin(\sqrt{x})$', 'interpreter','latex','fontsize',22)
axis([0 400 -1.2 1.2])
grid on 

subplot(1,3,3)
fplot(sin(1/x),'k','Linewidth',1.5)
title('$\sin\left(\frac{1}{x}\right)$', 'interpreter','latex','fontsize',22)
axis([-1 1 -1.2 1.2])
grid on 








