clc
close all
syms x

subplot(3,2,1)
fplot(exp(x)./(exp(x)+1),'k','linewidth',1.2)
grid minor
axis([-10 10 -0.1 1.1])
title('$\frac{e^x}{e^x+1}$','interpreter','latex')

subplot(3,2,5)
fplot(x.*exp(x)./(exp(x)+1),'k','linewidth',1.2)
grid minor
axis([-10 10 -1 10])
title('$\frac{xe^x}{e^x+1}$','interpreter','latex')

subplot(3,2,4)
fplot(log(exp(x)./(exp(x)+1)),'k','linewidth',1.2)
grid minor
axis([-10 10 -10 0.5])
title('$\ln\left(\frac{e^x}{e^x+1}\right)$','interpreter','latex')

subplot(3,2,2)
fplot(tanh(x),'k','linewidth',1.2)
grid minor
axis([-10 10 -1.1 1.1])
title('$\tanh(x)=\frac{e^x-e^{-x}}{e^x+e^{-x}}$','interpreter','latex')

subplot(3,2,3)
fplot(x./(1+abs(x)),'k','linewidth',1.2)
grid minor
axis([-10 10 -1.1 1.1])
title('$\frac{x}{1+|x|}$','interpreter','latex')

subplot(3,2,6)
fplot(log(exp(x)+1),'k','linewidth',1.2)
grid minor
axis([-10 10 -0.5 10])
title('$\ln(e^x+1)$','interpreter','latex')