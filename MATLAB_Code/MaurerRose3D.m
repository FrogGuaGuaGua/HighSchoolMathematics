clc
close all

N=360;
vout=VideoWriter('F:\3DÃ«À×¶ûMaurer5.mp4','MPEG-4');
vout.FrameRate=25;
open(vout);

fig=figure;
set(gcf,'unit','centimeters','position',[2,2,36,20])
set(gca,'color','w')
n=1;
% a=1.1;

p=primes(300);

for w1=3:2:9
    for w2=w1-1:w1+5
%    for w2=4
%       for d=1:2:200
        for d=p
            t=(0:1:w1*360)*d*pi/360;
            x=sin(w1*t).*cos(t);
            y=sin(w2*t).*sin(t);
            z=cos(3*t);
            plot3(x,y,z,'k');
            axis equal
%             title(strcat('w1=',num2str(w1),', w2=',num2str(w2),', w3=',num2str(w1+1),', d=',num2str(d)))
            title(strcat('w1=',num2str(w1),', w2=',num2str(w2),', d=',num2str(d)))
%             xlabel('t=(0:1:3600)*d*pi/360;   x=sin(w1*t).*cos(t);   y=sin(w2*t).*sin(t);   z=cos(w3*t);')
            xlabel('t=(0:1:3600)*d*pi/360;   x=sin(w1*t).*cos(t);   y=sin(w2*t).*sin(t);   z=cos(3*t);')            
            ylabel('´ÅÐü¸¡ÇàÍÜßÉßÉßÉ');
%             axis off
%             axis equal
%              axis([-0.52 0.52 -0.02 1.02])
%             imwrite(frame2im(getframe(fig)),strcat('D:\CSDNºÍ×ÔÃ½Ìå\MATLABÃ«À×¶û\',num2str(n),'.jpg'));
            writeVideo(vout,frame2im(getframe(fig)));
            writeVideo(vout,frame2im(getframe(fig)));
            writeVideo(vout,frame2im(getframe(fig)));
            writeVideo(vout,frame2im(getframe(fig)));
            writeVideo(vout,frame2im(getframe(fig)));
%             n=n+1;            
%             pause(0.1);
            clf
        end
    end
end
close all
close(vout)
