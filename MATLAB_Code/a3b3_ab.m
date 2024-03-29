% 高次整除问题
close all
N=2000;
[a,b]=meshgrid(1:N,1:N);
% k=(a.^4+b.^4)./(a.^2+b.^2+1);
k=(4*a.^2-1).^2./(4*a.*b-1);
Integer=(k-floor(k)<1e-8);
plot3(a,b,Integer.*k)