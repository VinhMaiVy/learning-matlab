function M = sparse2matrix(c)
    M_size = c{1};
    M_default = c{2};
    M(1:M_size(1), 1:M_size(2)) = M_default;
    for i=3:length(c)
        M_element_row = c{i}(1);
        M_element_column = c{i}(2);
        M_element_value = c{i}(3);
        M(M_element_row, M_element_column) = M_element_value;
    end
end