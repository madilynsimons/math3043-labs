function s = getScaledFactor(A, n, i)
%  Find the scaled factor for a row in an augmented matrix
%  Input: A - augmented matrix representing system of equations
%         n - number of unknowns
%         i - row number
%  Output: s - scaled factor

% Initialize scaled factor
s = intmin;

% Find largest element in ith row
for j=1:n
    
    % Update scaled factor
    if abs(A(i, j)) > s
        s = abs(A(i, j));
    end
    
end

% Error message
if s == intmin
    fprintf('WARNING: No scaled factor found for i = %d\n', i);
end

end

