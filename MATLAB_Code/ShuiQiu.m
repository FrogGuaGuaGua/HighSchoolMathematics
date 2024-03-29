% Ë®Çò e^x-x-a
clc
close all
syms x f(x)
f(x)=exp(x)-x;
R(x)=(36 - 12*x + 19*x^2)/(36 - 12*x + x^2);

hold on
fplot(f(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(R(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
% xx=7:0.01:15;
% plot(xx,double(R(xx)),'k-','linewidth',1.2)

plot([-100,100],[0,0],'k-','linewidth',0.8)
% plot([-100,100],[1.6,1.6],'k-.','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)

axis([-10,25,-5,70])

grid on
% title('$g(x)=\frac{(x-2)e^x}{(x-1)^2}$','interpreter','latex')
legend('$ y=e^x-x $','$R_{2,2}(x)=\frac{36-12x+19x^2}{36-12x+x^2}$','interpreter','latex')
% text(2.1,1.8,'$y=a$','interpreter','latex')

%%
close all
R12(x)=(2*(- 3 + x))/(- 6 + 2*x + 3*x^2);
R21(x)=-(6 - 2*x + 3*x^2)/(2*(- 3 + x));
subplot(1,2,1)
hold on
fplot(f(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(R12(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)
legend('$ y=e^x-x $','$R_{1,2}(x)=\frac{2x-6}{3x^2+2x-6}$','interpreter','latex')
axis([-4,4,-1,20])
grid on

subplot(1,2,2)
hold on
fplot(f(x),'k-','linewidth',1.2,'meshdensity',100,'showpoles','off')
fplot(R21(x),'k:','linewidth',1.2,'meshdensity',100,'showpoles','off')
plot([-100,100],[0,0],'k-','linewidth',0.8)
plot([0,0],[-100,100],'k-','linewidth',0.8)
legend('$ y=e^x-x $','$R_{2,1}(x)=\frac{-3x^2+2x-6}{2x-6}$','interpreter','latex')
axis([-4,4,-1,20])
grid on


