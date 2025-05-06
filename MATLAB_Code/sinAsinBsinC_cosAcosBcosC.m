clc
close all
[X,Y]=meshgrid(0:0.01:pi/2,0:0.01:pi/2);
Z=(sin(X)+sin(Y)+sin(X+Y))./(cos(X)+cos(Y)-cos(X+Y));
plot3(X,Y,Z)
N=size(X,1);

m=Z(N,N);
for k=1:N
    for n=k:N
        if Z(N+1-k,n)<m 
            m=Z(N+1-k,n);
        end
    end
end
m
1+sqrt(2)/2
% [i1,i2]=ind2sub([N,N],find(abs(Z-m)<1e-6))
