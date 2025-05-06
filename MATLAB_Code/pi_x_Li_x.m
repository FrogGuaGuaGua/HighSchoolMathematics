% syms x
clc
N=10^4;
x=2:0.1:N;
close all
% fplot(logint(x))
plot(x,logint(x),'k:','Linewidth',1.2)
grid on
hold on
axis([0 N+10 0 N/log(N)+10])
% axis([0 1.05*N 0 N/(log(N)-log(log(N)))])
axis([0 1.05*N 0 N/log(N)+3*N/log(N)^2])

%%
% N=10^4;
pix=zeros(1,N-2);
pix(2)=1;
for n=3:N-2
    if isprime(n)
        pix(n)=pix(n-1)+1;
    else
        pix(n)=pix(n-1);
    end
end
% figure
plot(3:N,pix,'k','Linewidth',1.2)
legend('Li(x)','¦Ð(x)')