clc
m=8;
p=1.29;
a=6/180*pi;
Cl=2*pi*a;
Cd=Cl/20;
b=0.12;
w=140;
R=1.5;
r0=0.1;

L=m/2*p*Cl*b*w^2*(R^3-r0^3)/3
L/9.8
yzh=L/9.8/(m*b*(R-r0))
M=m/2*p*Cd*b*w^2*(R^4-r0^4)/4
M*w/1000