% x^2+xy+y^2=a^2
% y^2+yz+z^2=b^2
% z^2+zx+x^2=c^2

clc

a=3; b=4; c=5;
u=a^4+b^4+c^4;
v=a^2*b^2+b^2*c^2+c^2*a^2;
w=a^2+b^2+c^2;

s2=0.5*(w-sqrt((-u+2*v)/3));
25-4*sqrt(3)

o2=sqrt((-u+2*v)/3);
8*sqrt(3)

s1=sqrt(s2+2*o2);
sqrt(25+12*sqrt(3))

x=1/3*((a^2+c^2-2*b^2)/s1+s1)
y=1/3*((a^2+b^2-2*c^2)/s1+s1)
z=1/3*((b^2+c^2-2*a^2)/s1+s1)


s=sqrt(25-12*sqrt(3))
x=1/3*(s+2/s)
y=1/3*(s-25/s)
z=1/3*(s+23/s)

x^2+x*y+y^2
y^2+y*z+z^2
x^2+x*z+z^2