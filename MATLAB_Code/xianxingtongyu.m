clc
N=30;
a=zeros(N,1);
a(1)=4;
for n=1:N-1
%  a(n+1,1)=mod((6*a(n)+2),5);
 a(n+1,1)=mod(a(n)^2,19);
%  a(n+1,1)=mod(a(n)^2+2*a(n),163);
end
a