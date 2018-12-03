function ret = normp(x, p)

ret = sum( abs(x).^p ) .^ (1/p);

end

