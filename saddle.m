function indices = saddle(M)
    indices = [];
    
    max_in_rows = max(M');
    min_in_columns = min(M); 
    
    if (size(M,1) == 1)
        max_rc = max(size(M,1), size(M,2));
        max_in_rows(1:max_rc) = max_in_rows;
        min_in_columns(1:max_rc) = Inf;
    end
    
    if (size(M,2) == 1)
        max_rc = max(size(M,1), size(M,2));
        max_in_rows(1:max_rc) = -Inf;
        min_in_columns(1:max_rc) = min_in_columns;
    end
    
    for r = 1:size(M,1)
        for c = 1:size(M,2)                                   
            if (M(r,c) >= max_in_rows(r)) && (M(r,c) <= min_in_columns(c))
                indices = [indices ; [r,c]];
            end
        end
    end
end