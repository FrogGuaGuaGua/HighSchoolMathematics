clc
close all
%谢尔宾斯三角形
%给定初始3点
Tripots=rand(3,2);
% Tripots=[0,1;1*sin(2*pi/3),1*cos(2*pi/3);1*sin(4*pi/3),1*cos(4*pi/3)];

%定义SierpinskiTriangle三角形点数
N=2^17;%定义1000个点
SierpinskiTriangle=zeros(N+3,2);
SierpinskiTriangle(1:3,:)=Tripots;
%定义参考点
ReferencePoint=rand(1,2);

for j=1:N
    %选取参考点与随机角点的中点，作为新的参考点
    ReferencePoint=(Tripots(randi([1,3],1),:)+ReferencePoint)/2;
    %记录在SierpinskiTriangle中
    SierpinskiTriangle(3+j,:)=ReferencePoint;
end

scatter(SierpinskiTriangle(:,1),SierpinskiTriangle(:,2),0.1,'filled')
axis off
