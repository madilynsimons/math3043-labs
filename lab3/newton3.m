function [p_current, how_many_iterations] = newton3(p0)

% how many iterations it takes to approximate the zero of the function
how_many_iterations = 0;

% f(x) = x^3 - 12.42x^2 + 50.444x - 66.552
f = @(x) x*x*x - 12.42*x*x + 50.444*x - 66.552;

% the derivative of f(x)
dfdx = @(x) 2*x*x - 24.84*x + 50.444;

% pn-1
p_last = 0;

% pn
p_current = p0;

% tolerance
TOL = 10^(-8);

% While the error range is greater than the tolerance, keep applying
% Newton's method
while abs((p_current - p_last)/p_current) >= TOL
    
    % set pn-1 to the last value of pn
    p_last = p_current;
    
    % calculate pn
    p_current = p_last - (f(p_last) / dfdx(p_last));
    
    % increment the number of iterations
    how_many_iterations = how_many_iterations + 1;
    
end

end