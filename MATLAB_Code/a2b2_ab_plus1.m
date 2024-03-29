clc
for b=1:10000
    for a=1:b
        k=(a^2+b^2)/(a*b+1);
        if k==fix(k) && a~=b^3 && b~=a^3
            a
            b
            k
        end
    end
end