clc
N=5000;
a=zeros(N,1);
a(1)=1;  a(2)=2;
A=3;  B=2;
for n=1:N-2
    a(n+2)=mod(A*a(n+1)+B*a(n),17);
end
for n=3:N-2
    if a(n)==1 && a(n+1)==2
        T=n-1
        break
    end
%     if a(n)==8 && a(n+1)==8
%         T=n-7
%         break
%     end
end
% a(1)=1;  a(2)=2;  A=3;  B=2; m=11; 周期30
% a(1)=1;  a(2)=2;  A=3;  B=2; m=5;  周期24
