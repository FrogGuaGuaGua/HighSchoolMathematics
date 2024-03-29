clc
close all
% syms t
N=360;
P=[5,2,1,3;
   5,2,1,5;
   5,2,1,10;
   5,2,1,-3;
   5,2,1,-5;
   5,2,1,-10;
   5,4,4,7;
   5,4,7,11;
   5,4,11,14;
   5,4,4,-7;
   5,4,7,-11;
   5,4,11,-14];
for n=1:3
subplot(1,3,mod(n-1,3)+1)
% A= 5 ;B=2   ; w1=1   ;w2=3   ;
A=P(n,1) ;B=P(n,2)   ; w1=P(n,3)   ;w2=P(n,4)   ;
% fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
t=(0:720)*23*pi/360;
% fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',1.2,'Meshdensity',300)
plot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),'k','linewidth',1.2)
M=abs(A)+abs(B)+1; axis([-M M -M M]);
axis square
title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
    ', w_2=',num2str(w2),'$')},'interpreter','latex')
end
% saveas(gcf,'°ÚÏßÍ¼4.pdf','pdf')
% subplot(4,3,2)
% A= 5 ;B=2   ; w1=1   ;w2=5   ;
% % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',1.2,'Meshdensity',300)
% M=abs(A)+abs(B)+1; axis([-M M -M M]);
% axis square
% title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
%     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% 
% subplot(4,3,3)
% A= 5 ;B=2   ; w1=1   ;w2=10   ;
% % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',1.2,'Meshdensity',300)
% M=abs(A)+abs(B)+1; axis([-M M -M M]);
% axis square
% title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
%     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% 
% subplot(4,3,4)
% A= 5 ;B=2   ; w1=1   ;w2=-3   ;
% % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',1.2,'Meshdensity',300)
% M=abs(A)+abs(B)+1; axis([-M M -M M]);
% axis square
% title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
%     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% 
% subplot(4,3,5)
% A= 5 ;B=2   ; w1=1   ;w2=-5   ;
% % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',1.2,'Meshdensity',300)
% M=abs(A)+abs(B)+1; axis([-M M -M M]);
% axis square
% title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
%     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% 
% subplot(4,3,6)
% A= 5 ;B=2   ; w1=1   ;w2=-10   ;
% % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',1.2,'Meshdensity',300)
% M=abs(A)+abs(B)+1; axis([-M M -M M]);
% axis square
% title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
%     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% % 
% % subplot(4,3,7)
% % A= 5 ;B=4   ; w1=4  ;w2=7   ;
% % % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% % fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',0.8,'Meshdensity',300)
% % M=abs(A)+abs(B)+1; axis([-M M -M M]);
% % axis square
% % title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
% %     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% % 
% % subplot(4,3,8)
% % A= 5 ;B=4  ; w1=7   ;w2=11   ;
% % % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% % fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',0.8,'Meshdensity',300)
% % M=abs(A)+abs(B)+1; axis([-M M -M M]);
% % axis square
% % title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
% %     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% % 
% % subplot(4,3,9)
% % A= 5 ;B=4  ; w1=11   ;w2= 14 ;
% % % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% % fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',0.8,'Meshdensity',300)
% % M=abs(A)+abs(B)+1; axis([-M M -M M]);
% % axis square
% % title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
% %     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% % 
% % subplot(4,3,10)
% % A= 5 ;B=4   ; w1=4  ;w2=-7   ;
% % % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% % fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',0.8,'Meshdensity',300)
% % M=abs(A)+abs(B)+1; axis([-M M -M M]);
% % axis square
% % title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
% %     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% % 
% % subplot(4,3,11)
% % A= 5 ;B=4  ; w1=7   ;w2=-11   ;
% % % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% % fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',0.8,'Meshdensity',300)
% % M=abs(A)+abs(B)+1; axis([-M M -M M]);
% % axis square
% % title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
% %     ', w_2=',num2str(w2),'$')},'interpreter','latex')
% % 
% % subplot(4,3,12)
% % A= 5 ;B=4  ; w1=11   ;w2= -14 ;
% % % fimplicit(@(x,y) x.^2+y.^2-(A-B)^2,'k:','linewidth',1); hold on
% % fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','linewidth',0.8,'Meshdensity',300)
% % M=abs(A)+abs(B)+1; axis([-M M -M M]);
% % axis square
% % title({strcat('$A=',num2str(A),', B=',num2str(B),'$');strcat('$w_1=',num2str(w1),...
% %     ', w_2=',num2str(w2),'$')},'interpreter','latex')