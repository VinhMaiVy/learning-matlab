function admit = eligible(v,q)
    if (mean([v,q]) >= 92) && (v > 88) && (q > 88)
        admit = true;
    else
        admit = false;
    end