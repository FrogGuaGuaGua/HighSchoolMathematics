%  x=tan x Áãµã½¥½ü
clc
close all
syms x f(x)
% solve(tan(x)-x,x)
f(x)=tan(x)-x;
[solx, param, cond] = solve(f(x)==0, x, 'ReturnConditions', true);
% [solx, param, cond] = solve(sin(x) == 0, x, 'ReturnConditions', true);
N=50;
xn=zeros(1,N);
for n=1:N
    assume(cond)
% interval = [solx > n*pi, solx < (n+0.5)*pi];
interval = [solx > 0, solx < 4];
% interval = [solx > n*pi-0.1, solx < n*pi+0.1];
solk = solve(interval, param);
xn(n) = double(subs(solx, param, solk));
end

%%
clc
syms z
% f(z)=sin(z)/(cos(z)+z*sin(z));
f(z)=tan(z)-z;
taylor(finverse(f),x,0,'order',10)