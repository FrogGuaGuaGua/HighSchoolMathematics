% 绘制网格
close all
h = figure;
set(gcf,'unit','centimeters','position',[2,0,40,32])
ax = axes('Parent',h);      % 以h为父对象框架下，创建坐标，并且该坐标成为当前坐标
                        % 后续 plot 等绘图函数将以当前坐标为目标进行填充
ax.YAxis.Visible = 'off';  % 设置y轴不可见
ax.XAxis.Visible = 'off';  % 默认属性 on 表明可见
axis equal
% axis off
axis([-56 56 -46 46])
grid minor
% grid on
set(gca,'minorgridcolor','k','minorGridalpha',0.5)