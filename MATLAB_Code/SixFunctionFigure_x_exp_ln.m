syms x

% axis equal

subplot(3,2,1)
fplot(x*exp(x),'k','Linewidth',2)
title('$xe^{x}$', 'interpreter','latex','fontsize',20)
axis([-3 3 -1 10])
grid on 


subplot(3,2,3)
fplot(exp(x)/x,'k','Linewidth',2)
title('$\frac{e^x}{x}$', 'interpreter','latex','fontsize',26)
axis([-3 5 -30 30])
grid on 


subplot(3,2,5)
fplot(x/exp(x),'k','Linewidth',2)
title('$\frac{x}{e^x}$', 'interpreter','latex','fontsize',26)
axis([-2 5 -10 2])
grid on 


subplot(3,2,2)
fplot(x*log(x),'k','Linewidth',2)
title('$x\ln x $', 'interpreter','latex','fontsize',20)
axis([-0.5 5 -1 10])
grid on 


subplot(3,2,4)
fplot(log(x)/x,'k','Linewidth',2)
title('$\frac{\ln x}{x}$', 'interpreter','latex','fontsize',26)
axis([-0.5 5 -10 2])
grid on 


subplot(3,2,6)
fplot(x/log(x),'k','Linewidth',2)
title('$\frac{x}{\ln x}$', 'interpreter','latex','fontsize',26)
axis([-0.5 5 -10 10])
grid on 
