% pade approximation
clc
syms x f(x)
% totalStr='';
% f(x)=x/log(x);
f(x)=x*exp(x);
% %  f(x)=cos(x);
%  f(x)=tan(x);
% for n=3:-2:1
%     str='';
%     for m=1:2:3
%         str=[str,'$',latex(pade(f,x,'order',[m n])),'$ & '];
%     end
%     totalStr=[str,'\\ \hline',totalStr];
% end
% totalStr
% totalStr=replace(totalStr,'\,','');
% totalStr=replace(totalStr,'\left','');
% totalStr=replace(totalStr,'\right','')
x_0=-1;
str21=latex(pade(f,x,x_0,'order',[2,1]));
str12=latex(pade(f,x,x_0,'order',[1,2]));
str22=latex(pade(f,x,x_0,'order',[2,2]));
strcat('$ ',str21,'$ & $',str12,'$ & $',str22,'$ ')