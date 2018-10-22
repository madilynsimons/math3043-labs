function y = polynomial(x, a, b, c, d, xj)
% form a polynomial given linespace and coefficients
% Input: x - array representing linespace
%        a - number representing first coefficient
%        b - number representing second coefficient
%        c - number representing third coefficient
%        d - number representing fourth coefficient
%        xj - number xj subtracted from x
%
% Output: y - array representing S(x) on the linespace x

y = a ...
    + (b .* (x-xj)) ...
    + (c .* ((x-xj) .* (x-xj))) ...
    + (d .* ((x-xj) .* (x-xj) .* (x-xj)));

end

