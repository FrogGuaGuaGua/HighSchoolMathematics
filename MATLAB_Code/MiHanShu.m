clc
close all
syms x

hold on
grid on
fplot(x,'k-','linewidth',1.2,'meshdensity',50,'showpoles','off')
fplot(x^2,'k:','linewidth',1,'meshdensity',50,'showpoles','off')
fplot(x^3,'k-.','linewidth',1,'meshdensity',50,'showpoles','off')
fplot(x^4,'k--','linewidth',1,'meshdensity',50,'showpoles','off')

plot([-100 100],[0 0],'k-','Linewidth',1)
plot([0 0],[-100 100],'k-','Linewidth',1)
axis equal
axis([-2 2 -3 5])
legend('$y=x$','$y=x^2$','$y=x^3$','$y=x^4$','interpreter','latex','fontsize',12)
