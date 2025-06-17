% 三阶行列式
clc
syms a11 a12 a13 a21 a22 a23 a31 a32 a33
D=expand((a11*a33-a13*a31)*(a22*a33-a23*a32)/a33-...
    (a21*a33-a23*a31)*(a12*a33-a13*a32)/a33)

A=[a11,a12,a13;
   a21,a22,a23;
   a31,a32,a33];

det(A)