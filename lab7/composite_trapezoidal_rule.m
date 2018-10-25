function ret = composite_trapezoidal_rule(f, a, b, n)
% Use the Composite Trapezoidal Rule to approximate the integral of a
% function
%
% f    - function to find the integral of
% a, b - end points of integral
% n    - number of subintervals

% calculate h
h = (b - a) / n;

% get sum of f(xj) from j=1 to n-1
sum = 0;

for j=2:n
    
    %calculate xj
    x = a + (j-1) * h;
    
    % add f(xj) to sum
    sum = sum + f(x);
    
end

% calculate final approximation
ret = (h/2) * (f(a) + 2 * sum + f(b));

end

