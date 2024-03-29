clc
close all
% x=1:10;
syms x

subplot(2,2,1)
for n=1:9
rectangle('Position',[n,0,1,log(n+1)],'FaceColor',[0.9,0.9,0.9])
end
hold on
fplot(log(x),'k','Linewidth',1.2)
axis([0 12 0 3])
title('$\int_1^{10}\ln xdx<\ln 2+\ln 3+\cdots+\ln 10 $', 'interpreter','latex','fontsize',10)
grid minor

subplot(2,2,2)
fplot(log(x),'k','Linewidth',1.2)
hold on
for n=1:10
rectangle('Position',[n,0,1,log(n)],'FaceColor',[0.9,0.9,0.9])
end
axis([0 12 0 3])
title('$\ln 2+\ln 3+\cdots+\ln 10<\int_2^{11}\ln xdx $', 'interpreter','latex','fontsize',10)
grid minor

subplot(2,2,3)
for n=1:9
rectangle('Position',[n,0,1,1/(n+1)],'FaceColor',[0.9,0.9,0.9])
end
hold on
fplot(1/x,'k','Linewidth',1.2)
axis([0 12 0 0.6])
title('$\int_1^{10}\frac{1}{x}dx>\frac{1}{2}+\frac{1}{3}+\cdots+\frac{1}{10} $', 'interpreter','latex','fontsize',10)
grid minor

subplot(2,2,4)
for n=2:10
rectangle('Position',[n,0,1,1/n],'FaceColor',[0.9,0.9,0.9])
end
hold on
fplot(1/x,'k','Linewidth',1.2)
axis([0 12 0 0.6])
title('$\frac{1}{2}+\frac{1}{3}+\cdots+\frac{1}{10}>\int_2^{11}\frac{1}{x}dx $', 'interpreter','latex','fontsize',10)
grid minor

