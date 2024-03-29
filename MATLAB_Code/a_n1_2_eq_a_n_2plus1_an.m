% 数列a_{n+1}^2=a_n^2+1/an
clc
close all
N=1e2;
a=ones(1,N);
b=ones(1,N);
for n=1:N-1
%   a(n+1)=sqrt(a(n)^2+1/a(n)); 
%   b(n+1)=a(n+1)/(n+1).^(1/3);
    a(n+1)=sqrt(2*a(n)+3); 
end
plot(a)

%%
hold on
x=1:0.1:N;
plot(x,(1.5*x).^(1/3),'k')
plot(x,(1.5*x).^(1/3)+1/3,'k--')
plot(x,(1.5*x).^(1/3)-1/3,'k--')
% N^(4.9/5)
grid minor
% figure 
% plot(b)
% b(N)
1.5^(1/3)

%%
% 如何估计递推数列a(n+1)=a(n)^2+1的增长阶
clc
close all
N=11; 
% MATLAB中a(11)就是Infinity了
a=zeros(1,N);
a(1)=2;
for n=1:N-1
    a(n+1)=a(n)^2+1;
end
C=log(a)./2.^(1:N);
plot(1:N,C)

%%
clc
b=ones(20,1);
for n=1:19
    b(n+1)=1+1/b(n);
end
plot(b,'.')
