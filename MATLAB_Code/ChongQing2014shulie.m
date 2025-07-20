clc
close all
f = @(x) sqrt(x.^2-2*x+2)-1;

% 设置参数
x0 = 1;       % 初始值
n_iter = 20;  % 迭代次数

% 计算迭代点
x = zeros(1, n_iter+1);
x(1) = x0;
for k = 1:n_iter
    x(k+1) = f(x(k));
end

% 绘制函数曲线
subplot(1,2,1)
hold on;
x_vals = linspace(-1, 3, 500);  
plot(x_vals, f(x_vals), 'k-', 'LineWidth', 1.5);
plot(x_vals, x_vals, 'k-', 'LineWidth', 0.8);  % 绘制y=x线


plot([x(1), x(1)], [-10, x(2)], 'k:', 'LineWidth', 1.2);
plot([x(1), x(2)], [x(2), x(2)], 'k:', 'LineWidth', 1.2);

for k = 2:n_iter
    % 垂直线
    plot([x(k), x(k)], [x(k), x(k+1)], 'k:', 'LineWidth', 1.2);
    % 水平线
    plot([x(k), x(k+1)], [x(k+1), x(k+1)], 'k:', 'LineWidth', 1.2);
end


title('$f(x)=\sqrt{x^2-2x+2}-1$', 'FontSize', 12,'Interpreter','latex');

legend('$y=f(x)$', '$y = x$', '迭代路径', 'Interpreter','latex', 'location','northwest');
grid off;
box on
% axis equal;
xlim([-0.1, 1.5]);
ylim([-0.1, 1.1]);

subplot(1,2,2)
title('$a_n$', 'FontSize', 12,'Interpreter','latex');
hold on
box on
plot(1:15,x(1:15),'k.','MarkerSize',10)
plot([-10,100],[0.25,0.25],'k-')

xlim([0, 16]);
ylim([-0.1, 1.1]);