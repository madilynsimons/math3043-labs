function [p, how_many_iterations] = steffenson4()

% f(x) = 5^(-x)
f = @(x) 5^(-x);

% how many iterations it takes to approximate x = 5^(-x)
how_many_iterations = 0;

% tolerance
TOL = 10^(-8);

% initial guess
p = 0.5;

% set p0 to an initial value
p0 = 0;

% While the error range is greater than the tolerance, keep applying this
% method
while abs((p - p0)/p) >= TOL
    
    % update values
    p0 = p;
    p1 = f(p0);
    p2 = f(p1);
    
    % calculate p
    p = p0 - ((p1-p2)*(p1-p2))/(p2 - 2*p1 + p0);
    
    % increment how many iterations
    how_many_iterations = how_many_iterations + 1;

end

end