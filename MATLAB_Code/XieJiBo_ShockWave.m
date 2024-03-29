% 斜激波研究, y空气绝热指数
clc
M1=2.4;
B=pi/6;
Mn1=M1*sin(B);
y=1.4;
Q=atan(2*(Mn1^2-1)/tan(B)/ (M1^2*(y+cos(2*B))+2) )
Q*180/pi
Mn2=sqrt((1+(y-1)/2*Mn1^2)/(y*Mn1^2-(y-1)/2))
M2=Mn2/sin(B-Q)
