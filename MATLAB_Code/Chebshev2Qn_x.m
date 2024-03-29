clc
syms x
Q=sym(ones(10,2));
Q(1)=1;
Q(2,:)=x;
for n=1:10-2
%     Q(n+2,1)=simplify((Q(n+1,1)^2+x^2-1))/Q(n,1);
    Q(n+2,1)=((Q(n+1,1)^2+x^2-1))/Q(n,1);
    Q(n+2,2)=2*x*Q(n+1,2)-Q(n,2);
end
x=1/3.5;
for n=1:10
%     subs(Q(n,:))
subs(Q(n,1)-Q(n,2))
end
%%
clc
close all
N=20;
a=ones(N,1);
% b=ones(N,1);
A=10;
B=100;

for n=1:N-1
a(n+1)=sqrt(a(n)^2-2*a(n)+2)-1;
end
plot(a,'k.','markersize',15)
hold on
plot([0,21],[1/4,1/4],'k','linewidth',1)
grid on
axis([0 21 -0.05 1.05])
%%
clc
close all
N=500;
a=ones(N,1);
% b=ones(N,1);
A=10;
B=100;

for n=1:N-1
% a(n+1)=log(1+a(n));
a(n+1)=a(n)+log(1+a(n));
end
plot(a,'k.','markersize',10)
hold on
syms x
% fplot(2/(x+1),'r','linewidth',1)
fplot(x*log(x),'r','linewidth',1)
% plot([0,21],[1/4,1/4],'k','linewidth',1)
grid on
% axis([0 51 0. 1.05])
%%
clc
close all
N=60;
a=ones(N,1);
% a(1)=2;
% b=ones(N,1);
A=10;
B=100;

for n=1:N-1
% a(n+1)=log(1+a(n));
a(n+1)=sin(a(n));
end
plot(a,'k.','markersize',10)
hold on
syms x
% fplot(2/(x+1),'r','linewidth',1)
fplot(sqrt(3/(x+2)),'r','linewidth',1)
% plot([0,21],[1/4,1/4],'k','linewidth',1)
grid on
axis([-1 N+1 0.1 1.1])