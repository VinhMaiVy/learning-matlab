function [summa, index] = max_sum(v,n)
    summa = -Inf;
    index = -1;
    for i = 1:(length(v)-n+1)
            sum_current = sum(v(i:i+n-1));                                
            if (sum_current > summa)
                summa = sum_current;
                index = i;
            elseif ((sum_current == summa) && (index == -1))
                summa = sum_current;
                index = i-1;
            end
            
            fprintf('sum_curr=%d, summa =%d, i=%d\n', sum_current, summa, i);            
    end
    if summa == -Inf
        summa = 0;
    end
end