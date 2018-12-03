function ret = normp(x, p)
% returns the p-norm of a vector
% Input: x - vector to find the norm of
% Output: ret - the vector norm

ret = sum( abs(x).^p ) .^ (1/p);

end

