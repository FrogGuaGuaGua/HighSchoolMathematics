clc;  close all;
syms x; 
% N=200;
N=61;
% an=(1:N).^(-2);  % an代表fn(x)的系数，但不包含常数项-1
an=1./factorial(0:N);
z=zeros(N,N);
for k=1:N-1
%     z(k,1:k)=roots([fliplr(an(1:k)),-1]);  % 求多项式的全部根
    z(k,1:k)=roots(fliplr(an(1:k+1))); 
end
figure 
hold on
axis equal
plot(z(15,1:15),'ko','markersize',4)
plot(z(24,1:24),'k*','markersize',4)
plot(z(33,1:33),'kd','markersize',4)
plot(z(42,1:42),'k<','markersize',4)
plot(z(51,1:51),'k.')
% axis([-2 2 -2 2])
grid minor
% legend('$n=10$','$n=30$','$n=50$','$n=70$','$n=90$', ...
%       'interpreter','latex','fontsize',8)
  
  %%
close all
figure 
hold on
grid minor
axis([-5 2 -5 5])
for k=2:12
 fplot(@(x) sum([-1,an(1:k)].* x.^(0:k)),'Linewidth',0.8)
%  fplot(@(x) sum([-1,an(1:k)].* x.^(0:k)),'k','Linewidth',0.8)
end
plot([-100 100],[0 0],'k','Linewidth',1)
plot([0 0],[-100 100],'k','Linewidth',1)
title('$f_n(x),\ n=2,3,\cdots, 12 $','interpreter','latex','fontsize',10)