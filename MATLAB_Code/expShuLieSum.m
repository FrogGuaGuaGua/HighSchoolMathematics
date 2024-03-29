
clc
close all
N=10000;
s=zeros(1,N);
s(1)=exp(1);

for n=3:N
 s(n)=s(n-1)+exp(1/n);
end
 hold on
% fplot(x,'r-')
% plot(1:N,s,'k.')
plot(1:N,s,'k-')
plot(1:N,log(1:N)+exp(1)-1,'r-')
grid minor
% axis equal

%%
% clc
close all
N=1000000;
s=zeros(1,N);

for n=2:N
    s(n)=s(n-1)+sqrt(log(n));
end
 hold on

n=1:N;
plot(1:N,s,'k-','linewidth',1.5)
% plot(1:N,n.*log(n),'r-')
% plot(1:N,n.*sqrt(log(n)),'b-')
% plot(1:N,n.*sqrt(log(n))-n/6+1,'r-')
plot(1:N,n.*sqrt(log(n))-n./log(n)+5,'r-')
% plot(1:N,n.*sqrt(log(n))-sqrt(n).*log(n),'g-')
grid minor
% axis equal

%%
% clc
close all
N=3000;
s=zeros(1,N);
s(1)=1;
for n=2:N
    s(n)=s(n-1)+1/(n-log(n));
end
 hold on

n=1:N;
plot(1:N,s,'k-','linewidth',1.5)
% plot(1:N,n.*log(n),'r-')
% plot(1:N,n.*sqrt(log(n)),'b-')
% plot(1:N,n.*sqrt(log(n))-n/6+1,'r-')
plot(1:N,log(n)+2,'r-')
% plot(1:N,n.*sqrt(log(n))-sqrt(n).*log(n),'g-')
grid minor
% axis equal

%%
% clc
close all
N=300;
s=zeros(1,N);
% s(1)=1;
for n=2:N
%     s(n)=s(n-1)+1/n/log(n);
    s(n)=s(n-1)+log(n)/n;
end
 hold on

n=1:N;
plot(1:N,s,'k-','linewidth',1.5)
% plot(1:N,log(log(n+1))+0.8,'b-')
plot(1:N,0.5*(log(n+1)).^2,'r-')
% plot(1:N,n./log(log(n)+1),'g-')
% plot(1:N,n./log(n+1),'r:')
grid minor
% axis equal
