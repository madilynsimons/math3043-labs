function x = gauss_siedel(A, b, x0, TOL, n)

XO = x0;
x  = x0;

while(1)
    for i=1:n
        
        sum = 0;
        
        for j = 1:i-1
            sum = sum + A(i, j) * x(j);
        end
        for j = i+1:n
            sum = sum + A(i, j) * XO(j);
        end
        
        x(i) = (1/A(i, i)) * (b(i) - sum);
        
    end
    
    if norm(x - XO, inf) < TOL
        return;
    end
    
    XO = x;
    
end

end

