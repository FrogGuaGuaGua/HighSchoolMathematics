% 椭圆曲线学习
clc
syms a b x y
c=sqrt(a^2+b^2);
n=a*b/2;
x=n*(a+c)/b;
y=2*n*n*(a+c)/b^2;
expand(y^2-x^3+n^2*x)