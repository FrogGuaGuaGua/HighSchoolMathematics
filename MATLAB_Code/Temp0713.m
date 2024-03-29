clc
close all
syms x
N=2000;
a=zeros(1,N);
a(1)=2;
a(2)=3;
for n=1:N-2
a(n+2)=a(n+1)+1/log(a(n));
end
hold on
plot(a)
n=2:N;
b=n./log(n);
fplot(1.5*x/log(x),'k-')
fplot(x/(log(x)-log(log(x))),'k--')
plot(a(2:N)./b,'r')