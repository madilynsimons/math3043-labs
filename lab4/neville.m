function ret = neville(val, x, y, n)

p = ones(n, n);

for i = 1:n
    p(i, i) = y(i);
end

for it = 1:n-1
    for i = 1:(n-it)
        j = i + it;
        top = (val - x(j)).*p(i, j-1) - (val - x(i)).*p(i+1,j);
        bottom = x(i)- x(j);
        p(i, j) = top ./ bottom;
    end
end

ret = p(1, n);



end

