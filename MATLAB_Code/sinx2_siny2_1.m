% sin(x^(2))+sin(y^(2))=1
clc
close all
% clear all
syms x y
fimplicit(sin(x.^3)+sin(y.^5)-1,'k','linewidth',1,'meshdensity',2000)
% fimplicit(cos(x.^3)+cos(y.^4)-1,'k','linewidth',1,'meshdensity',2000)
% fimplicit(tan(x.^4)+tan(y.^4)-1,'k','linewidth',1,'meshdensity',2000)

axis equal
axis([-10 10 -10 10])

title('$\sin(x^2)+\sin(y^2)=1$','interpreter','Latex')
% title('$\cos(x^2)+\cos(y^2)=1$','interpreter','Latex')
% title('$\tan(x^2)+\tan(y^2)=1$','interpreter','Latex')