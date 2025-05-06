% 设$a>0$，定义数列$x_1=\dfrac{a}{2},\ x_{n+1}=\dfrac{x_n}{2}(3-ax_n^2)$

clc
close all

a=0.01;
N=20;
x=zeros(1,N);

if a>1
    x(1)=1/a;
else
    x(1)=a;
end

for n=1:N-1
    x(n+1)=x(n)/2*(3-a*x(n)*x(n));
end
plot(x,'.')
hold on
% plot(1/sqrt(a)-x,'g')
% plot(1/sqrt(a)-(1:10).^2/30,'r')

% plot(1.5/a./(1:N),'r')
% plot(x(2:N)-x(1:N-1),'r')
% plot(1./2.^(1:N),'g')
% plot(1/sqrt(a)./(1:N),'b')
% plot(2/a./(1:N),'b')
% plot(1/a./(1:N).^2,'bv')