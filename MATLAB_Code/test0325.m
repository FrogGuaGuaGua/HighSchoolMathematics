clc
syms x
for n=1:20
    (2/pi*double(int((sin(x))^n,x,0,pi/2)))^(1/n)
end