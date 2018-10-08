function ret = neville_nodes(val, f, n)

x = linspace(-5, 5, n);

y = ones(1, n);

for i = 1:n
    y(i) = f(x(i));
end

ret = neville(val, x, y, n);

end

