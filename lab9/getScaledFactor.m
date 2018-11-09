function s = getScaledFactor(A, n, i)

s = intmin;

for j=1:n
    if abs(A(i, j)) > s
        s = abs(A(i, j));
    end
end

if s == intmin
    fprintf('WARNING: No scaled factor found for i = %d\n', i);
end

end

