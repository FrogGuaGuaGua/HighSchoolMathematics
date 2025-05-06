% 对二次方程进行分数线性变换
clc
syms t A B C D a b c
% x=(A*t+B);
collect(expand(a*(A*t+B)^2+b*(A*t+B)+c),t)

c2=a*A^2;
c1=2*A*B*a + A*b;
c0=a*B^2 + b*B + c;

expand(c1^2-4*c2*c0)
factor(expand(c1^2-4*c2*c0))

%---------------------------------
% x=(A*t+B)/(C*t+D);
collect(expand(a*(A*t+B)^2+b*(A*t+B)*(C*t+D)+c*(C*t+D)^2),t)

c2=a*A^2 + b*A*C + c*C^2;
c1=2*A*B*a + A*D*b + B*C*b + 2*C*D*c;
c0=a*B^2 + b*B*D + c*D^2;

factor(expand(c1^2-4*c2*c0))