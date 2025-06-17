clc
close all
% 定义 x 和 y 的范围
b=10;
x = linspace(-b, b, 100);
y = linspace(-b, b, 100);

% 创建网格
[X, Y] = meshgrid(x, y);

% 计算 z = sin(x) + sin(y)
Z = sin(X) + sin(Y);

% 绘制曲面
figure;
surf(X, Y, Z);
title('$z = \sin(x) + \sin(y)$','Interpreter','latex','FontSize',15);
xlabel('x');
ylabel('y');
zlabel('z');
% colormap('parula'); % 设置颜色映射
shading interp;     % 平滑着色
colorbar;           % 显示颜色条
% grid on;            % 显示网格
axis off