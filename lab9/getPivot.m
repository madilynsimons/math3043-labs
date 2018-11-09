function p = getPivot(A, n, i, NROW)

% Let p be the smallest integer such that i <= p <= n
% AND |a(NROW(p), i)| = max (|a(NROW(j), i) |) j i <= j <= n
    
max_a = intmin;
p = intmax;

for j=i:n
    if abs(A(NROW(j), i)) > max_a
        max_a = abs(A(NROW(j), i));
    end
end

for it=i:n
    if abs(A(NROW(it), i)) == max_a
        p = it;
        return
    end
end

if p == intmax || max_a == intmin
    disp('WARNING: PIVOT NOT FOUND');

end

