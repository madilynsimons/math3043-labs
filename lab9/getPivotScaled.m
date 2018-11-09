function p = getPivotScaled(A, s, NROW, n, i)

rhs = intmin;

for j=i:n
    if abs(A(NROW(j), i)) / s(NROW(j)) > rhs
        rhs = abs(A(NROW(j), i)) ./ s(NROW(j));
    end
end

p = -1;

for it=i:n
    lhs = abs(A(NROW(it), i)) / s(NROW(it));
    if lhs == rhs
        p = it;
        return
    end
end

if rhs == intmin || p == -1
    fprintf('Warning: Pivot not found for i = %d\n', i);
end

end

