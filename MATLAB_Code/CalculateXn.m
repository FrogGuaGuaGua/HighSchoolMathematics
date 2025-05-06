% x_1=2,\ x_2=3,\ x_3=7,
% x_n=x_1x_2\cdots x_{n-1}+1

clc
n=40;
x=zeros(n,2);
x(1,1)=2;
x(2,1)=3;
P=2;
for k=3:n
    P=P*x(k-1,1);
    x(k,1)=P+1;
    x(k,2)=isprime(P+1);
end