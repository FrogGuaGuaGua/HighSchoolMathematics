clc
close all
f = @(x) sin(x);

% 设置参数
x0 = 1;       % 初始值
n_iter = 60;  % 迭代次数

% 计算迭代点
x = zeros(1, n_iter+1);
x(1) = x0;
for k = 1:n_iter
    x(k+1) = f(x(k));
end

% 绘制函数曲线
subplot(1,2,1)
hold on;
x_vals = linspace(-0.5, 3, 500);  
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
plot([-10,100],[0,0],'k-.')
plot([0,0],[-10,100],'k-.')

% title('$f(x)=\ln(1+x)-1$', 'FontSize', 12,'Interpreter','latex');

legend('$y=\sin(x)$', '$y = x$', '迭代路径', 'Interpreter','latex', 'location','northwest','FontSize', 13);
grid off;
box on
% axis equal;
xlim([-0.1, 1.1]);
ylim([-0.1, 1.1]);

subplot(1,2,2)
% title('$a_n$', 'FontSize', 12,'Interpreter','latex');
hold on
box on
plot(1:n_iter,x(1:n_iter),'k.','MarkerSize',10)
fplot(@(x) sqrt(3/(x+2)),'k-','LineWidth', 0.8)
plot([-10,100],[0,0],'k-.')
legend('$a_n$', '$y =\sqrt{\frac{3}{x+2}}$','', 'Interpreter','latex', 'location','northeast','FontSize', 14);

xlim([0, n_iter]);
ylim([-0.1, 1.1]);