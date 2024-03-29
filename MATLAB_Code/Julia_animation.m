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

vout=VideoWriter(strcat('F:\pr\Julia·ÖÐÎ\Julia_',num2str(vid),'.mp4'),'MPEG-4');
vid=vid+1;
vout.FrameRate=25;
open(vout);

fig=figure;
set(gcf,'unit','centimeters','position',[2,2,36,20])
set(gca,'color','w')


for n=8:8
    for a=0.25:0.01:0.8
%           b=a+0.3;
          a=0.43 ; 
          b=sqrt(1-a^2)/1.5;
%         for b=a-0.3:0.1:a+0.3
%             b=rand;
    count = arrayfun(@MandelbrotSet, ...
                  xGrid, yGrid,n, a+b*1i,maxIterations);
    count = gather(count);
    imagesc(x, y, count)
    colormap(summer)
    axis off
    axis equal
%       title(strcat('$z_{n+1}=\zeta(',num2str(a),'z_n)+C$'),'interpreter','latex','fontsize',20)
%       title(strcat('$z_{n+1}=\sqrt{\tan(',num2str(a),'z)+1}+C$'),'interpreter','latex','fontsize',20)
%       title(strcat('$z_{n+1}=z^{-a}\tan(az_n)+C,\quad a=$',num2str(a)),'interpreter','latex','fontsize',20)
%     title(strcat('$z_{n+1}=z_n^{',num2str(n),'}+(',num2str(a+b*1i),')$'),'interpreter','latex','fontsize',20)
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
%         end
    end
end
close all
close(vout)
% system('shutdown -s -t 5')
% system('rundll32.exe powrprof.dll,SetSuspendState 0,1,0')

function count = MandelbrotSet(x0,y0,n,a,maxIterations)
z0 = complex(x0,y0);
z = z0;
count = 1;
while (count <= maxIterations) && (abs(z) <= 2)
    count = count + 1;
    z=z^n+a;
end
count = log(count);
end



