clc
close all
syms t
N=16;
x=ones(N,2);
x(1,1)=2;
x(1,2)=2;

%%
% y=ones(1,N);
% y(1)=1.2;
% for n=1:N-1
% x(n+1)=x(n)^2/2/(x(n)-1);
% y(n+1)=y(n)^2/2/(y(n)-1);
% end
% subplot(1,2,1)
% plot(x,'k.','markersize',15)
% title('$x_1=6$','Interpreter','latex')
% axis([0 N+1 1 6.2])
% grid minor
% 
% subplot(1,2,2)
% plot(y,'k.','markersize',15)
% title('$x_1=1.2$','Interpreter','latex')
% axis([0 N+1 1 6.2])
% grid minor


% for n=1:N-1
% x(n+1)=solve(t+log(1+t)==x(n),t);
% end
% 
% u=1:0.01:N;
% plot(u,2.^(-u+1),'k')
% hold on
% plot(u,2.^(-u+2),'k--')
% plot(x,'k.','markersize',15)
% 
% legend('1/2^{n-1}','1/2^{n-2}','x_n')
% % legend('$\frac{1}{2^{n-1}}$','$\frac{1}{2^{n-2}}$')
% grid minor
% axis([0 N+1 -0.1 1.1])

%%
for n=1:N-1
x(n+1,1)=0.5*x(n,1)+1/x(n,1);
x(n,2)=sqrt(2)*(1+(3-2*sqrt(2))^(2^(n-1)))/(1-(3-2*sqrt(2))^(2^(n-1)));
end
plot(x(:,1))
hold on
plot(x(:,2))
%% 
N=21;
clc
for a=-N:N
    for b=-N:N
        for c=-N:N
            t=a/(b+c)+b/(a+c)+c/(a+b);
            if t==4
                a
                b
                c
            end
        end
    end
end


