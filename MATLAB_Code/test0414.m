close all
z=cplxgrid(200);
view(-37.5,30);
cplxroot(2,100);
hold on
% cplxroot(2,10);
% shading interp
shading flat
% shading texturemap
% shading none
% shading gouraud
% cplxmap
% colormap(autumn)
colormap(winter)
% colormap(summer)
% colormap(hot)
% colormap(prism)
% colormap(flag)
% colormap(pink)
axis off

%%
z=cplxgrid(50);
w=log(z+eps*(abs(z)==0));
for k=0:3
    subplot(2,2,k+1);
    w=w+1i*2*pi;
    surf(real(z),imag(z),real(z),imag(w));
    caxis([0,8*pi])
    title('lnz')
end

%%
close all
z=cplxgrid(100);
w=log(z);
for k=0:3
    w=w+1i*2*pi;
    surf(real(z),imag(z),imag(w),real(w));
    hold on
%     title('lnz')
end
view(-75,30)
shading interp
% colormap(autumn)
% colormap(winter)
% colormap(summer)
% colormap(hot)
% colormap(gray)
colormap(jet)
% colormap(pink)


