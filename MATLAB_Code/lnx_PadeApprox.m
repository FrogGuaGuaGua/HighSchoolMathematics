% ln(x) 在x=1处帕德逼近
clc
close all
syms x f1(x) f2(x) f3(x) f4(x)
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,20,9])

% subplot(1,2,1)

f1(x)=@(x)log(x);
f2(x)=@(x) 2*(x-1)/(x+1);
f3(x)=@(x) 8*(x.^3-1)/3./(x+1).^3;
f4(x)=@(x) (11*x.^3+27*x.^2-27*x-11)/3./(x.^3+9*x.^2+9*x+1);

subplot(1,2,1)
hold on
max=10;
plot(0.01:0.01:max,f1(0.01:0.01:max),'k','linewidth',0.6)
x=-0.997:0.01:max;
plot(x,f2(x),'k--','linewidth',1.2)
plot(x,f3(x),'k:','linewidth',1.2)
axis([-1 max+0.5 -4 4.5])
grid on
legend('$\ln x$','$\frac{2(x-1)}{x+1}$','$\frac{8(x^3-1)}{3(x+1)^3}$','interpreter','latex')
% 
% subplot(1,3,2)
% hold on
% max=10;
% plot(0.01:0.01:max,f1(0.01:0.01:max),'k','linewidth',1.2)
% x=-0.997:0.01:max;
% plot(x,f3(x),'k--','linewidth',1.2)
% axis([-1 max+0.5 -4 4])
% grid on
% legend('$\ln x$',,'interpreter','latex')

subplot(1,2,2)
hold on
max=10;
plot(0.01:0.01:max,f1(0.01:0.01:max),'k','linewidth',0.6)
x=-0.07:0.01:max;
plot(x,f4(x),'k--','linewidth',1.5)
axis([-1 max+0.5 -4 4.5])
grid on
legend('$\ln x$','$\frac{11x^3+27x^2-27x-11}{3(x^3+9x^2+9x+1)}$','interpreter','latex')