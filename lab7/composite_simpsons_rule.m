function ret = composite_simpsons_rule(f, a, b, n)
% Use the Composite Simpson's rule to approximate the integral of a
% function
%
% f    - function to find the integral of
% a, b - end points of integral
% n    - number of subintervals

% calculate h
h = (b - a) / n;

% get the sums needed to find final approximation
sum0 = 0;
sum1= 0;

for i=2:n

    % calculate x
    x = a + (i-1) * h;
    
    % if i is odd, add f(x) to sum1
    if(mod(i, 2))
        sum1 = sum1 + f(x);
        
    % if i is even, add f(x) to sum0
    else
        sum0 = sum0 + f(x);
        
    end
    
end

% calculate final approximation
ret = (h/3) * (f(a) + 2 * sum1 + 4 * sum0 + f(b));

end

