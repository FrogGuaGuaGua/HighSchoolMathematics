% 曲轴-连杆
clc
close all
syms Q
L=3; 
R=1;
f1(Q)=R*cos(Q)+sqrt(L^2-R^2*sin(Q)^2);
f2(Q)=R*cos(Q)+L;
figure
hold on
fplot(f1(Q),'k','linewidth',1.2,'meshdensity',200,'showpoles','off')
fplot(f2(Q),'k:','linewidth',1.2,'meshdensity',200,'showpoles','off')

plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)
% fplot(g(x),'k-','linewidth',1.2,'meshdensity',500)
% axis equal
axis([-8,8,L-R-0.5,L+R+0.5])

grid on
% title('$g(x)=\frac{(x-2)e^x}{(x-1)^2}$','interpreter','latex')
legend('$R\cos\theta+\sqrt{L^2-R^2\sin^2\theta}$','$R\cos\theta+L$','interpreter','latex')
title('$L=3, R=1$','interpreter','latex')