% x+sin x>=2ln(x+1)
% clear all
clc
close all
% subplot(1,2,1)
% hold on
% fplot(@(x)x+sin(x),'k','linewidth',1.)
% fimplicit(@(x,y)2*log(x+1)-y,'k','linewidth',1.)
% plot([4.0626827301,4.0626827301],[-10 10],'k--','linewidth',0.6)
% grid minor
% axis([-0.5 5 -1 4])
% subplot(1,2,2)
% hold on
% fplot(@(x)x+sin(x),'k','linewidth',1.)
% fimplicit(@(x,y)2*log(x+1)-y,'k','linewidth',1.)
% plot([4.0626827301,4.0626827301],[-10 10],'k--','linewidth',0.6)
% grid minor
% axis([3.7 4.3 3 3.4])
% 
% x=4.0626827301;
% x+sin(x)-2*log(x+1)
fimplicit(@(x,y)x.^x-y,'k','linewidth',1.5)
axis([-0.1 2.2 0 5])
title('$x^x$','interpreter','latex')
grid minor


