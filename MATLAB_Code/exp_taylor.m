clc
close all
figure 
hold on
grid minor
N=82;
coeffs=ones(1,N);
for n=3:N
    coeffs(n)=1/factorial(n-1);
end
syms x
n=[15,24,33,42,51,60];
plot(roots(fliplr(coeffs(1:n(1)+1))),'kp')
plot(roots(fliplr(coeffs(1:n(2)+1))),'ko')
plot(roots(fliplr(coeffs(1:n(3)+1))),'kd')
plot(roots(fliplr(coeffs(1:n(4)+1))),'k<')
plot(roots(fliplr(coeffs(1:n(5)+1))),'k*')
plot(roots(fliplr(coeffs(1:n(6)+1))),'ks')
legend(strcat('n=',num2str(n(1))),strcat('n=',num2str(n(2))),...
    strcat('n=',num2str(n(3))),strcat('n=',num2str(n(4))),...
    strcat('n=',num2str(n(5))),strcat('n=',num2str(n(6))))
axis([-20 62 -30 30])
%%%%%%
figure 
grid minor
hold on
% plot(roots(fliplr(coeffs(1:n(1)+1)))/n(1),'kp')
plot(roots(fliplr(coeffs(1:n(2)+1)))/n(2),'kp')
% plot(roots(fliplr(coeffs(1:n(3)+1)))/n(3),'k.')
plot(roots(fliplr(coeffs(1:n(4)+1)))/n(4),'k.')
% plot(roots(fliplr(coeffs(1:n(5)+1)))/n(5),'ko')
plot(roots(fliplr(coeffs(1:n(6)+1)))/n(6),'ko')
% fplot( sqrt(exp(2*x-2)-x^2),'k')
% fplot(-sqrt(exp(2*x-2)-x^2),'k')
fimplicit(@(x,y)x.^2+y.^2-exp(2*x-2),'k','Linewidth',1.2,'meshdensity',1000)
% legend(strcat('n=',num2str(n(1))),strcat('n=',num2str(n(2))),...
%     strcat('n=',num2str(n(3))),strcat('n=',num2str(n(4))),...
%     strcat('n=',num2str(n(5))),strcat('n=',num2str(n(6))),'x^2+y^2=e^{2x-2}')
h=legend(strcat('$n$=',num2str(n(2))),strcat('$n$=',num2str(n(4))),...
    strcat('$n$=',num2str(n(6))),'$x^2+y^2=e^{2x-2}$');
set(h,'interpreter','latex')
 axis([-0.4 1.1 -0.6 0.8])
 %%
 % 2022 0301
 clc;  close all;
% syms x; 
N=61;
an=1./factorial(0:N);
z=zeros(N,N);
figure 
hold on
for k=1:N-1
    z(k,1:k)=roots(fliplr(an(1:k+1))); 
    plot(z(k,1:k),'k.','markersize',3)
end

axis equal
plot(z(15,1:15),'ko','markersize',4)
plot(z(24,1:24),'k*','markersize',4)
plot(z(33,1:33),'kd','markersize',4)
plot(z(42,1:42),'kp','markersize',4)
plot(z(51,1:51),'kx','markersize',4)
plot(z(60,1:60),'ks','markersize',4)
axis([-20 65 -30 30])
grid minor
legend('$n=15$','$n=24$','$n=33$','$n=42$','$n=51$','$n=60$', ...
      'interpreter','latex','fontsize',8)
% title('All roots of\ \ $1+x+\frac{x^2}{2!}+\frac{x^3}{3!}+\cdots+\frac{x^n}{n!}=0$', ...
% 'interpreter','latex','fontsize',12)
title('n=15,24,33,42,51,60, 根的分布')

%%
clc
% close all
figure 
hold on
axis equal
for k=2:60
    plot(z(k,1:k),'k.','markersize',3)
end
title('n=2~60, 根的分布')
% axis([-2 1.5 -2 2])
%%
close all;
figure 
hold on
axis equal
plot(z(24,1:24)/24,'kp','markersize',4)
plot(z(42,1:42)/42,'kx','markersize',4)
plot(z(60,1:60)/60,'k.','markersize',6)
fimplicit(@(x,y) x.^2+y.^2-exp(2*x-2),'k','Linewidth',1.2,'meshdensity',2000)
axis([-0.4 1.3 -0.52 0.52])
grid minor
legend('$n=24$','$n=42$','$n=60$','$x^2+y^2=e^{2x-2}$', ...
      'interpreter','latex','fontsize',8)
% title('All roots of\ \ $1+x+\frac{x^2}{2!}+\frac{x^3}{3!}+\cdots+\frac{x^n}{n!}=0$', ...
% 'interpreter','latex','fontsize',12)
%%
 % 2022 0301
 clc;  close all;

figure 
hold on
axis equal
for k=2:12
    fplot(@(x) sum(an(1:k+1).* x.^(0:k)),'Linewidth',0.8)
end
plot([-100 100],[0 0],'k','Linewidth',1)
plot([0 0],[-100 100],'k','Linewidth',1)

axis([-7 2 -3 4])
grid minor
title('$S_n(x),\ n=2,3,\cdots, 12 $', ...
'interpreter','latex','fontsize',12)



