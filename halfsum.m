function summa = halfsum(A)
    summa=0;
    for i=1:size(A,1)
        for j=i:size(A,2)
            summa = summa + A(i,j);
        end
    end
end
          