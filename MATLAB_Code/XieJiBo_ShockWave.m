% 斜激波研究, y空气绝热指数
clc
close all
M1=2;
B=0.6;
Mn1=M1*sin(B)
y=1.4;
Y=(y-1)/2;
Q=atan(2*(Mn1^2-1)/tan(B)/ (M1^2*(y+cos(2*B))+2) )
% Q*180/pi
Mn2=sqrt((1+Y*Mn1^2)/(y*Mn1^2-Y))
Mn2^2
M2=Mn2/sin(B-Q)
M2^2


(1+Y*M1^2)/(1+Y*M2^2)
(1+Y*Mn1^2)/(1+Y*Mn2^2)
