% 定积分矩形法与梯形法
clc
close all
syms x X
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,17,7])

% f(x)=sin(x)/2+3;
f(x)=log(x+1)/2+2.5;
% f(x)=sqrt(x)/2+2.4;
% f(x)=sin(x/3+0.3)+2;
a=0 ; b=3;
dx=(b-a)/3;

subplot(1,3,1)
hold on
for x=a:dx:b-dx
rectangle('Position',[x 0 dx double(f(x))],'FaceColor',[0.85,0.85,0.85])
end
fplot(f,'k','linewidth',1.2)
plot([a-0.5 b+0.5],[2,2],'k','linewidth',0.5)
plot([b b],[0,f(b)],'k','linewidth',0.5)
axis([a-0.5 b+0.5 2 3.3])
set(gca,'ytick',[])
% set(gca,'xtick',[])
% text(a-0.05,1.95,'$a$','interpreter','latex')
% text(b-0.05,1.95,'$b$','interpreter','latex')
%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,2)
hold on
% 
% a=0 ; b=2;
% dx=(b-a)/2;
for x=a:dx:b-dx
    g(X)=(f(x+dx)-f(x))/dx*(X-x)+f(x);
% rectangle('Position',[x 0 dx double(f(x))],'FaceColor',[0.85,0.85,0.85])
fill([x,(x:0.01:x+dx),x+dx],[0,g(x:0.01:x+dx),0],[0.8 0.8 0.8])
end
fplot(f,'k','linewidth',1.2)
plot([a-0.5 b+0.5],[2,2],'k','linewidth',0.5)
plot([b b],[0,f(b)],'k','linewidth',0.5)
axis([a-0.5 b+0.5 2 3.3])
set(gca,'ytick',[])
% set(gca,'xtick',[])
% text(a-0.05,1.95,'$a$','interpreter','latex')
% text(b-0.05,1.95,'$b$','interpreter','latex')
% fill([a,a:0.01:b,b],[0,f(a:0.01:b),0],[0.8 0.8 0.8])
% fill([a,a:0.01:b,b],[0,g(a:0.01:b),0],[0.95 0.95 0.95])
%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,3)
hold on
for x=a:dx:b-dx
rectangle('Position',[x 0 dx double(f(x+0.5*dx))],'FaceColor',[0.85,0.85,0.85])
end
fplot(f,'k','linewidth',1.2)
plot([a-0.5 b+0.5],[2,2],'k','linewidth',0.5)
plot([b b],[0,f(b)],'k','linewidth',0.5)
axis([a-0.5 b+0.5 2 3.3])
set(gca,'ytick',[])
