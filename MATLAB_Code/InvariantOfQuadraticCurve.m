% 研究二次型的正交不变量
clc
syms A B C D E F x1 y1 theta dx dy

x=x1*cos(theta)+y1*sin(theta)+dx;
y=x1*sin(theta)-y1*cos(theta)+dy;
% x=x1*cos(theta)-y1*sin(theta);
% y=x1*sin(theta)+y1*cos(theta);
% x=x1+dx;
% y=x1+dy;

f=expand(A*x^2+2*B*x*y+C*y^2+2*D*x+2*E*y+F);
cxy=coeffs(f,[x1 y1])
% cyx=coeffs(f,[y1 x1])
A1=cxy(6)
B1=cxy(5)/2
C1=cxy(3)
D1=cxy(4)/2
E1=cxy(2)/2
F1=cxy(1)

I1=A+C
I2=A*C-B^2
I3=det([A,B,D; ...
        B,C,E; ...
        D,E,F])

I1_=simplify(A1+C1)
I2_=simplify(A1*C1-B1^2)
I3_=simplify(det([A1,B1,D1; ...
                  B1,C1,E1; ...
                  D1,E1,F1]))

simplify(I1-I1_)
simplify(I2-I2_)
simplify(I3-I3_)




