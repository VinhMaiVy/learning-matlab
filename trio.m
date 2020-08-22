function T = trio(n,m)
    T = ones(3*n,m);
    T(n+1:2*n,:)=2;
    T(2*n+1:3*n,:)=3;
    
    