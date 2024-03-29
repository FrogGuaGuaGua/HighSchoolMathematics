clc
close all
N=50;
a=ones(N,1);
b=ones(N,1);
A=10;
B=100;
(A+sqrt(A^2+4*B))/2;
for n=1:N-1
%     a(n+1)=log(a(n)+1);
% a(n+1)=2+1/sqrt(a(n));
% a(n+1)=sqrt(A*a(n)+B);
% b(n+1)=A+B/b(n);
% a(n+1)=a(n)/(1+sqrt(a(n)));
a(n+1)=sin(a(n));
end
plot(a,'k.','markersize',10)

% grid minor
grid on
hold on 
x=transpose(1:N);
% plot(b,'-')
%plot(x,2./(x+1),'o')
% plot(x,1./sqrt(x),'o')
% plot(x,x.^2/4,'.')
% plot(x,4./(x+1).^2,'o')
syms xx
% fplot(4/(xx+1)^2,'Linewidth',1,'color','r');
fplot(sqrt(3/(xx+2)),'Linewidth',1,'color','r');
fplot(sqrt(3/(xx)),'Linewidth',1,'color','g');
fplot(sqrt(2/(xx+2)),'Linewidth',1,'color','b');
axis([0 N+1 -0.05 1.05])
%%
close all
plot(x,1./(a.*x.^2))
hold on
plot(x,0.24*x.^2+x,'o')
%%
sa=0;
for n=2:101
    sa=sa+1/n^2;
end
sa