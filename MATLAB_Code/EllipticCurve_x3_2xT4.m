% 椭圆曲线 y^2=x^3-2x+4
% (x+a)*(x^2-ax+a)=x^3+(a-a^2)x+a^2
clc
syms x

for t=-6:30
    t
    f=2*expand((3/2*x^2-1)*(x-t)-(x^3-2*x+4));
    factor(f)
    f=expand((3*x^2-2)*(x-t)-(x^3-2*x+4));
    factor(f)
end

% 2*expand((3/2*x^2-1)*(x-4)-(x^3-2*x+4))
% factor(x^3 - 12*x^2 + 2*x)
% 
% expand((3*x^2-2)*(x+4)-(x^3-2*x+4))
% factor(x^3+6*x^2-6)
% solve(x^3+6*x^2-6)

% 
% for a=1:0.5:20
%     a
%     f=4*expand(x^3+(a-a^2)*x+a^2-1/4);
%     factor(f)
% end