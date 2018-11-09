function x = PartialPivoting(n, A)

m = zeros(n, n);

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
    fprintf('The pivot it %f\n', p);
    
    % Step 4
    % Check for unique solution
    if A(NROW(p), i) == 0
        disp('no unique solution exists');
        break
    end
    
    % Step 5
    % Simulated row interchange

    if NROW(i) ~= NROW(p)
        fprintf('Swapping rows %d and %d\n', p, i);
        
        temp = A(NROW(i),:);
        NCOPY = NROW(i);
        
        A(NROW(i),:) = A(NROW(p),:);
        NROW(i) = NROW(p);
        
        A(NROW(p),:) = temp;
        NROW(p) = NCOPY;
        
        disp(A);
    end
    
    % Step 6
    % For steps j=i+1, ..., n do Steps 7 and 8
    for j=i+1:n
        
        % Step 7
        % Calculate row modifier 
        m(NROW(j), i) = A(NROW(j), i) ./ A(NROW(i), i);
        fprintf('The modifier is %f / %f = %f\n', A(NROW(j), i), A(NROW(i), i), m(NROW(j), i));
        
        % Step 8
        % modify row
        A(NROW(j),:) = A(NROW(j),:) - m(NROW(j), i) .* A(NROW(i),:);
        fprintf('Row %d = Row %d - %f * Row %d\n,', j, j, m(NROW(j), i), i);
        disp(A);
    end
    
end

% Step 9
% check for unique solution
if A(NROW(n), n) == 0
    disp('no unique solution exists');
    return
end

% Step 10
% Start backward substitution
x = zeros(1, n);
x(n) = A(NROW(n), n+1) ./ A(NROW(n), n);

% Step 11
i = n-1;
while i <= 1
    sum = 0;
    for j=i+1:n
        sum = sum + A(NROW(i), j) .* x(j);
    end
    
    x(i) = (A(NROW(i), n+1) - sum) ./ A(NROW(i), i);
    
    i = i - 1;
end

disp(A);


end

