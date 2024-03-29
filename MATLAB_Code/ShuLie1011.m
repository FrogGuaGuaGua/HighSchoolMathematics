clc
close all
N=30;
a=ones(1,N);
a(1)=1;
for n=1:N-1
%  a(n+1)=log(a(n)^2+1)*2;
% a(n+1)=1.5*sin(a(n));
%  a(n+1)=tan(a(n)/2);
% a(n+1)=tan(a(n));
% a(n+1)=2*tan(a(n)/2);
 a(n+1)=sin(2*a(n));
% a(n+1)=
% a(n+1)=

end
plot(a,'-')
hold on
% syms x
x=0:0.01:N;
% plot(x,8.6625-2.^(-x+5))
% plot(x,1+7.66258*exp(x-5)./(exp(x-5)+1))
% plot(x,8.66258-1./(x-1))