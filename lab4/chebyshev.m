function ret = chebyshev(val, f, n)

x = ones(1, n);
y = ones(1, n);

g = @(k) -5*cos(((2*k-1)/(2*n))*pi);

for i = 1:n
    x(i) = g(i);
    y(i) = f(x(i));
end

ret = neville(val, x, y, n);

end

