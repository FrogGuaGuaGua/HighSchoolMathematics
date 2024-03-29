% 赫米特-哈达玛(Hermite-Hadamard)不等式
% clc
% close all
% syms x f(x) Zbx(x) Zby(x)
% fig=figure;
% set(gcf,'unit','centimeters','position',[2,2,15,12])
% 
% hold on
% f(x)=@(x)exp(x/2);
% 
% a=0 ; b=2;
% int_fx=double(int(f,x,a,b));
% average_fx=int_fx/(b-a);
% rectangle('Position',[a 0 b-a average_fx],'FaceColor',[0.9,0.9,0.9])
% fplot(f,'k','linewidth',1.2)
% 
% 
% plot([a b],[f(a) f(b)],'k','linewidth',0.5)
% 
% plot([a a],[0 f(a)],'k','linewidth',0.5)
% plot([b b],[0 f(b)],'k','linewidth',0.5)
% 
% midx=(a+b)/2;
% midfx=(f(a)+f(b))/2;
% plot(midx,f(midx),'k.','markersize',10)
% plot(midx,average_fx,'k.','markersize',10)
% plot(midx,midfx,'k.','markersize',10)
% 
% plot([-10 midx],[midfx midfx],'k--','linewidth',0.5)
% plot([-10 midx],[average_fx average_fx],'k--','linewidth',0.5)
% plot([-10 midx],[f(midx) f(midx)],'k--','linewidth',0.5)
% plot([-10 a],[f(a) f(a)],'k--','linewidth',0.5)
% plot([-10 b],[f(b) f(b)],'k--','linewidth',0.5)
% 
% plot([midx midx],[0 midfx],'k','linewidth',0.5)
% 
% text(a-0.04,-0.08,'$x_1$','interpreter','latex','fontsize',15)
% text(b-0.04,-0.08,'$x_2$','interpreter','latex','fontsize',15)
% text(midx-0.13,-0.1,'$\frac{x_1+x_2}{2}$','interpreter','latex','fontsize',15)
% 
% plot([-100,100],[0 0],'k','linewidth',0.5)
% % plot([0 0],[-100,100],'k','linewidth',0.5)
% 
% % title('Hermite-Hadamard不等式','interpreter','latex');
% title('Hermite-Hadamard不等式');
% xleft=a-0.3;
% xright=b+0.3;
% ybottom=0;
% yup=3;
% % Zbx(x)=@(x)(x-xleft)/(xright-xleft);
% % Zby(x)=@(x)(x-ybottom)/(yup-ybottom);
% % annotation('textarrow',0.8,2,'String','\frac{f(x_1)+f(x_2)}{2}','interpreter','latex');
% % annotation('textarrow',[double(Zbx(0.5)) double(Zby(midx))],...
% %     [double(Zbx(2)) double(Zby(midfx))],'String','[f(x_1)+f(x_2)]/2');
% 
% % annotation('textarrow',[double(Zbx(0.8)) double(Zbx(1.02))],...
% %     [double(Zby(2.1)) double(Zby(midfx))],'String','$\frac{f(x_1)+f(x_2)}{2}$','interpreter','latex','fontsize',15);
% % annotation('textarrow',[double(Zbx(1.3)) double(Zbx(1.06))],...
% %     [double(Zby(1.5)) double(Zby(f(midx)+0.01))],'String','$f(\frac{x_1+x_2}{2})$','interpreter','latex','fontsize',15);
% text(-0.28,1.1,'$f(x_1)$','interpreter','latex','fontsize',15)
% text(-0.28,2.8,'$f(x_2)$','interpreter','latex','fontsize',15)
% text(0.1,2,'$\frac{f(x_1)+f(x_2)}{2}$','interpreter','latex','fontsize',15)
% text(0.1,1.5,'$f(\frac{x_1+x_2}{2})$','interpreter','latex','fontsize',15)
% text(1.1,1.6,'$\frac{1}{x_2-x_1}\int_{x_1}^{x_2}f(x)dx$','interpreter','latex','fontsize',15)
% % grid minor
% % axis off
% axis([xleft xright ybottom yup])
% set(gca,'ytick',[])
% set(gca,'xtick',[])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
close all
syms x f(x) Zbx(x) Zby(x)
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,15,12])

% subplot(1,2,1)
hold on
f(x)=@(x)exp(x/2);
g(x)=diff(f,x);

fplot(f,'k','linewidth',1.8)
a=0 ; b=2;
plot([a b],[f(a) f(b)],'k','linewidth',1)
plot([a a],[0 f(a)],'k','linewidth',0.5)
plot([b b],[0 f(b)],'k','linewidth',0.5)

midx=(a+b)/2;
midfx=(f(a)+f(b))/2;
plot(midx,f(midx),'k.','markersize',10)
plot(midx,midfx,'k.','markersize',10)
t(x)=g(midx)*(x-midx)+f(midx);
plot([a b],[t(a) t(b)],'k','linewidth',1)

plot([-10 midx],[midfx midfx],'k--','linewidth',0.5)
plot([-10 midx],[f(midx) f(midx)],'k--','linewidth',0.5)
plot([-10 a],[f(a) f(a)],'k--','linewidth',0.5)
plot([-10 b],[f(b) f(b)],'k--','linewidth',0.5)

plot([midx midx],[0 midfx],'k','linewidth',0.5)

text(a-0.04,-0.08,'$x_1$','interpreter','latex','fontsize',15)
text(b-0.04,-0.08,'$x_2$','interpreter','latex','fontsize',15)
text(midx-0.13,-0.1,'$\frac{x_1+x_2}{2}$','interpreter','latex','fontsize',15)

plot([-100,100],[0 0],'k','linewidth',0.5)
% plot([0 0],[-100,100],'k','linewidth',0.5)

% title('Hermite-Hadamard不等式','interpreter','latex');
% title('Hermite-Hadamard不等式');
xleft=a-0.5;
xright=b+0.3;
ybottom=0;
yup=3;

text(-0.5,1.1,'$f(x_1)$','interpreter','latex','fontsize',15)
text(-0.5,2.8,'$f(x_2)$','interpreter','latex','fontsize',15)
text(-0.1,2,'$\frac{f(x_1)+f(x_2)}{2}$','interpreter','latex','fontsize',15)
text(-0.1,1.5,'$f(\frac{x_1+x_2}{2})$','interpreter','latex','fontsize',15)

text(-0.06,1.08,'$A$','interpreter','latex','fontsize',15)
text(0.91,1.95,'$B$','interpreter','latex','fontsize',15)
text(1.93,2.8,'$C$','interpreter','latex','fontsize',15)
text(-0.11,0.8,'$D$','interpreter','latex','fontsize',15)
text(0.89,1.5,'$E$','interpreter','latex','fontsize',15)
text(1.9,2.32,'$F$','interpreter','latex','fontsize',15)
text(-0.11,0.07,'$G$','interpreter','latex','fontsize',15)
text(1.88,0.07,'$H$','interpreter','latex','fontsize',15)

axis([xleft xright ybottom yup])
set(gca,'ytick',[])
set(gca,'xtick',[])

%%%%%%%%%
% subplot(1,2,1)
% hold on
% f(x)=@(x)exp(x/2);
% g(x)=diff(f,x);
% 
% fplot(f,'k','linewidth',1.2)
% a=0 ; b=2;
% plot([a b],[f(a) f(b)],'k','linewidth',0.5)
% plot([a a],[0 f(a)],'k','linewidth',0.5)
% plot([b b],[0 f(b)],'k','linewidth',0.5)
% 
% midx=(a+b)/2;
% midfx=(f(a)+f(b))/2;
% plot(midx,f(midx),'k.','markersize',10)
% plot(midx,midfx,'k.','markersize',10)
% t(x)=g(midx)*(x-midx)+f(midx);
% plot([a b],[t(a) t(b)],'k','linewidth',0.5)
