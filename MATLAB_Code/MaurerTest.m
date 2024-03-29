clc
close all

N=360;

% p=primes(300);
% w1=4;
% w2=6;
% %     t=(0:1:w1*360)*d*pi/360;
% %     x=sin(w1*t).*cos(t);
% %     y=sin(w2*t).*sin(t);
% syms t
%     fplot(sin(w1*t).*cos(t),sin(w2*t).*sin(t),'k');
%     axis equal
% %     title(strcat('w1=',num2str(w1),', w2=',num2str(w2),', d=',num2str(d)))
%     xlabel('t=(0:1:3600)*d*pi/360;   x=sin(w1*t).*cos(t);   y=sin(w2*t).*sin(t);')

% w=[3,3; 2,4; 2,5;   3,4;3,5;3,6;   4,5;4,6;5,6];
%  w=[2,4;3,4;2,5;3,5;4,5;3,7;];
% w=[2,4;3,4;2,5;3,5;];
% w=[4,5;3,7;];
% w=[4,4;5,5;]
% w=[6,6;7,7;]
w=[8,8;9,9;];
d=127;
% figure
for n=1:2
    w1=w(n,1);
    w2=w(n,2);
%     w1=4; w2=4;
%     t=(0:1:w1*360)*d*pi/360;
    t=(0:1:720)*d*pi/360;
    subplot(1,2,n)
    x=cos(w1*t).*cos(t);
    y=cos(w2*t).*sin(t);
    plot(x,y,'k');
    title(strcat('$w_1=',num2str(w1),', w_2=',num2str(w2),', d=',num2str(d),'$'),'interpreter','latex')
     axis square
end    