
clc
NN=8000000;
N=200000;
y=zeros(3,N);

d=0.000001;
tic
for n=1:NN
    x=1+n*d;
    y(1,mod(n,N)+1)=exp_t2(x);
end
toc

tic
for n=1:NN
    x=1+n*d;
    y(2,mod(n,N)+1)=exp_t1(x);
end
toc

for n=1:NN
    x=1+n*d;
    y(3,mod(n,N)+1)=exp(x);
end
toc



function y=exp_t2(x)
x=x/1024;
x=1+x+x^2/2;
y=((((((((((x)^2)^2)^2)^2)^2)^2)^2)^2)^2)^2;
end


function y=exp_t1(x)
x=x/2048+1;
y=(((((((((((x)^2)^2)^2)^2)^2)^2)^2)^2)^2)^2)^2;
end