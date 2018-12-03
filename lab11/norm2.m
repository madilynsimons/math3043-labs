function ret = norm2(x)
% returns the 2-norm of a vector
% Input: x - vector to find the norm of
% Output: ret - the vector norm

ret = sum( abs(x).^2 ) .^ (1/2);

end

