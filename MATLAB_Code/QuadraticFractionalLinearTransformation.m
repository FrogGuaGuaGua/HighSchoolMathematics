% 对二次方程进行分数线性变换
clc
syms t A B D E a b c
% x=(A*t+B);
collect(expand(a*(A*t+B)^2+b*(A*t+B)+c),t)

c2=a*A^2;
c1=2*A*B*a + A*b;
c0=a*B^2 + b*B + c;

expand(c1^2-4*c2*c0)
factor(expand(c1^2-4*c2*c0))

%---------------------------------
% x=(A*t+B)/(D*t+E);
collect(expand(a*(A*t+B)^2+b*(A*t+B)*(D*t+E)+c*(D*t+E)^2),t)

c2=a*A^2 + b*D*A + c*D^2;
c1=2*A*B*a + A*E*b + B*D*b + 2*D*E*c;
c0=a*B^2 + b*B*E + c*E^2;

factor(expand(c1^2-4*c2*c0))