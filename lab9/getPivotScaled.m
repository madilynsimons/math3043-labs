function p = getPivotScaled(A, s, NROW, n, i)
%  Let p be the smallest integer greater than or equal to i such that 
%  |a(p, i)|/s(p) = max |a(k, i)| / s(k) such that i <= k <= n 
%  Input: A - augemented matrix representing system of equations
%         s - scaled factor
%         NROW - row pointers
%         i - row number
%  Output: p - pivot

% Initialize rhs
rhs = intmin;

% Set rhs to max |a(k, i)| / s(k) such that i <= k <= n
for j=i:n
    if abs(A(NROW(j), i)) / s(NROW(j)) > rhs
        rhs = abs(A(NROW(j), i)) ./ s(NROW(j));
    end
end

% Initialize pivot
p = -1;

% Find pivot
for it=i:n
    
    % Set lhs to |a(p, i)|/s(p)
    lhs = abs(A(NROW(it), i)) / s(NROW(it));
    
    % Update pivot
    if lhs == rhs
        p = it;
        return
    end
end

% Error message
if rhs == intmin || p == -1
    fprintf('Warning: Pivot not found for i = %d\n', i);
end

end

