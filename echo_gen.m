function output = echo_gen(input, f, delay, amp)
    
    points_added = round(delay*f);
    zero_points = zeros(points_added,1);
    amp_points = [zero_points; input]*amp;
    
    output = [input; zero_points];
    output = output+amp_points;
    max_point = max(abs(output));
    if max_point > 1
        output = output/max_point;
    end
    
end