clc
close all
% syms x
% f(x)=(x+1)/exp(x);
% % vpa(solve(f(x)-0.5,x))
% a=0.01:0.01:0.99;
% L=length(a);
% dx=zeros(1,L);
% x1_Plus_x2=zeros(1,L);
% for k=1:L
% [solx, param, cond] = solve(f(x)-a(k), x, 'ReturnConditions', true);
% solk1=solve(solx<0,param);
% valx1 = vpa(subs(solx, param, solk1));
% 
% solk2=solve(solx>0,param);
% valx2 = vpa(subs(solx, param, solk2));
% dx(k)=valx2-valx1;
% x1_Plus_x2(k)=valx2+valx1;
% end
hold on
plot(a,dx,'k')
plot(a,x1_Plus_x2,'k:')

plot(a,-log(a)+2*sqrt(1-a),'r')
plot(a,-log(a),'r:')

%%
N=52;
a=ones(1,N);
for n=1:N-2
    a(n+2)=a(n+1)+a(n);
end
a(49)
