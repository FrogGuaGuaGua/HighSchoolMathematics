% mathematica 语法   N[Exp(0.5), 40]

clc
close all
syms x; 
0.1^10/factorial(10)
f1(x)=taylor(cos(x),x,0,'order',12)
f2(x)=taylor(cos(x),x,0,'order',14)
x0=0.2;
vpa(cos(x0))
c=vpa(f1(x0))
c=vpa(f2(x0))
% c=2*c^2-1
% c=2*c^2-1
% c=2*c^2-1
% c=2*c^2-1
% cos(1.2)

%%
clc
syms x; 
f1(x)=taylor(exp(x),x,0,'order',12)
f2(x)=taylor(exp(x),x,0,'order',14)
x0=0.5;
vpa(exp(x0))
c=vpa(f1(x0))
c=vpa(f2(x0))

%%%%%%%%% Maple
% x0:=5;
% x1:=x0/512;
% x2:=x0/1024;
% 
% y1=evalf[21]((((((((((1+x1+x1^2/2)^2)^2)^2)^2)^2)^2)^2)^2)^2);
% y2=evalf[21](((((((((((1+x2      )^2)^2)^2)^2)^2)^2)^2)^2)^2)^2);
% evalf[21](exp(5))

%%
c=1-0.15^2/2;
c=2*c^2-1
cos(0.3)

c=2*c^2-1
cos(0.6)

c=2*c^2-1
cos(1.2)

%%
clc
close all
N=200;
a=ones(1,N);
% a(1)=5;
for n=1:N-1
%     a(n+1)=a(n)^2/(1+(a(n))^2);
%     a(n+1)=1+2*sqrt(a(n));
    a(n+1)=1+2*sqrt(a(n));
%      a(n+1)=1+(a(n))^(2)/(2^(2^(n-1)));
end

hold on
plot(a(1:20),'o')
syms x
fplot(3+2*sqrt(2)-2^(-x+2),'k')
fplot(3+2*sqrt(2)-x.^(-1/2),'g')
axis([0,21,0,10])

%%
syms x y
close all
fimplicit(sin(x.^2) + sin(y.^2) == 1,'meshdensity',2000)
axis([-10 10 -10 10]) 

%%

close all
hold on
fplot(2^(2^x),'k-','showpoles','off')
fplot(gamma(x),'b:','showpoles','off')

axis([-1 5 -1 10^4]) 

%%
clc
a=zeros(1000,100);
for n=1:1000
    a(1:n,n)=(1:n)+n*(n-1)/2;
end

s=0;
for n=1:36
    b=(a(:,3*n-2)~=0);
    s=s+sum(b);
end
s

%%
syms x y z integer                % assume ‘x’ and ‘y’ are integers
eqn = 1027*x + 712*y == 1;       % declare the equation
% [xSol, ySol] = solve(eqn,[x y])
% [xSol, ySol, zSol] = solve(2*x^2+3*y^2-5*z^2==0,[x y z])
[xSol, ySol, zSol] = solve(11*x + 32*y + 98*z == 10^5,[x y z])

%%
% clear all

% 求解三元二次不定方程 2*x^2+3*y^2-5*z^2==0
clc
x=1:22;
y=1:21;
z=1:20;
[X,Y,Z] = meshgrid(x,y,z);
k=2*X.^2+3*Y.^2-5*Z.^2;
[sy,sx,sz]=ind2sub([length(y),length(x),length(z)],find(abs(k)<1));
% 注意：上面是先y再x，不是我写错了，你可以把下一行取消注释，
% SolLocation=(abs(k)<1);       % 观察一下它的维数就明白了。
S=transpose([x(sx);y(sy);z(sz)]);

%%
a=zeros(1,20);
a(1)=3; a(2)=17;
for n=1:18
    a(n+2)=6*a(n+1)-a(n);
end
































