clc
close all

N=360;
% vout=VideoWriter('F:\Ã«À×¶ûMaurer1.mp4','MPEG-4');
% vout.FrameRate=25;
% open(vout);

fig=figure;
set(gcf,'unit','centimeters','position',[2,2,36,20])
set(gca,'color','w')
n=1;
% a=1.1;

p=primes(300);

for w1=5
%     for w2=w1:w1+5
   for w2=4
%       for d=1:2:200
        for d=17
            t=(0:1:w1*360)*d*pi/360;
            x=sin(w1*t).*cos(t);
            y=sin(w2*t).*sin(t);
            plot(x,y,'k');
            axis equal
            title(strcat('w1=',num2str(w1),', w2=',num2str(w2),', d=',num2str(d)))
            xlabel('t=(0:1:3600)*d*pi/360;   x=sin(w1*t).*cos(t);   y=sin(w2*t).*sin(t);')
%             axis off
%             axis equal
%              axis([-0.52 0.52 -0.02 1.02])
             imwrite(frame2im(getframe(fig)),strcat('D:\CSDNºÍ×ÔÃ½Ìå\MATLABÃ«À×¶û\',num2str(n),'.jpg'));
            writeVideo(vout,frame2im(getframe(fig)));
            writeVideo(vout,frame2im(getframe(fig)));
            writeVideo(vout,frame2im(getframe(fig)));
            writeVideo(vout,frame2im(getframe(fig)));
            writeVideo(vout,frame2im(getframe(fig)));
%             n=n+1;            
%             pause(0.15);
            clf
        end
    end
end
close all
close(vout)
