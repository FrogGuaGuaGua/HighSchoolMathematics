% 研究任意多边形的面积公式
clc
syms x1 y1 x2 y2 x3 y3 x4 y4
s1=expand(det([x1-x4,y1-y4;x2-x4,y2-y4])+det([x2-x4,y2-y4;x3-x4,y3-y4]))

s2=expand(det([x1,y1;x2,y2])+det([x2,y2;x3,y3])+det([x3,y3;x4,y4])+det([x4,y4;x1,y1]))

s1-s2