clc

a=sqrt(6);
b=sqrt(7);
c=sqrt(8);

u=a^4+b^4+c^4;
v=a^2*b^2+b^2*c^2+c^2*a^2;
w=21;

s2=1/2*(w-sqrt((-u+2*v)/3))
o2=sqrt((-u+2*v)/3)
s1=sqrt(s2+2*o2)
sqrt(1/2*(21+sqrt(429)))

x=1/3*(s1+(a^2+c^2-2*b^2)/s1)
y=1/3*(s1+(a^2+b^2-2*c^2)/s1)
z=1/3*(s1+(b^2+c^2-2*a^2)/s1)

x+y+z-s1
x^2+y^2+z^2-s2
x*y+y*z+z*x-o2