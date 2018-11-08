function ret = PartialPivoting(n, A)

% Step 1
% Initialize row pointer
NROW = zeros(1, n);
for i=1:n
    NROW(i) = i;
end

% Step 2
% For i = 1, ..., n-1 do Steps 3-6
% Elimination Process
for i=1:n-1
    
    % Step 3
    % Let p be the smallest inteer with i <= p <= n and 
    % |a(NROW(p), i)| = max |a(NROW(j), i| such that i <= j <= n
    p = getPivot(A, n, i, NROW);
    
    % Step 4
    % Check for unique solution
    if A(NROW(p), i) == 0
        disp('no unique solution exists');
        break
    end
    
    % Step 5
    % Simulated row interchange
    if NROW(i) ~= NROW(p)
        NCOPY = NROW(i);
        NROW(i) = NROW(p);
        NROW(p) = NCOPY;
    end
    
    % Step 6
    % For steps j=i+1, ..., n do Steps 7 and 8
    for j=i+1:n
        
        %Step 7
        
    end
    
end

end

