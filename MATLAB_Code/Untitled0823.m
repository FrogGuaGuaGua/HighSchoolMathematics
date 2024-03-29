% for x=1:1992
%     y=sqrt(1993-x^2);
%     if y==fix(y)
%         x
%         y
%     end
% end
% clc
% n=29;
% k=0;
% while(n~=1 && k<200)
%     if mod(n,2)==0
%         n=n/2
%     else
%         n=7*n+1
%     end
% k=k+1;
% end
% k
clc
% a=3^19;
% b=15;
% idivide(int32(a),int32(b))
% mod(a,b)
% a=ones(20,1);
% for n=3:30
%     a(n)=(a(n-1)^2+2)/a(n-2);
%     a(n)/a(n-1)
% end
% 
% b=ones(20,1);
% for n=3:30
%     b(n)=4*b(n-1)-b(n-2);
% end
N=600000;
x=ones(N,1);
y=ones(N,1);
for n=1:N-1
    x(n+1)=x(n)+log(1+x(n)/n);
    y(n)=x(n)/n;
end
close all
plot(x)
hold on
% plot(y)
% plot(1:N,1+2*log(1:N))
u=transpose(1:N);
plot(u,2.5*u./log(u),'.')
plot(u,x-2.5*u./log(u))
grid minor

