% 回文数猜想与3n+1猜想混合
clc
n=879;
% for N=10:30
    % n=N
    n_=ReverseOrder(n)
    k=1;
    while(n~=n_ && k<20)
        k=k+1;
        sum=n+n_

        if(mod(sum,2)==1)
            disp("odd");
            n=(sum*3+1)/2
        else
            disp("even");
            n=sum/2
        end
        n_=ReverseOrder(n)
    end
    disp("---");
% end

function s=ReverseOrder(n)
 stringn=num2str(n);
 stringn=fliplr(stringn);
 s=str2double(stringn);
end