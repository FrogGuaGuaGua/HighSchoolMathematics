clc
a=[	2, 3, 5, 7, 13, 17, 19, 31, 61, 89, 107, 127, 521, 607, ...
    1279,  2203, 2281, 3217, 4253, 4423, 9689, 9941, 11213, 19937, ...
    21701, 23209, 44497, 86243, 110503, 132049, 216091, 756839,...
    859433,  1257787, 1398269, 2976221, 3021377, 6972593, 13466917,...
    20996011, 24036583, 25964951, 30402457, 32582657, 37156667, ...
    42643801, 43112609, 57885161, 74207281, 77232917, 82589933]';
close all
plot(log(a),'ko')
hold on
grid on
x=(1:length(a))';
x1=(40:51)';
b=regress(log(a),x);
p = polyfit(x,log(a),1)
pp= polyfit(x1,log(a(40:51)),1)
% plot(x,b*x,'k','Linewidth',1.2)
plot(x,p(1)*x+p(2),'k','Linewidth',1.3)
plot(x1,pp(1)*x1+pp(2),'k','Linewidth',1.8)
% legend('ln a_n','0.371229n+0.907542')
axis([0 55 0 20])
ylabel('$\ln(p_n)$','interpreter','latex')
xlabel('$n$','interpreter','latex')
ax = gca;
% ax.GridColor = [0.1 0.1 0.1];
ax.GridAlpha = 0.4;
corrcoef(x,log(a))
corr(x,log(a),'type','Pearson')
% M=95903545;
% for n=M-100:2:M+100
%     if isprime(n)
%         n
%     end
% end