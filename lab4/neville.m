function ret = neville(val, x, y, n)
% Inputs:
%  val: x value for approximating f(x)
%  x: array of given x values
%  y: array of corresponding values of f(x) for the given x values
%  n: degree of polynomial
%
% Output:
%  ret = approximation of f(val)


% values for the interpolating polynomials
p = ones(n, n);

% p(xi) = y(i) for all i = 1, 2, 3, ..., n
for i = 1:n
    p(i, i) = y(i);
end

for it = 1:n-1
    for i = 1:(n-it)
        j = i + it;
        
        % solve for p(i, j) using the recurrence relation given by
        % Neville's method
        top = (val - x(j)).*p(i, j-1) - (val - x(i)).*p(i+1,j);
        bottom = x(i)- x(j);
        p(i, j) = top ./ bottom;
        
    end
end

% return the approximated value for f(val)
ret = p(1, n);

end

