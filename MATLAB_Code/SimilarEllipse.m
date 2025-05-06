% 两个椭圆$ \begin{cases}
%     C_1: \dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}=\lambda_1 \\
%     C_2: \dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}=\lambda_2
% \end{cases} $，直线$ L $与$ C_1 $的两个交点为$ A_1,B_1 $，
% 与$ C_2 $的两个交点为$ A_2,B_2 $，那么$ |A_1A_2|=|B_1B_2| $. 

clc
close all

a=2;  b=1;
x0=1.7;    y0=sqrt(1-x0^2/a^2);

syms x y
hold on
fimplicit(x^2/a^2+y^2/b^2-1,'k','LineWidth',1)
fimplicit(x^2/a^2+y^2/b^2-2,'k','LineWidth',1)
fimplicit(3*x+3-y,'k','LineWidth',1)
fimplicit(x0*x/a^2+y*y0/b^2-1,'k','LineWidth',1)
plot(-36/37, 3*(-36/37)+3, 'k.', 'MarkerSize', 15);
axis equal
axis off
axis([-3.5 3.5 -2 2])
text(-0.9,1.56,'$A_1$','Interpreter','latex','FontSize',15)
text(-1.19,0.65 ,'$A_2$','Interpreter','latex','FontSize',15)
text(-1.58,-0.5,'$B_2$','Interpreter','latex','FontSize',15)
text(-1.85,-1.35,'$B_1$','Interpreter','latex','FontSize',15)