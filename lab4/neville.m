function ret = neville(val, x, y, n)

Q = zeros(n, n);

for i = 1:n
    Q(i, 1) = y(i);
end

for i = 1:n-1
    for j = 1:i
        top =(val - x(i - j + 1)) * Q(i + 1, j) - (val - x(i + 1)) * Q(i, j);
        bottom = x(i + 1) - x(i - j + 1);
        Q(i + 1, j + 1) = top / bottom;
    end
end

ret = Q(n, n);

end

