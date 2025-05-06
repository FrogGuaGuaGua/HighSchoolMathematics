syms x
clc
% for n=1:6
% % expand(diff(exp(x)/x,n)*exp(-x)*x^(n+1))
% % expand(diff((x^2-1)^n,n)/2^n/factorial(n))
% % expand(diff(exp(x^2-2*x),n)*exp(-x^2+2*x)/2^n)
% latex(expand(diff(exp(1/x),n)*exp(-1/x)*x^(2*n)*(-1)^n/factorial(n)))
% end
% % for n=1:5
% % % expand(diff(exp(x)/x,n)*exp(-x)*x^(n+1))
% % legendreP(n,x)
% % end
N=4000;
a=ones(N:2);
a(1,1:2)=[1,3];
for n=2:N
%     a(n,1)=(2*a(n-1,1)+5)/(3*a(n-1)+4);
%     a(n,2)=(1+5/11*(-1/7)^(n-1))/(1-3/11*(-1/7)^(n-1));
%     a(n,1)=(9*a(n-1,1)-8)/(2*a(n-1)+1);
%     a(n,2)=(4*n+11)/(2*n+3);
    a(n,1)=(3*a(n-1,1)-2)/(2*a(n-1)+5);
%     a(n,2)=(4*n+11)/(2*n+3);
end
plot(a(:,1))