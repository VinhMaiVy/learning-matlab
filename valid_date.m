function valid = valid_date(year, month, day)

    if nargin ~= 3
        error('must have 3 input arguments: year, month, and day');
    end
        
    if (month > 12) || (day > 31) || (~isscalar(year) || year < 1 || year ~= fix(year)) || (~isscalar(month) || month < 1 || month ~= fix(month)) || (~isscalar(day) || day < 1 || day ~= fix(day))
        valid = false;
    else
        if ismember(month, [4, 6, 9, 11]) && (day > 30)
            valid = false;  % Months with 30 days
        else
            if (month == 2) && (year/4 == fix(year/4)) && ((year/100 ~= fix(year/100)) || (year/400 == fix(year/400))) && (day <=29)
                    valid = true; %February of Leap year can have 29 days                
            else % Months with 31 days or non-leap year
                if (month == 2) && (day > 28) % Normal February
                    valid = false;
                else
                    valid = true;                     
                end
            end
        end
    end
end
