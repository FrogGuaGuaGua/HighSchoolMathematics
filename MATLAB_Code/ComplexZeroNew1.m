% 复零点分布，新题
clc
close all
syms x; 
% taylor(x/(exp(x)-1),'order',15)
% taylor(exp(x)/(x^2+1),'order',15)
% taylor((x+1)*exp(x),'order',15)
% vpasolve(dilog(1 - x) - 1, x)
N=100;
% a=(1:N).^(-1);
n=1:N;
% a=bernoulli(n)./factorial(n);
% a=1./(2.^n+3.^n);
% a=1./sqrt(factorial(n));
% a=1+log(n);
% a(1)=1;
% a=n;
a=sin(n/10);
% a=sqrt(n);
% a=factorial(n);
a0=1;
z=zeros(N,N);
for k=1:N
    z(k,1:k)=roots([fliplr(a(1:k)),a0]);
end

% %%
close all
figure 
hold on
grid minor
axis([-5 5 -5 5])
f(x)=a0+a(1)*x;
for k=2:12
 f(x)=f(x)+a(k)*x^k;   
 fplot(f(x),'Linewidth',0.8)
%  fplot(@(x) sum([-1,an(1:k)].* x.^(0:k)),'k','Linewidth',0.8)
end
plot([-100 100],[0 0],'k','Linewidth',1)
plot([0 0],[-100 100],'k','Linewidth',1)
title('$f_n(x),\ n=2,3,\cdots, 12 $','interpreter','latex','fontsize',10)
% %%
% clear all
clc
% close all
figure 
hold on
axis equal
plot(z(10,1:10),'ko','markersize',4)
% plot(z(20,1:20),'kd')
plot(z(30,1:30),'k*','markersize',4)
% plot(z(40,1:40),'k<')
plot(z(50,1:50),'kd','markersize',4)
% plot(z(60,1:60),'k.')
plot(z(70,1:70),'k<','markersize',4)
% % plot(z(80,1:80),'k*')
plot(z(90,1:90),'k.')
% % plot(z(N,1:N),'ko')

axis([-5 5 -5 5])
legend('$n=10$','$n=30$','$n=50$','$n=70$','$n=90$','interpreter','latex','fontsize',8)
% \text{的全部根的分布}
% \mathrm{的全部根的分布}
% title('All roots of $-1+x+\frac{x^2}{2^2}+\frac{x^3}{3^2}+\cdots+\frac{x^n}{n^2}=0$', ...
%     'interpreter','latex','fontsize',12)
title('n=10,30,50,70,90, 根的分布')
grid minor
%%
clc
close all
figure 
hold on
axis equal
for k=2:99
    plot(z(k,1:k),'k.','markersize',4)
end
% title('n=2~100, 根的分布')

% plot([-100 100],[0.6 0.6],'k','Linewidth',0.5)
% plot([0.6 0.6],[-100 100],'k','Linewidth',0.5)
% title('$1+(1!)x+(2!)x^2+\cdots+(n!)x^n$','interpreter','latex','fontsize',12)
% axis([-0.6 0.6 -0.6 0.6])

plot([-100 100],[1 1],'k','Linewidth',0.5)
plot([1 1],[-100 100],'k','Linewidth',0.5)
title('$1+x+2x^2+\cdots+nx^n$','interpreter','latex','fontsize',12)
axis([-1 1 -1 1])

%%
close all
 x0=vpasolve(dilog(1 - x) - 1, x);
figure 
hold on
N0=50;
plot(1:N0,diag(z(1:N0,1:N0)),'ko','Linewidth',0.8)
xx=0.5:0.01:N0;
% plot(xx,zeta(xx+1)-1+x0,'k--')
plot(xx,xx.^(-1)+x0,'k:','Linewidth',1)
% plot(xx,xx.^(-2)+x0,'k:')

plot(xx,(2*sqrt(2)-2).^(xx+1).*xx.^(-1)+x0,'k--','Linewidth',1)
plot(xx,(2*sqrt(2)-2).^(xx+1).*xx.^(-2)*(3+2*sqrt(2))+x0,'k-.','Linewidth',1)
plot(xx,xx.^(-3)+x0,'k-','Linewidth',1)
% plot(xx,xx.^(-4)+x0,'r-','Linewidth',1)
% fplot(zeta(x+2)-1+x0,'k-')
% plot(xx,2.^(-xx-1)+x0,'k-')
% legend('$x_n,\ n=1\sim 10 $','$\frac{1}{n}+\overline{x}$','$\frac{1}{n^3}+\overline{x}$','interpreter','latex','fontsize',10)
legend('$x_n,\ n=1\sim 50 $','$\frac{1}{n}+\overline{x}$',...
    '$\left(2\sqrt{2}-2\right)^{n+1}\cdot \frac{1}{n}+\overline{x}$',...
    '$\left(2\sqrt{2}-2\right)^{n+1}\cdot \frac{3+2\sqrt{2}}{(n+1)^2}+\overline{x}$',...
    '$\frac{1}{n^3}+\overline{x}$','interpreter','latex','fontsize',10)
title('数列x_n的递减速度')
axis([0 N0+1 0.75 1.05])
grid minor
%%
clc
%  close all
figure 
hold on
axis equal
plot(z(N,1:N),'ko')
a=( max(real(z(N,:)))-min(real(z(N,:))) )/2+0.003
b=max(imag(z(N,:)))
fimplicit(@(x,y) (x-real(z(N,N/2))+0.008).^2/a^2+y.^2/b^2-1,'Linewidth',1.2)
% fplot(@(x,y) (x-real(z(N,N/2))).^2/a^2+y.^2/b^2-1)

%%
clc
close all
plot(2:2:N,min(real(z(2:2:N,:)),[],2))



