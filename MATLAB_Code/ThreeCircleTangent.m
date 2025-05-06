clc
close all


r1 = 0.5;
a1 = 4;
b1 = 0;

r2 = 1;
a2 = 5;
b2 = 4;     

r3 = 0.8;
a3 = 0;
b3 = 2;
% 
viscircles([a1 b1],r1,'Color','k',LineStyle='-');
viscircles([a2 b2],r2,'Color','k',LineStyle='-');
viscircles([a3 b3],r3,'Color','k',LineStyle='-');

axis equal
axis off

% syms a1 b1 r1 a2 b2 r2 a3 b3 r3
syms r

A=[a1-a2,b1-b2;
   a1-a3,b1-b3];
B=0.5*[(a1^2+b1^2-r1^2)-(a2^2+b2^2-r2^2)+2*(r1-r2)*r;
       (a1^2+b1^2-r1^2)-(a3^2+b3^2-r3^2)+2*(r1-r3)*r];
X=A\B;
aa=X(1);
bb=X(2);
%%%%%%%%%%%

D=(a1-a2)*(b1-b3)-(a1-a3)*(b1-b2);
% D=0.5/D;
A1=a1^2+b1^2-r1^2;
A2=a2^2+b2^2-r2^2;
A3=a3^2+b3^2-r3^2;

v1=(A1-A2+2*(r1-r2)*r)/(2*D);
v2=(A1-A3+2*(r1-r3)*r)/(2*D);
a=(b1-b3)*v1+(b2-b1)*v2;
b=(a3-a1)*v1+(a1-a2)*v2;
simplify(a-aa)
simplify(b-bb)

root=double(solve(expand((a-a1)^2+(b-b1)^2-(r-r1)^2),r))
a_1=double(subs(a,r,root(1)))
b_1=double(subs(b,r,root(1)))

viscircles([a_1 b_1],-(root(1)),'Color','k',LineStyle=':');

a_2=double(subs(a,r,root(2)))
b_2=double(subs(b,r,root(2)))

viscircles([a_2 b_2],root(2),'Color','k',LineStyle=':');
%%%%%%%%%%%%%
La=((b1-b3)*(r1-r2)+(b2-b1)*(r1-r3))/D;
ua=((b1-b3)*(A1-A2)+(b2-b1)*(A1-A3))/(2*D);
Lb=((a3-a1)*(r1-r2)+(a1-a2)*(r1-r3))/D;
ub=((a3-a1)*(A1-A2)+(a1-a2)*(A1-A3))/(2*D);

roots([La^2+Lb^2-1,2*(La*(ua-a1)+Lb*(ub-b1)+r1),(ua-a1)^2+(ub-b1)^2-r1^2])