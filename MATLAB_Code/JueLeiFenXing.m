clc
close all

a=[0,0.90,0.2,-0.15];
b=[0,0.04,-0.26,0.28];
c=[0,-0.04,0.23,0.26];
d=[0.16,0.85,0.22,0.24];
e=[0,0,0,0];
% e=[0.5,0.075,0.4,0.575];
f=[0,1.6,1.6,0.44];
% f=[0,0.18,0.045,-0.086];
p=[0.01,0.85,0.07,0.07];

n=100000;%至少10万个点才能组成一幅图
randomp=rand(n,1); %随机数用于每一步做概率系数

vout=VideoWriter(strcat('F:\pr\蕨类分形\蕨类_',num2str(vid),'.mp4'),'MPEG-4');
vid=vid+1;
vout.FrameRate=25;
open(vout);
fig=figure;
set(gcf,'unit','centimeters','position',[2,2,36,20])
set(gca,'color','w')

for pk=1:60
    pk
%     p=rand(1,4);
%     p=p/norm(p);
%     p(1)=p(1) + pk*0.0005;
%     p(2)=p(2) - pk*0.0002;
%     p(3)=p(3) + pk*0.0001;
%     p(4)=p(4) + pk*0.0001;
    a(2)=a(2) - pk*0.0003;
    a(3)=a(3) - pk*0.00005;
    a(4)=a(4) + pk*0.00005;
    x=zeros(n,1); y=zeros(n,1); %给x,y预设为n个0,先把空间占上。
    x(1)=0; y(1)=0;
    
    for k=2:n %按规则计算下一点坐标
        prob=randomp(k); %取概率

        if prob<p(1) %概率小于p里面第1数的点按照下面的规则进行仿射变换
        x(k)=a(1)*x(k-1)+b(1)*y(k-1)+e(1);
        y(k)=c(1)*x(k-1)+d(1)*y(k-1)+f(1);
        elseif prob<p(1)+p(2) %概率小于p里面前2个数的和的点按照下面的规则进行仿射变换
        x(k)=a(2)*x(k-1)+b(2)*y(k-1)+e(2);
        y(k)=c(2)*x(k-1)+d(2)*y(k-1)+f(2);
        elseif prob<p(1)+p(2)+p(3)%概率小于p里面前3个数的和的点按照下面的规则进行仿射变换
        x(k)=a(3)*x(k-1)+b(3)*y(k-1)+e(3);
        y(k)=c(3)*x(k-1)+d(3)*y(k-1)+f(3);
        else%概率小于p里面前4个数的和的点按照下面的规则进行仿射变换
        x(k)=a(4)*x(k-1)+b(4)*y(k-1)+e(4);
        y(k)=c(4)*x(k-1)+d(4)*y(k-1)+f(4);
        end
    end
    
    plot(x(1:n),y(1:n),'k.','markersize',1) ;%仿射变换完成以后把这些点打印到屏幕上。
    axis equal
    axis off
%     title(['概率 p=',num2str(p)])   
    title(['a=',num2str(a)]) 
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    writeVideo(vout,frame2im(getframe(fig)));
    
    clf
end
close all
close(vout)

% title('磁悬浮青蛙呱呱呱','FontSize',12);

% 每一组[a,b,e,c,d,f]能把x0,y0代入方程后迭代n次，射到n个地方。其中a,b,c,d
% 负责缩小和旋转，e,f负责平移。a，b，c，d必须是0-1之间的数。要不然就可能把
% xn射到无穷远。e,f可以大于1。这样的变换叫仿射变换。
% 一组[a,b,e,c,d,f]通常无法形成分形图。引入一个p是概率，决定射到这一组的点
% 占全部点的百分比。我们以4组为例：