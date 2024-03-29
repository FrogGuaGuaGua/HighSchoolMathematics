clc
close all
syms x g(x)
g(x)=(x-2)*exp(x)/(x-1)^2;
f1(x)=(x-2)*exp(x)+(x-1)^2;
f2(x)=(x-2)*exp(x)-(x-1)^2;
figure
hold on
fplot(g(x),'k-','linewidth',1.2,'meshdensity',200,'showpoles','off')
fplot(f1(x),'k:','linewidth',1.2,'meshdensity',200,'showpoles','off')
fplot(f2(x),'k--','linewidth',1.2,'meshdensity',200,'showpoles','off')

plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)
% fplot(g(x),'k-','linewidth',1.2,'meshdensity',500)
% axis equal
axis([-3,7,-5,5])

grid on
% title('$g(x)=\frac{(x-2)e^x}{(x-1)^2}$','interpreter','latex')
legend('$g(x)=\frac{(x-2)e^x}{(x-1)^2}$','$(x-2)e^x+(x-1)^2$','$(x-2)e^x-(x-1)^2$','interpreter','latex')