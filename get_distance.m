function distance = get_distance(origin, destination)

    [num,txt] = xlsread('Distances.xlsx');
    
    list_of_origin = txt(:,1);
    list_of_destination = txt(1,:)'; %Transpose column to row
    
    o = find(strcmp(list_of_origin,origin));
    d = find(strcmp(list_of_destination,destination));
    
    if (size(o,1)>0) && (size(d,1)>0)
        distance = num(o-1,d-1);
    else
        distance = -1;
    end
    
end