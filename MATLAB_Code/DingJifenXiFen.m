% 定积分无限细分
clc
close all
syms x
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,16,12])

% f(x)=sin(x)/2+3;
f(x)=log(x+1)/2+2.5;
subplot(2,2,1)
hold on

a=0 ; b=4;
dx=(b-a)/6;
for x=a:dx:b-dx
rectangle('Position',[x 0 dx double(f(x))],'FaceColor',[0.85,0.85,0.85])
end
fplot(f,'k','linewidth',1.2)
plot([a-0.5 b+0.5],[2,2],'k','linewidth',0.5)
plot([b b],[0,f(b)],'k','linewidth',0.5)
axis([a-0.5 b+0.5 2 3.6])
set(gca,'ytick',[])
set(gca,'xtick',[])
text(a-0.1,1.9,'$a$','interpreter','latex')
text(b-0.1,1.9,'$b$','interpreter','latex')
%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
hold on

a=0 ; b=4;
dx=(b-a)/15;
for x=a:dx:b-dx
rectangle('Position',[x 0 dx double(f(x))],'FaceColor',[0.85,0.85,0.85])
end
fplot(f,'k','linewidth',1.2)
plot([a-0.5 b+0.5],[2,2],'k','linewidth',0.5)
plot([b b],[0,f(b)],'k','linewidth',0.5)
axis([a-0.5 b+0.5 2 3.6])
set(gca,'ytick',[])
set(gca,'xtick',[])
text(a-0.1,1.9,'$a$','interpreter','latex')
text(b-0.1,1.9,'$b$','interpreter','latex')
%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
hold on
a=0 ; b=4;
dx=(b-a)/30;
for x=a:dx:b-dx
rectangle('Position',[x 0 dx double(f(x))],'FaceColor',[0.85,0.85,0.85])
end
fplot(f,'k','linewidth',1.2)
plot([a-0.5 b+0.5],[2,2],'k','linewidth',0.5)
plot([b b],[0,f(b)],'k','linewidth',0.5)
axis([a-0.5 b+0.5 2 3.6])
set(gca,'ytick',[])
set(gca,'xtick',[])
text(a-0.1,1.9,'$a$','interpreter','latex')
text(b-0.1,1.9,'$b$','interpreter','latex')
%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
hold on
a=0 ; b=4;
% dx=(b-a)/30;
% for x=a:dx:b-dx
% rectangle('Position',[x 0 dx double(f(x))],'FaceColor',[0.85,0.85,0.85])
% end

fill([a,a:0.01:b,b],[0,f(a:0.01:b),0],[0.8 0.8 0.8])
fplot(f,'k','linewidth',1.2)
plot([a-0.5 b+0.5],[2,2],'k','linewidth',0.5)
axis([a-0.5 b+0.5 2 3.6])
set(gca,'ytick',[])
set(gca,'xtick',[])
text(a-0.1,1.9,'$a$','interpreter','latex')
text(b-0.1,1.9,'$b$','interpreter','latex')