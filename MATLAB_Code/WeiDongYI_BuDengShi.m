clc
syms a b c
close all
[n,d]=numden( (1-a)^2+(1-b)^2+(1-c)^2-c^2*(1-a^2)*(1-b^2)/(a*b+c)^2-b^2*(1-a^2)*(1-c^2)/(a*c+b)^2-a^2*(1-b^2)*(1-c^2)/(b*c+a)^2);
% n
% pretty(n)
% factor(2*b^6*c^4 - 2*b^5*c^4 + 2*b^4*c^6 - 2*b^4*c^5 + b^4*c^4)
% factor((n-(2*b^6*c^4 - 2*b^5*c^4 + 2*b^4*c^6 - 2*b^4*c^5 + b^4*c^4))/a)
% c=fliplr(coeffs(n,a));
coe=(coeffs(n,a));
% for k=9:-1:1
%     k-1
%     coe(k)
%     factor(coe(k))
%     display('------$','interpreter','latex','fontsize',18);
% end
for k=9:-1:1
%     display('p'
%     pretty(coe(k))
    factor(coe(k))
%     coeFac=factor(coe(k));
%     coeFac(end)
%     strcat('p_',num2str(k-1),'=',latex(coeFac(end)))
end

% figure
% fsurf(@(b,c) b.^2.*c.^2 + b.^2 - b.*c + c.^2 )  
% view([1 1 0]);axis([-3 3 -3 3 -2  5]);  title('$p_7/(2bc)$','interpreter','latex','fontsize',18); 

figure
fsurf(@(b,c)5.*b.^4.*c.^2+2.*b.^4-4.*b.^3.*c.^3-2.*b.^3.*c.^2-4.*b.^3.*c+5.*b.^2.*c.^4-2.*b.^2.*c.^3+6.*b.^2.*c.^2-4.*b.*c.^3+2.*c.^4)
view([1 1 0]);axis([-3 3 -3 3 -2  5]);title('$p_6$','interpreter','latex','fontsize',18);

figure
fsurf(@(b,c)4.*b.^5.*c-b.^4.*c.^4-2.*b.^4.*c.^3-4.*b.^4.*c.^2-2.*b.^4.*c-b.^4-2.*b.^3.*c.^4+9.*b.^3.*c.^3-2.*b.^3.*c.^2+4.*b.^3.*c-4.*b.^2.*c.^4-2.*b.^2.*c.^3-4.*b.^2.*c.^2+4.*b.*c.^5-2.*b.*c.^4+4.*b.*c.^3-c.^4)
view([1 1 0]);axis([-3 3 -3 3 -2  5]);  title('$\frac{p_5}{2}$','interpreter','latex','fontsize',18);

figure
fsurf(@(b,c)5.*b.^6.*c.^2+2.*b.^6-2.*b.^5.*c.^4-4.*b.^5.*c.^3-8.*b.^5.*c.^2-4.*b.^5.*c-2.*b.^5-2.*b.^4.*c.^5+3.*b.^4.*c.^4- ...
    8.*b.^4.*c.^3+30.*b.^4.*c.^2-2.*b.^4.*c+b.^4-4.*b.^3.*c.^5-8.*b.^3.*c.^4-16.*b.^3.*c.^3-8.*b.^3.*c.^2-4.*b.^3.*c+5.*b.^2.*c.^6 ...
    -8.*b.^2.*c.^5+30.*b.^2.*c.^4-8.*b.^2.*c.^3+11.*b.^2.*c.^2-4.*b.*c.^5-2.*b.*c.^4-4.*b.*c.^3+2.*c.^6-2.*c.^5+c.^4)
view([1 1 0]);axis([-3 3 -3 3 -2  5]);  title('$p_4$','interpreter','latex','fontsize',18);

figure
fsurf(@(b,c)b.^6.*c.^2+b.^6-2.*b.^5.*c.^2-b.^5.*c-2.*b.^5-2.*b.^4.*c.^3+9.*b.^4.*c.^2-2.*b.^4.*c+4.*b.^4-2.*b.^3.*c.^4-4.*b.^3.*c.^3 ...
    -8.*b.^3.*c.^2-4.*b.^3.*c-2.*b.^3+b.^2.*c.^6-2.*b.^2.*c.^5+9.*b.^2.*c.^4-8.*b.^2.*c.^3+21.*b.^2.*c.^2-2.*b.^2.*c+b.^2-b.*c.^5- ...
    2.*b.*c.^4-4.*b.*c.^3-2.*b.*c.^2-b.*c+c.^6-2.*c.^5+4.*c.^4-2.*c.^3+c.^2)
view([1 1 0]);
axis([-3 3 -3 3 -2  5]);
title('$\frac{p_3}{2bc}$','interpreter','latex','fontsize',18);

figure
fsurf(@(b,c)b.^6-2.*b.^5+5.*b.^4.*c.^2-2.*b.^4.*c+6.*b.^4-8.*b.^3.*c.^2-4.*b.^3.*c-8.*b.^3+5.*b.^2.*c.^4-8.*b.^2.*c.^3+30.*b.^2.*c.^2 ...
    -8.*b.^2.*c+11.*b.^2-2.*b.*c.^4-4.*b.*c.^3-8.*b.*c.^2-4.*b.*c-2.*b+c.^6-2.*c.^5+6.*c.^4-8.*c.^3+11.*c.^2-2.*c)
view([1 1 0]);axis([-3 3 -3 3 -2  5]);  title('$\frac{p_2}{b^2c^2}$','interpreter','latex','fontsize',18);

figure
fsurf(@(b,c) b.^4-2.*b.^3+4.*b.^2.*c.^2-2.*b.^2.*c+4.*b.^2-2.*b.*c.^2-b.*c-2.*b+c.^4-2.*c.^3+4.*c.^2-2.*c+1)
view([1 1 0]);axis([-3 3 -3 3 -2  5]);  title('$\frac{p_1}{2b^3c^3}$','interpreter','latex','fontsize',18);

% figure
% fsurf(@(b,c) 2.*b.^2-2.*b+2.*c.^2-2.*c+1)
% view([1 1 0]);axis([-3 3 -3 3 -2  5]);  title('$p_0$','interpreter','latex','fontsize',18);










