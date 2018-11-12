function p = getPivot(A, n, i, NROW)
% Let p be the smallest integer such that i <= p <= n
% AND |a(NROW(p), i)| = max (|a(NROW(j), i) |) i <= j <= n
% Input: A - linear system
%        n, i - lower and upper bounds of p
%        NROW - row pointers
%
% Output: p - pivot
    
% initialize max (|a(NROW(j), i) |) j i
max_a = intmin;

% initialize pivot
p = intmax;

% find max (|a(NROW(j), i) |)
for j=i:n
    % if (|a(NROW(j), i) |)is larger than max_a, update max_a
    if abs(A(NROW(j), i)) > max_a
        max_a = abs(A(NROW(j), i));
    end
end

% find pivot
for it=i:n
    % the pivot is the first instance in which 
    % |a(NROW(p), i)| = max (|a(NROW(j), i) |) 
    if abs(A(NROW(it), i)) == max_a
        p = it;
        return
    end
end

% error message
if p == intmax || max_a == intmin
    disp('WARNING: PIVOT NOT FOUND');

end

