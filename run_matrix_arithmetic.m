A = [1:5; 6:10; 11:15; 16:20];
result_r1(1,1:size(A(:,1),1)) = 1;
result_c1(1:size(A(1,:),2),1) = 1;
result = result_r1*A*result_c1;