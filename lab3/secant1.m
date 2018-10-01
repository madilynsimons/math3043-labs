function [p, how_many_iterations] = secant1(p0, p1)

% f(x) = x^2 |sinx| - 4
f = @(x) x.*x.*abs(sin(x)) - 4;

% save the values of f(p0) and f(p1)
q0 = f(p0);
q1 = f(p1);

% set p to an initial value
p = 1;

% how many iterations it takes to converge
how_many_iterations = 0;

% tolerance
TOL = 10^(-6);

% Until the error range is less than tolerance,
% we continue to apply the Secant method.
while abs((p - p1)/p) >= TOL
    
    % compute p
    p = p1 - q1 * (p1 - p0) / (q1 - q0);
    
    % increment how many iterations
    how_many_iterations = how_many_iterations + 1;
    
    % update values
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
    
end

end

