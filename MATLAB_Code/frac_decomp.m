
function frac_decomp(num_input,den_input)
% Partial-Fraction Decomposition
% Similiar as the function 'residue',which is as a part of MATLAB.
% But frac_decomp displays the whole decomposed fraction, and the input 
% style is a little more than that of residue.
% 
% Examples??
%   (1) For the fraction bellow??
%               s+2
%   F(s) = ----------------
%            s(s+1)^2(s+3)
% Input??
%      >> num_input = [1 2];
%      >> den_input = [1 0;1 1;1 1;1 3];
%      >> frac_decomp(num_input,den_input)
% 
% Result is??
% roots and counts:
% [  0,  1]
% [ -3,  1]
% [ -1,  2]
%  
% symbolic Expression:
%  
%                                   1. s + 2.
%                              --------------------
%                                                 2
%                              s (s + 3.) (s + 1.)
% Final Expression:
%  
%                       0.667   0.0833     0.500     0.750
%                       ----- + ------ - --------- - ------
%                         s     s + 3.           2   s + 1.
%                                        (s + 1.)
% 
%   (2) For the following fraction??
%                    1
%    F(s) =  ------------------
%             (s+1)^2(s+2s+2)
% 
% Input??
%   >> num_input = [1];
%   >> den_input = [0 1 1;0 1 1;1 2 2];
%   >> frac_decomp(num_input,den_input)
% 
% Results is: 
% roots and counts:
% [ -1+i,    1]
% [ -1-i,    1]
% [   -1,    2]
%  
% symbolic Expression:
%  
%                                       1.
%                    -----------------------------------------
%                                                            2
%                    (s + 1. - 1. I) (s + 1. + 1. I) (s + 1.)
% Final Expression:
%  
%                    0. - 0.500 I    0. + 0.500 I    1.00 - 0. I
%                  - ------------- - ------------- + -----------
%                    s + 1. - 1. I   s + 1. + 1. I            2
%                                                     (s + 1.)
% 
%  (3) For the following fraction: 
%                  -4 s + 8
%               ---------------
%               2 s^2 + 6 s + 8
% 
% Input:
%               >> b = [-4 8];
%               >> a = [2 6 8];
%               >> frac_decomp(b,a)
% 
% Result:
% roots and count:
% [ -3/2+1/2*i*7^(1/2),                  1]
% [ -3/2-1/2*i*7^(1/2),                  1]
%  
% symbolic Expression:
%  
%                                   -2. s + 4.
%                     ---------------------------------------
%                     (s + 1.50 - 1.32 I) (s + 1.50 + 1.32 I)
% Final Expression:
%  
%                         1.00 + 2.65 I       1.00 - 2.65 I
%                     - ----------------- - -----------------
%                       s + 1.50 - 1.32 I   s + 1.50 + 1.32 I
% Author: xianfa110
% http://blog.sina.com.cn/xianfa110
% 
% clear;clc
if(nargin<2)
	errordlg('Not enough input arguments given.');
	return
end
[mn,nn] = size(num_input);
[md,nd] = size(den_input);
% numerator&denominator should be correctly input
if nn < 1 || nd <= 1
    errordlg('Input error!');
    return;
end
num = 1;
den = 1;
% convert numerator&denominator to polynomial vector
for i = 1:mn
    num = conv(num,num_input(i,:));
end
for i = 1:md
    den = conv(den,den_input(i,:));
end
% 
i = find(den ~= 0);
den = den(i(1):length(den));
% the following code is added to deal with the case that the first element
% of denominator is not 1.
if den(1) ~= 1
    num = num./den(1);
    den = den./den(1);
end
% ---------------------
% % display the transfer function
% tf(num,den)
% 
i = find(num ~= 0);
num = num(i(1):length(num));
% compute the eigenvalues
n = length(den) - 1;
A = diag(ones(n-1,1),-1);
A(1,:) = -den(2:n+1)./den(1);
A = sym(A,'d');
p = eig(A);
% compute the number of each eigenvalue,and save in matrix 'index'
np = length(p);
x = p(1)*ones(np,1);
xe = x - p;
% to determin whether the eigenvalues are equal.
xe = double(xe);
n = find(abs(xe) <= 1e-5);
index(1,1) = p(1);
index(1,2) = length(n);
m = 2;
if length(n) > 1
    tmp = n(2:length(n));
else
    tmp = [];
end
for i = 2:np
    if length(tmp) >= 1
        if all(i*ones(length(tmp),1)-tmp(1:length(tmp)))
            x = p(i)*ones(np,1);
            xe = x - p;
            xe = double(xe);
            n = find(abs(xe) <= 1e-5);
            index(m,1) = p(i);
            index(m,2) = length(n);
            m = m+1;
            if length(n) > 1
                tmp = [tmp,n(2:length(n))];
            end
        end
    else
        x = p(i)*ones(np,1);
        xe = x - p;
        xe = double(xe);
        n = find(abs(xe) <= 1e-5);
        index(m,1) = p(i);
        index(m,2) = length(n);
        m = m+1;
        if length(n) > 1
            tmp = [tmp,n(2:length(n))];
        end
    end
end
disp('roots and count:')
disp(index);
% 
n_sym = sym(num);
n_sym = vpa(n_sym,3);
p_sym = index(:,1);
p_sym = vpa(p_sym,3);
num_sym = sym('0');
den_sym = sym('1');
% Expression of numerator
for i = 1:length(n_sym)
    num_sym = num_sym + sym(n_sym(i))*'s'^sym(length(n_sym)-i);
end
% Expression of denominator
for i = 1:length(p_sym)
    den_sym = den_sym*('s'-p_sym(i))^index(i,2);
end
% 
F = num_sym/den_sym;
disp('symbolic Expression:')
pretty(F)
[m,~] = size(index);
n = max(double(index(:,2)));
% Matrix 'C' is used to save the Coefficient of each element of the
% fraction
C = sym(9999*ones(m,n));
% Partial-Fraction Decomposition Algorithm
for i = 1:m
    for j = 1:double(index(i,2))
        if j == 1
            c_temp = ('s'-p_sym(i))^index(i,2)*F;
        else
            c_temp = diff(c_temp)/sym((j-1));
        end
        c_temp = simplify(c_temp);
        C(i,j) = c_temp;
    end
end
F_fd = sym(0);
for i = 1:m
    for j = 1:double(index(i,2))
        if C(i,j)~=sym(9999)
            numb = index(i,1);
            C(i,j) = subs(C(i,j),'s',numb); % replays 's' with eigenvalue
            C(i,j) = vpa(C(i,j),3);
            if j == 1    
                F_fd = F_fd + C(i,j)/('s'-p_sym(i))^sym(index(i,2));
            else
                F_fd = F_fd + C(i,j)/('s'-p_sym(i))^sym(n-j+1);
            end
        end
    end
end
disp('Final Expression:')
pretty(F_fd)
