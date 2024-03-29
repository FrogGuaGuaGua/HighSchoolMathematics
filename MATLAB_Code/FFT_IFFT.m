clc
str='9265358979';
len=length(str);
% a=zeros(2*len,1);
% % a=zeros(len,1);
% for n=1:len
%  a(n)=str2double(str(n));
% end
% fa=fft(a)
% fa2=fa.^2
% ia=ifft(fa2);
% int32(ia)
% s=0;
% for n=1:2*len
%  s=ia(n)*10^(2*len-n-1)+s;
% end
% s
% 85846877009735922441
% s-85846877009735922441
%%%%%%%%%%%%%%%%%%%%
a=zeros(2*len-1,1);
% a=zeros(len,1);
for n=1:len
 a(n)=str2double(str(n));
end
fa=fft(a)
fa2=fa.^2
ia=ifft(fa2);
int32(ia)
s=0;
for n=1:2*len-1
 s=ia(n)*10^(2*len-n-1)+s;
end
s
85846877009735922441
s-85846877009735922441
