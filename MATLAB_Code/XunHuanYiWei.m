clc

N=5;   a=zeros(N,1);
n=0;   k=1;   S=0;
while k<100
    price=rand;
    n=mod(n,N)+1;
    if k<=N
        S=S+price;
    else
        S=S-a(n)+price;
    end    
    a(n)=price;
    k=k+1;
end