clc
close all
syms x fn(x)
N=200;
a=ones(1,N);
z=zeros(N,N);
% a(1)=1/2;
for n=1:N-1
% a(n+1)=a(n)-a(n)^2/3;
% a(n+1)=0.5*(a(n)+sqrt(100/a(n)));
% a(n+1)=6*a(n)/(1+a(n)^2);
% a(n+1)=a(n)-2*a(n)^1.5;
% a(n+1)=a(n)/(1+2*sqrt(a(n)));
a(n+1)=a(n)+2*sqrt(a(n));
z(n,1:n)=roots([fliplr(1./a(1:n)),-1]);
end

%%
% vpasolve(dilog(1 - x) - 1, x)
% 100*a(100)
hold on
plot(1:15,a(1:15),'k.')
syms x
% fplot(3/(x+2),'r')
% fplot(1/sqrt(2*x-1),'g')
% fplot((x).^(-2))
fplot((x).^(2),'k')
% fplot((x).^(2)-9*x,'b')
fplot((x).^(2)*0.8-2,'g')
%%
vpasolve(dilog(1 - x) - 1, x)
close all
figure 
hold on
grid minor
axis([-5 2 -5 5])
fn(x)=-1;
for k=1:12
    fn(x)=fn(x)+x^k/a(k);
    fplot(fn(x),'Linewidth',0.8)
end
plot([-100 100],[0 0],'k','Linewidth',1)
plot([0 0],[-100 100],'k','Linewidth',1)
title('$f_n(x),\ n=2,3,\cdots, 12 $','interpreter','latex','fontsize',10)

%%
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
% plot(z(80,1:80),'k*')
plot(z(90,1:90),'k.')
% plot(z(N,1:N),'ko')

axis([-2 2 -2 2])
legend('$n=10$','$n=30$','$n=50$','$n=70$','$n=90$','interpreter','latex','fontsize',8)
% \text{的全部根的分布}
% \mathrm{的全部根的分布}
% title('All roots of $-1+x+\frac{x^2}{2^2}+\frac{x^3}{3^2}+\cdots+\frac{x^n}{n^2}=0$', ...
%     'interpreter','latex','fontsize',12)
title('n=10,30,50,70,90, 根的分布')
grid minor
%%
clc
% close all
figure 
hold on
axis equal
for k=2:100
    plot(z(k,1:k),'k.','markersize',3)
end
title('n=2~100, 根的分布')
axis([-2 1.5 -2 2])

