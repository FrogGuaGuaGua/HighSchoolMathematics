% Marden马登定理
% clear all
clc
close all
syms z

N=1440;
% vid=1;
vout=VideoWriter(strcat('F:\pr\Marden马登定理\Marden_',num2str(vid),'.mp4'),'MPEG-4');

vid=vid+1;
vout.FrameRate=25;
open(vout);

fig=figure;
set(gcf,'unit','centimeters','position',[2,2,36,20])
set(gca,'color','w')
 axis equal
 axis off

Q=(1:N)/N*2*pi;

x1= 1*cos(1*Q);
y1=-2-2*sin(2*Q);
Quxian1=[x1;y1];
% plot(Quxian1(1,:),Quxian1(2,:)); 
hold on

x2= 2+3*cos(2*Q);
y2=5+1*sin(2*Q);
Quxian2=[x2;y2];
Quxian2=[cos(pi/12),sin(pi/12);-sin(pi/12),cos(pi/12)]*Quxian2;
% plot(Quxian2(1,:),Quxian2(2,:)); 

x3=6+ 2*cos(3*Q);
y3=2*sin(2*Q);
Quxian3=[x3;y3];
% plot(Quxian3(1,:),Quxian3(2,:)); 
f1(z)=z;


for n=1:N
    hold on
% plot(Quxian1(1,:),Quxian1(2,:));     
% plot(Quxian2(1,:),Quxian2(2,:)); 
% plot(Quxian3(1,:),Quxian3(2,:)); 
index=mod(n,size(x1,2))+1;
z1=Quxian1(1,index)+Quxian1(2,index)*1i;
index=mod(n,size(x2,2))+1;
z2=Quxian2(1,index)+Quxian2(2,index)*1i;
index=mod(n,size(x3,2))+1;
z3=Quxian3(1,index)+Quxian3(2,index)*1i;

% z1=1+2*1i;
% z2=3+3*1i;
% z3=6+1*1i;

% f(z)=(z-z1)*(z-z2)*(z-z3);
% f1(z)=diff(f,z);
f1(z)=3*z.^2-2*(z1+z2+z3)*z+(z1*z2+z1*z3+z2*z3);
zz=double(solve(f1,z));
% subplot(1,2,1)
% hold on
plot( real(zz(1)),imag(zz(1)),'k.','markersize',16) %画两个焦点
plot( real(zz(2)),imag(zz(2)),'k.','markersize',16)
plot([real(zz(1)) real(zz(2))],[imag(zz(1)) imag(zz(2))],'r','linewidth',1.5) %连接两个焦点

plot( real((z1+z2)/2),imag((z1+z2)/2),'k.','markersize',12) %画三边中点
plot( real((z1+z3)/2),imag((z1+z3)/2),'k.','markersize',12)
plot( real((z2+z3)/2),imag((z2+z3)/2),'k.','markersize',12)

plot([real((z1+z2)/2) real(z3)],[imag((z1+z2)/2) imag(z3)],'k','linewidth',0.8) % 画3条中线
plot([real((z1+z3)/2) real(z2)],[imag((z1+z3)/2) imag(z2)],'k','linewidth',0.8)
plot([real((z3+z2)/2) real(z1)],[imag((z3+z2)/2) imag(z1)],'k','linewidth',0.8)

plot([real(z1) real(z2) real(z3) real(z1)],[imag(z1) imag(z2) imag(z3) imag(z1)],'k','linewidth',1.2)
a=( abs((z1+z2)/2-zz(1)) + abs((z1+z2)/2-zz(2)) )/2;
fimplicit(@(x,y) abs(x+y*1i-zz(1))+abs(x+y*1i-zz(2))-2*a,'k','linewidth',1.2) %画椭圆
% title('Marden(马登)定理         磁悬浮青蛙呱呱呱')
 axis equal
 axis off
% axis([0.8 6.2 0.8 3.2]);
image=frame2im(getframe(fig));
            writeVideo(vout,image);
            writeVideo(vout,image);
%             writeVideo(vout,image);
%             writeVideo(vout,image);
%             writeVideo(vout,image);
%             n=n+1;            
%             pause(0.5);
            clf    
end   
close all
close(vout)
%%%%%%%%
% z1=1+1*1i;
% z2=2+6*1i;
% z3=6+1*1i;
% syms z
% f(z)=(z-z1)*(z-z2)*(z-z3);
% f1(z)=diff(f,z);
% zz=double(solve(f1,z)); % 导数零点，就是焦点
% subplot(1,2,2)
% hold on
% plot( real(zz(1)),imag(zz(1)),'k.','markersize',16) %画两个焦点
% plot( real(zz(2)),imag(zz(2)),'k.','markersize',16)
% plot([real(zz(1)) real(zz(2))],[imag(zz(1)) imag(zz(2))],'r','linewidth',1.5) %连接两个焦点
% 
% plot( real((z1+z2)/2),imag((z1+z2)/2),'k.','markersize',12) %画三边中点
% plot( real((z1+z3)/2),imag((z1+z3)/2),'k.','markersize',12)
% plot( real((z2+z3)/2),imag((z2+z3)/2),'k.','markersize',12)
% 
% plot([real((z1+z2)/2) real(z3)],[imag((z1+z2)/2) imag(z3)],'k','linewidth',0.8)
% plot([real((z1+z3)/2) real(z2)],[imag((z1+z3)/2) imag(z2)],'k','linewidth',0.8)
% plot([real((z3+z2)/2) real(z1)],[imag((z3+z2)/2) imag(z1)],'k','linewidth',0.8)
% 
% plot([real(z1) real(z2) real(z3) real(z1)],[imag(z1) imag(z2) imag(z3) imag(z1)],'k','linewidth',1.2)
% a=( abs((z1+z2)/2-zz(1)) + abs((z1+z2)/2-zz(2)) )/2;
% fimplicit(@(x,y) abs(x+y*1i-zz(1))+abs(x+y*1i-zz(2))-2*a,'k','linewidth',1.2)
% % axis([0.8 6.2 0.8 3.2]);
%  axis equal
%  plot(-1,-3.5)
%  plot(8,9)
%   axis off
