% Degen 八平方和恒等式, Degen's Eight-Square Identity, https://mathworld.wolfram.com/DegensEight-SquareIdentity.html
clc
for k=1:20
    verify_eight_square_identity()
end

function verify_eight_square_identity()
    % 生成随机测试数据
    a = randn(8,1);
    b = randn(8,1);
    
    % 计算左边
    left_side = sum(a.^2) * sum(b.^2);
    
    % 计算右边各项
    c1 = a(1)*b(1) - a(2)*b(2) - a(3)*b(3) - a(4)*b(4) - a(5)*b(5) - a(6)*b(6) - a(7)*b(7) - a(8)*b(8);
    c2 = a(1)*b(2) + a(2)*b(1) + a(3)*b(4) - a(4)*b(3) + a(5)*b(6) - a(6)*b(5) - a(7)*b(8) + a(8)*b(7);
    c3 = a(1)*b(3) - a(2)*b(4) + a(3)*b(1) + a(4)*b(2) + a(5)*b(7) + a(6)*b(8) - a(7)*b(5) - a(8)*b(6);
    c4 = a(1)*b(4) + a(2)*b(3) - a(3)*b(2) + a(4)*b(1) + a(5)*b(8) - a(6)*b(7) + a(7)*b(6) - a(8)*b(5);
    c5 = a(1)*b(5) - a(2)*b(6) - a(3)*b(7) - a(4)*b(8) + a(5)*b(1) + a(6)*b(2) + a(7)*b(3) + a(8)*b(4);
    c6 = a(1)*b(6) + a(2)*b(5) - a(3)*b(8) + a(4)*b(7) - a(5)*b(2) + a(6)*b(1) - a(7)*b(4) + a(8)*b(3);
    c7 = a(1)*b(7) + a(2)*b(8) + a(3)*b(5) - a(4)*b(6) - a(5)*b(3) + a(6)*b(4) + a(7)*b(1) - a(8)*b(2);
    c8 = a(1)*b(8) - a(2)*b(7) + a(3)*b(6) + a(4)*b(5) - a(5)*b(4) - a(6)*b(3) + a(7)*b(2) + a(8)*b(1);
    
    % 计算右边总和
    right_side = c1^2 + c2^2 + c3^2 + c4^2 + c5^2 + c6^2 + c7^2 + c8^2;
    
    % 显示结果
    % fprintf('左边计算结果: %.15f\n', left_side);
    % fprintf('右边计算结果: %.15f\n', right_side);
    fprintf('差值: %.15e\n', abs(left_side - right_side));
    
    % 验证
    if abs(left_side - right_side) < 1e-12
        disp('验证通过：左边等于右边');
    else
        disp('验证失败：左边不等于右边');
    end
end