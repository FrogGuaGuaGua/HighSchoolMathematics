clc
N=25;
a=ones(N,2);
a(1,1)=2 ; a(2,1)=3;
for n=1:N-2
% a(n+1,1)=3*a(n,1)-2*n^2+6*n+1;
% a(n,2)=3^n+n^2-2*n-1;
a(n+2,1)=(a(n+1,1)^2+5)/a(n,1);
a(n,2)=((3-sqrt(5))/2)*((3+sqrt(5))/2)^n+((3+sqrt(5))/2)*((3-sqrt(5))/2)^n;
n^3+3*n+4
end

% A=[((3+sqrt(5))/2),((3-sqrt(5))/2);((3+sqrt(5))/2)^2,((3-sqrt(5))/2)^2]
% inv(A)*[2;3]
%%
clc
close all
syms x
% fplot((11/13)^x*(3*x+2))
n=1:N;
(11/13).^n.*(3*n+2);
axis([-5 20 -10 10])
grid minor
%%
sum(n.*(n+1).*(n+2))
N^4/4+1.5*N^3+11/4*N^2+1.5*N
%%
 polyfit([1,2,3],[8-1/2,18-4,40-27/2],2)
 1/2*n.^3+3*n.^2-2.5*n+7
 
%%
close all
fplot((6-2*x)/(x^2-4),'k','linewidth',1.2)
hold on
% grid minor
grid on
xm=5;
ym=4;
axis([-xm xm+1 -ym ym])
plot([-xm xm+1],[0 0],'k')
plot([0 0],[-ym ym],'k')
plot(0.7639320082,-1.3090169944,'k.','markersize',15)
plot(5.236067974,-0.1909830056,'k.','markersize',15)
%%
close all
clc
expand((2*x+3)^14)
plot(fliplr(coeffs(expand((2*x+3)^14))),'k.','markersize',20);
axis([0 16 -10^8 1.4*10^9]);grid on

%%
clc
a=6;b=7;c=8;
u=a^2+b^2+c^2;
v=a*b+b*c+c*a;
w=a+b+c;
o2=sqrt((-u+2*v)/3)
s2=(w+o2)/2
s1=sqrt(s2+2*o2)






