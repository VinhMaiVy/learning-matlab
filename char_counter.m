function charnum = char_counter(fname, character)
    
    if (character < 32) || (character > 126)
        charnum = -1;
        return;
    end
    
    fid = fopen(fname, 'rt');    
    if (fid < 0)
      charnum = -1;
      return;
    end
    
    charnum = 0;
    a_line = fgets(fid);
    while ischar(a_line)
        for i = 1:length(a_line)
            if (a_line(i) == character)
                charnum = charnum+1;
            end
        end
        a_line = fgets(fid);
    end

    fclose(fid);
    
end