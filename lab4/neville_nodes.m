function ret = neville_nodes(val, f, n)
% Inputs:
%  val: x value for approximating f(x)
%  f: function used to generate data for approximation f(val)
%  n: degree of polynomial
%
% Output:
%  ret = approximation of f(val)

% Generate n equally-spaced x values on [-5, 5]
x = linspace(-5, 5, n);

% Generate corresponding f(x) values for each value of x
y = ones(1, n);
for i = 1:n
    y(i) = f(x(i));
end

% Return the approximation of f(val) given the generated data
ret = neville(val, x, y, n);

end

