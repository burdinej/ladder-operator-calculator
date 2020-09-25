function [prefix, p] = aminus(prefix, p)
    prefix = prefix * sqrt(p);
    p = p - 1;
end
