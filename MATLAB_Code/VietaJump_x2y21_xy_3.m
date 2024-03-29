clc
close all
N=200;
[a,b]=meshgrid(1:N,1:N);
% k=(2*a.^2+b.^2+1)./(a.*b);
% k=(a.^2+b.^2+1)./(a.*b+1);
% k=(a.^2+b.^2)./(a.*b+2);
% Integer=(k-floor(k)<1e-8);
% plot3(a,b,Integer.*k)

k=3*a.^2-2*b.^2;
Integer=(abs(k-1)<1e-8 | abs(k+1)<1e-8 );
plot3(a,b,Integer.*k)

