clc
N=10;
a=transpose(exp(1:N));
t8(x)=taylor(exp(x),x,'order',11);
b=double(transpose(t8(1:N)));
c=transpose(KuaiSuExp1(1:N));
e1=(b-a)./a*100;
e2=(c-a)./a*100;

X=transpose(1:N);
M=[X,a,b,e1,c,e2];

function ex=KuaiSuExp1(x)
ex=1+x/2^10;
ex=ex.^2; ex=ex.^2; ex=ex.^2; ex=ex.^2;
ex=ex.^2; ex=ex.^2; ex=ex.^2; ex=ex.^2;
ex=ex.^2; ex=ex.^2;
end

