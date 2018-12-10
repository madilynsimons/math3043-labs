function x = jacobi(A, b, x0, TOL, n)

XO = x0;
x = zeros(1, n);

while(1)

    for i = 1:n
        
     sum = 0;
    
     for j=1:n
         if j ~= i
            sum = sum + A(i, j) * XO(j);
         end
     end
        
     x(i) = (1/A(i, i)) * (b(i) - sum);
        
    end
    
    % find l-inf for x - XO
    if norm(x - XO, inf) < TOL
     return;
    end
    
    for i =1:n
        XO(i) = x(i);
    end

end

end

