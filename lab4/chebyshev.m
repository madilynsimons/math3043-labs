function ret = chebyshev(val, f, n)
% Inputs:
%  val: x value for approximating f(x)
%  f: function used to generate data for approximation f(val)
%  n: degree of polynomial
%
% Output:
%  ret = approximation of f(val)

% Formula for generating values of x for chebyshev nodes
g = @(k) -5*cos(((2*k-1)/(2*n))*pi);

% Generate x and y values such that xi = g(i) and yi = f(xi)
x = ones(1, n);
y = ones(1, n);
for i = 1:n
    x(i) = g(i);
    y(i) = f(x(i));
end

% Approximate f(val) given the generated Chebyshev nodes
ret = neville(val, x, y, n);

end

