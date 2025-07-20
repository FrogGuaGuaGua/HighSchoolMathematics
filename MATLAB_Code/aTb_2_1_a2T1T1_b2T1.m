% a+b=2, 求 1/(a^2+1)+1/(b^2+1) 最大值
clc
close all
x=-2:0.001:4;
y=1./(x.^2+1)+1./((2-x).^2+1);
plot(x,y,'-k','LineWidth',1.4)
hold on
plot([-100,100],[0,0],'-k','LineWidth',0.4)
plot([0,0],[-100,100],'-k','LineWidth',0.4)
plot([1,1],[-100,100],'--k','LineWidth',0.4)
plot([2,2],[-100,100],'-k','LineWidth',0.4)
plot([1-sqrt(2*(sqrt(2)-1)),1-sqrt(2*(sqrt(2)-1))],[-100,100],'--k','LineWidth',0.4)
plot([1+sqrt(2*(sqrt(2)-1)),1+sqrt(2*(sqrt(2)-1))],[-100,100],'--k','LineWidth',0.4)

grid minor
axis equal
axis([-2,4,-0.2,1.5])

syms a
f=1/(a^2+1)+1/((2-a)^2+1);
factor(diff(f,a)*(a^2+1)^2*((2-a)^2+1)^2)
solve(a^4 - 4*a^3 + 10*a^2 - 12*a + 1,a)
