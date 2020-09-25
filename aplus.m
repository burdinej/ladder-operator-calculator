function [prefix, p] = aplus(prefix, p)
    prefix = prefix * sqrt(p+1);
    p = p + 1;
end

