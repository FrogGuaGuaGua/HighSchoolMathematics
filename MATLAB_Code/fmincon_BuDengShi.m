% 求带约束最值 不等式习题
clc
close all
syms x 

x0=[9,0,0];
A=[-1,0,0;0,-1,0;0,0,-1];
b=[0,0,0];
Aeq=[1,4,5];
beq=9;
fmincon(@(x) x(1).^3+x(2).^3+x(3).^3, x0,A,b,Aeq,beq)

