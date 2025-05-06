% x^2+y=a, y^2+z=b, z^2+x=c,其中x,y,z是变量，a,b,c是常数

clc
syms a b c x
f=expand( (b-(a-x^2)^2)^2+x-c)
collect(f,x)