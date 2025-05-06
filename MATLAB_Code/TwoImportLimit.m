
clc
close all
syms x

% 两个重要极限
subplot(1,3,1)
fplot((1+1/x)^x,'k','Linewidth',2)
title('$\left(1+\frac{1}{x}\right)^x$', 'interpreter','latex','fontsize',20)
axis([-1 40 0.8 3])
grid on 


subplot(1,3,2)
fplot((exp(x)-1)/x,'k','Linewidth',2)
title('$\frac{e^x-1}{x}$', 'interpreter','latex','fontsize',26)
axis([-3 3 -1 6])
grid on 


subplot(1,3,3)
fplot(sin(x)/x,'k','Linewidth',2)
title('$\frac{\sin x}{x}$', 'interpreter','latex','fontsize',26)
axis([-20 20 -0.3 1.1])
grid on 