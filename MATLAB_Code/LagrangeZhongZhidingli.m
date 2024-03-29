% 拉格朗日中值定理主图
clc
close all
% syms x

% subplot(1,2,1)
figure
hold on
% f(x)=@(x) exp(x/3);
f(x)=@(x) x.^3-5*x.^2+6*x;
fplot(f,'k','linewidth',1.5)
x1=-0.5; x2=4;
axis([-1 5 -8 11])
k=(f(x2)-f(x1))/(x2-x1);
% E=3*log(3*k);
E=solve(diff(f,x)-k,x);
E1=double(E(1));
E2=double(E(2));
fplot(@(x)k*(x-E1)+f(E1),'k','linewidth',0.5)
fplot(@(x)k*(x-E2)+f(E2),'k','linewidth',0.5)

plot([x1 x2],[f(x1) f(x2)],'k--','linewidth',1.)
plot([x1 x1],[-50,f(x1)],'k--','linewidth',0.5)
plot([x2 x2],[-50,f(x2)],'k--','linewidth',0.5)
plot([E1 E1],[-50,f(E1)],'k--','linewidth',0.5)
plot([E2 E2],[-50,f(E2)],'k--','linewidth',0.5)
text(x1-0.1,-8.7,'$x_1$','interpreter','latex','fontsize',18)
text(x2-0.1,-8.7,'$x_2$','interpreter','latex','fontsize',18)
text(E1-0.1,-8.7,'$\xi$','interpreter','latex','fontsize',18)
text(E2-0.1,-8.7,'$\xi$','interpreter','latex','fontsize',18)
set(gca,'ytick',[])
set(gca,'xtick',[])