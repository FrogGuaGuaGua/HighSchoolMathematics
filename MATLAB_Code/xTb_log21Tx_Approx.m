% |x+b-log_2(1+x)| 最大最小值问题
clc
close all
syms x
hold on
grid minor

fplot(x+0.0430357,[-1,2],'k-','linewidth',1.2)
fplot(log(1+x)/log(2),[-0.5,2],'k-.','linewidth',1.2)


plot([-1 2],[0 0],'k-','Linewidth',0.5)
plot([0 0],[-1 2],'k-','Linewidth',0.5)
plot([1 1],[-1 2],'k-','Linewidth',0.5)
legend('$x+b$','$\log_2(1+x)$','','','','interpreter','latex','fontsize',12,'Location','northwest')

axis equal
% axis off
axis([-1 2 -1 2])

%%
clc
b=1/2-(1+log(log(2)))/(2*log(2))

m1=3/2*2^23*(127-b)
uint32(m1)
dec2hex(uint32(m1))

m2=3/2*2^52*(1023-b)
uint64(m2)
dec2hex(uint64(m2))

n1=hex2dec('5f3759df')
127-n1/(1.5*2^23)
n2=hex2dec('5fe6ec85e7de30da')
1023-n2/(1.5*2^52)


%%
clc
N=100;
b=transpose(linspace(0.04,0.05,N));
e=zeros(N,1);
for k=1:N
    % e(k)=int((x+b(k)-log(1+x)/log(2))^2,x,[0,1]);
    e(k)=int(abs(x+b(k)-log(1+x)/log(2)),x,[0,1]);
end
min(e)
find(e==min(e))