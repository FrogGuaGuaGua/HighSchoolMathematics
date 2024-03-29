clc
close all
syms t
a=1.1;

subplot(2,3,3)
fplot(cos(2*t),sin(3*t),'k','Linewidth',1.2) 
axis([-a a -a a]); axis square;title('$\omega_1=2,\ \omega_2=3$','interpreter','latex');
subplot(2,3,1)
fplot(cos(1*t),sin(2*t),'k','Linewidth',1.2) 
axis([-a a -a a]); axis square;title('$\omega_1=1,\ \omega_2=2$','interpreter','latex');
subplot(2,3,2)
fplot(cos(1*t),sin(3*t),'k','Linewidth',1.2) 
axis([-a a -a a]); axis square;title('$\omega_1=1,\ \omega_2=3$','interpreter','latex');

subplot(2,3,4)
fplot(cos(3*t),sin(4*t),'k','Linewidth',1.2) 
axis([-a a -a a]); axis square;title('$\omega_1=3,\ \omega_2=4$','interpreter','latex');
subplot(2,3,5)
fplot(cos(4*t),sin(5*t),'k','Linewidth',1.2) 
axis([-a a -a a]); axis square;title('$\omega_1=4,\ \omega_2=5$','interpreter','latex');
subplot(2,3,6)
fplot(cos(5*t),sin(6*t),'k','Linewidth',1.2) 
axis([-a a -a a]); axis square;title('$\omega_1=5,\ \omega_2=6$','interpreter','latex');
% 
% subplot(5,3,7)
% fplot(cos(2*t),sin(3*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=2,\ \omega_2=3$','interpreter','latex');
% subplot(5,3,8)
% fplot(cos(2*t),sin(5*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=2,\ \omega_2=5$','interpreter','latex');
% subplot(5,3,9)
% fplot(cos(2*t),sin(7*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=2,\ \omega_2=7$','interpreter','latex');
% 
% subplot(5,3,10)
% fplot(cos(3*t),sin(4*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=3,\ \omega_2=4$','interpreter','latex');
% subplot(5,3,11)
% fplot(cos(3*t),sin(5*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=3,\ \omega_2=5$','interpreter','latex');
% subplot(5,3,12)
% fplot(cos(3*t),sin(7*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=3,\ \omega_2=7$','interpreter','latex');
% 
% subplot(5,3,13)
% fplot(cos(4*t),sin(5*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=4,\ \omega_2=5$','interpreter','latex');
% subplot(5,3,14)
% fplot(cos(4*t),sin(7*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=4,\ \omega_2=7$','interpreter','latex');
% subplot(5,3,15)
% fplot(cos(5*t),sin(6*t),'k','Linewidth',1.2) 
% axis([-a a -a a]); axis square;title('$\omega_1=5,\ \omega_2=6$','interpreter','latex');


%------------------------------------------------
% subplot(5,3,1)
% fplot(cos(t),sin(t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,2)
% fplot(cos(t),sin(t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,3)
% fplot(cos(t),sin(t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% 
% subplot(5,3,4)
% fplot(cos(2*t),sin(3*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,5)
% fplot(cos(2*t),sin(3*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,6)
% fplot(cos(2*t),sin(3*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% 
% subplot(5,3,7)
% fplot(cos(1*t),sin(2*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,8)
% fplot(cos(1*t),sin(2*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,9)
% fplot(cos(1*t),sin(2*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% 
% subplot(5,3,10)
% fplot(cos(1*t),sin(3*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,11)
% fplot(cos(1*t),sin(3*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,12)
% fplot(cos(1*t),sin(3*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% 
% subplot(5,3,13)
% fplot(cos(1*t),sin(4*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,14)
% fplot(cos(1*t),sin(4*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,15)
% fplot(cos(1*t),sin(4*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure
% subplot(5,3,1)
% fplot(cos(2*t),sin(5*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,2)
% fplot(cos(2*t),sin(5*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,3)
% fplot(cos(2*t),sin(5*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% 
% subplot(5,3,4)
% fplot(cos(3*t),sin(4*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,5)
% fplot(cos(3*t),sin(4*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,6)
% fplot(cos(3*t),sin(4*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% 
% subplot(5,3,7)
% fplot(cos(3*t),sin(5*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,8)
% fplot(cos(3*t),sin(5*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,9)
% fplot(cos(3*t),sin(5*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% 
% subplot(5,3,10)
% fplot(cos(4*t),sin(5*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,11)
% fplot(cos(4*t),sin(5*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,12)
% fplot(cos(4*t),sin(5*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])
% 
% subplot(5,3,13)
% fplot(cos(5*t),sin(6*t),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,14)
% fplot(cos(5*t),sin(6*t+pi/4),'k','Linewidth',1.2) 
% axis([-a a -a a])
% subplot(5,3,15)
% fplot(cos(5*t),sin(6*t+pi/3),'k','Linewidth',1.2) 
% axis([-a a -a a])