clc
% m=sqrt(6)/3;
m=1/sqrt(10);
% factor(x^2+y^2-(x+y)^2/m^2-1-x^2*y^2)
for x=-1000:1000
    for y=-1000:1000
        if abs(x^2+y^2-(x+y)^2/m^2+x+x*y^2)<1e-8 
%         if abs(x^2+y^2-(x+y)^2/m^2+1+x^2*y^2)<1e-8
            x
            y
        end
    end
end