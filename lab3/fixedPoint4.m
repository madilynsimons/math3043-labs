function [p_current, how_many_iterations] = fixedPoint4()

% f(x) = 5^(-x)
f = @(x) 5^(-x);

% how many iterations it takes to approximate x = 5^(-x)
how_many_iterations = 0;

% pn-1
p_last = 0;

% pn = initial guess
p_current = 0.5;

% tolerance
TOL = 10^(-8);

% while the error range is greater than the tolerance, keep applying this
% method
while abs((p_current - p_last)/p_current) >= TOL
    
    % set pn-1 to the last value of p
    p_last = p_current;
    
    % set pn to f(pn-1)
    p_current = f(p_last);
    
    % increment how many iterations
    how_many_iterations = how_many_iterations + 1;
    
end


end