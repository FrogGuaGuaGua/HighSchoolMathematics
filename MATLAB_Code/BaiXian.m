clc
close all
syms t
N=360;
vout=VideoWriter('F:\°ÚÏß7.mp4','MPEG-4');
vout.FrameRate=25;
open(vout);

fig=figure;
set(gcf,'unit','centimeters','position',[2,2,22,20])
set(gca,'color','w')
n=1;
% a=1.1;

p=primes(300);
A=6;    
% B=4;
% w3=1;
C=1;
for w1=2:9
    for w2=3:0.3:9
%    for w2=4
       for B=1:0.2:11
           w3=(w1+w2)*2;
%         for d=p
%             t=(0:1:w1*360)*d*pi/360;
%             x=sin(w1*t).*cos(t);
%             y=sin(w2*t).*sin(t);
%             z=cos(3*t);
%             plot3(x,y,z,'k');
%             axis equal
%             title(strcat('w1=',num2str(w1),', w2=',num2str(w2),', w3=',num2str(w1+1),', d=',num2str(d)))
%             fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),'k')
            fimplicit(@(x,y) x.^2+y.^2-A^2,'linewidth',1.5);
            hold on
            fplot(A*cos(w1*t)+B*cos(w2*t),A*sin(w1*t)+B*sin(w2*t),[0 300],'k','Meshdensity',1000)
%             fplot(A*cos(w1*t)+B*cos(w2*t)+C*cos(w3*t),A*sin(w1*t)+B*sin(w2*t)+C*sin(w3*t),[0 300],'k','Meshdensity',1000)
%             axis equal
          axis([-(A+B+1) (A+B+1) -(A+B+1) (A+B+1)])
          axis square
%             set(gca,'position',[0.1,0.1,0.9,0.9])
            
            title(strcat('A=',num2str(A),', B=',num2str(B),', w1=',num2str(w1),', w2=',num2str(w2)))
%             title(strcat('A=',num2str(A),', B=',num2str(B), ', C=',num2str(C),...
%                 ', w1=',num2str(w1),', w2=',num2str(w2),', w3=2*(w1+w2)=',num2str(w3)))
            xlabel('t=0:300;   x=A*cos(w1*t)+B*cos(w2*t);   y=A*sin(w1*t)+B*sin(w2*t);')            
%             xlabel('t=0:300;   x=A*cos(w1*t)+B*cos(w2*t)+C*cos(w3*t);   y=A*sin(w1*t)+B*sin(w2*t)+C*sin(w3*t);')
            ylabel('´ÅÐü¸¡ÇàÍÜßÉßÉßÉ');
%             axis off
%             axis equal
%              axis([-0.52 0.52 -0.02 1.02])
%             imwrite(frame2im(getframe(fig)),strcat('D:\CSDNºÍ×ÔÃ½Ìå\MATLABÃ«À×¶û\',num2str(n),'.jpg'));
            writeVideo(vout,frame2im(getframe(fig)));
%             writeVideo(vout,frame2im(getframe(fig)));
%             writeVideo(vout,frame2im(getframe(fig)));
%             writeVideo(vout,frame2im(getframe(fig)));
%             writeVideo(vout,frame2im(getframe(fig)));
%             n=n+1;            
%              pause(0.2);
            clf
        end
    end
end
close all
close(vout)
% system('shutdown -s -t 5')
system('rundll32.exe powrprof.dll,SetSuspendState 0,1,0')
