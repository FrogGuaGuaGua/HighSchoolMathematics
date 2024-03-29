clc
close all

maxIterations = 500;
gridSize = 2000;
% xlim = [-1.6, 1.6];
xlim = [-2.5, 2.5];
ylim = [-1.6, 1.6];

%%%% Setup
t = tic();
x = gpuArray.linspace(xlim(1), xlim(2), gridSize);
y = gpuArray.linspace(ylim(1), ylim(2), gridSize);
[xGrid,yGrid] = meshgrid(x, y);

vout=VideoWriter(strcat('F:\pr\·ÖÐÎ\test',num2str(vid),'.mp4'),'MPEG-4');
vid=vid+1;
vout.FrameRate=25;
open(vout);

fig=figure;
set(gcf,'unit','centimeters','position',[2,2,36,20])
set(gca,'color','w')


for a=0.1:0.1:6.1
% for a=2.4
    count = arrayfun(@MandelbrotSet, ...
                  xGrid, yGrid, a,maxIterations);
    count = gather(count);
    imagesc(x, y, count)
    colormap(summer)
    axis off
    axis equal
%       title(strcat('$z_{n+1}=\zeta(',num2str(a),'z_n)+C$'),'interpreter','latex','fontsize',20)
%       title(strcat('$z_{n+1}=\sqrt{\tan(',num2str(a),'z)+1}+C$'),'interpreter','latex','fontsize',20)
%       title(strcat('$z_{n+1}=z^{-a}\tan(az_n)+C,\quad a=$',num2str(a)),'interpreter','latex','fontsize',20)
%     title(strcat('$z_{n+1}=\frac{2}{\tan(',num2str(a),'z_n)(z_n-1)}+C$'),'interpreter','latex','fontsize',20)
     xlabel('´ÅÐü¸¡ÇàÍÜßÉßÉßÉ','FontSize',12);
    
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
%             n=n+1;            
%          pause(0.2);
%     clf
    drawnow
end
close all
close(vout)

function count = MandelbrotSet(x0,y0,a,maxIterations)
z0 = complex(x0,y0);
z = z0;
count = 1;
while (count <= maxIterations) && (abs(z) <= 2)
    count = count + 1;
%      z = exp(a*z)+log(a*z)+ z0;
%      z=zeta(a*z)+z0;
%        z=sum((1:1000).^(-a*z))+z0; 
%          z=z^(-a)*tan(z)+z0;
        z=0.5*log(sin(a*z))+z0;
%         z=sqrt(tan(z*a)+1)+z0;
end
count = log(count);
end

