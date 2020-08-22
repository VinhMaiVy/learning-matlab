function [top_left, top_right, bottom_left, bottom_right] = corners(C)
    top_left = C(1,1);
    top_right = C(1, size(C(1,:),2));
    bottom_left = C(size(C(:,1),1));
    bottom_right = C(size(C(:,1),1), size(C(1,:),2));
end

% A = rand(5,5);
% [tl, tr, bl, br] =corners(A);