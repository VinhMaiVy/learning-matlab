function output = blur(input, w)

    nb_rows = size(input,1);
    nb_columns = size(input,2);
    
    extended_input(1:nb_rows+(w*2), 1:nb_columns+(w*2)) = NaN;
    extended_input(w+1:(nb_rows+w), w+1:(nb_columns+w)) = input;
    output = zeros(nb_rows, nb_columns);
    
    for r=w+1:nb_rows+w
        for c=w+1:nb_columns+w
            output(r-w,c-w) = mean(extended_input(r-w:r+w, c-w:c+w), 'all', 'omitnan');
        end
    end
    
    output = uint8(output);
    
end