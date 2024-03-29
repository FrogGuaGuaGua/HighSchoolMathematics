clc
close all
N=100;
a=zeros(1,N);
a(1)=1/2;
% a(2)=3/4;
for n=1:N-1
%     a(n+1)=a(n)^2-a(n-1)^2+a(n-1);
%     a(n+1)=a(n)/(1+sqrt(a(n)));
    a(n+1)=a(n)-a(n)^3;
end
% sum(a)
plot(1:N,a,'-k')