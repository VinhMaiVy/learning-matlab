function numfreeze = freezing(V)
    numfreeze = length(V(V < 32));
end