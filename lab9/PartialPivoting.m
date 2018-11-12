function x = PartialPivoting(n, A)

% Initialize multipliers
m = zeros(n, n);

% Initialize row pointers
NROW = zeros(1, n);
for i=1:n
    NROW(i) = i;
end

% Elimination Process
for i=1:n-1
    
    % Let p be the smallest inteer with i <= p <= n and 
    % |a(NROW(p), i)| = max |a(NROW(j), i| such that i <= j <= n
    p = getPivot(A, n, i, NROW);
    
    % Check for unique solution
    if A(NROW(p), i) == 0
        disp('no unique solution exists');
        return
    end
    
    % Swap ith row with the pth row
    if NROW(i) ~= NROW(p)
        NCOPY = NROW(i);
        NROW(i) = NROW(p);
        NROW(p) = NCOPY;
    end
    
    for j=(i+1):n

        % Calculate row modifier 
        m(NROW(j), i) = A(NROW(j), i) ./ A(NROW(i), i);
        
        % Modify row
        A(NROW(j),:) = A(NROW(j),:) - m(NROW(j), i) .* A(NROW(i),:);
    end
    
end

% Check for unique solution
if A(NROW(n), n) == 0
    disp('no unique solution exists');
    return
end

% Use backward substitution to find the solution
x = zeros(1, n);
x(n) = A(NROW(n), n+1) ./ A(NROW(n), n);

i = n-1;
while i >= 1

    sum = 0;
    for j=i+1:n
        sum = sum + A(NROW(i), j) .* x(j);
    end
    
    x(i) = (A(NROW(i), n+1) - sum) ./ A(NROW(i), i);
    
    i = i - 1;
end


end

