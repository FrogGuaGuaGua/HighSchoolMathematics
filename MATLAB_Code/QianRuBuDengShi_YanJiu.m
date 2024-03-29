% 嵌入不等式研究
clc
close all
a=2; b=3; c=3.5;
cosA=(b^2+c^2-a^2)/(2*b*c);
cosB=(a^2+c^2-b^2)/(2*a*c);
cosC=(b^2+a^2-c^2)/(2*b*a);

% x=2; 
% y=5;
% z=7;
x=5; 
y=5;
z=0.1;
2*(y*z*cosA+z*x*cosB+x*y*cosC)-(y*z+z*x+x*y)