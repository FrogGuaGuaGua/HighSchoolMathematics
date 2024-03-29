syms a1 a2 an an_1
expand((an+a1)*(1+an_1)*(1+a2)-(1+an)*(1+a1)*(an_1+a2))

N=1000;

[x,y]=meshgrid(-N:N,-N:N);
a=x.^3+7-y.^2;
nz=(abs(a)<1e-8);
plot3(x,y,nz.*a)

%%
clc
a=log(2)/log(3);
1/(1+a)^2+1/(2+a)^2+(pi^2/6-1-1/4)
1/(1+a)^2+1/(2+a)^2+(5/3-1-1/4)

1/(1+a)^2+(pi^2/6-1)
1/(1+a)^2+(5/3-1)
%%
% clear all
clc
syms x
A(x)=x+2;
B(x)=expand((x+1)*(x+3)^2)
[r,p,k]=residue([1,2],[1,7,15,9])
