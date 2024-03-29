clc
close all
syms x
% fplot(x.^2+16/x,'k','Linewidth',1.2)
hold on
fplot(x+4/x.^2,'k','Linewidth',1.2)
fplot(x,'k--','Linewidth',1.2)
fplot(4/x.^2,'k:','Linewidth',1.2)
axis([-8 8 -10 30])
grid on
% legend('$x^2+\frac{16}{x}$','$x+\frac{4}{x^2}$','$x^2$','interpreter','latex')
legend('$y=x+\frac{4}{x^2}$','$y=x$','$y=\frac{4}{x^2}$','interpreter','latex')