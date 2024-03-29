% (l+d)^a 求和问题
clc
N=1000;

%%
clc
close all
d=0.5;
err=zeros(N,1);
for k=1:N
    err(k)=2/3*(k+d)^(3/2)+1/2*(k+d)^(1/2)-sum( ((1+d):1:(k+d)).^0.5 );
end
plot(1:N,err)
