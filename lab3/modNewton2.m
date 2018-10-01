function [p_current, how_many_iterations] = modNewton2()

% f(x) = x^2 - 2e^(-x)x + e^(-2x)
f = @(x) x*x - 2*x*exp(-x) + exp(-2*x);

% the derivative of f(x)
df = @(x) 2*x +2*x*exp(-x) -2*exp(-x) -2*exp(-2*x);

% the derivative of f'(x)
ddf = @(x) 2 + 2*x*exp(-x) +4*exp(-x) + 4*exp(-2*x);

% pn-1
p_last = 0;

% pn
p_current = 1;

% tolerance
TOL = 10^(-10);

% how many iterations it takes to approximate the zero of the function
how_many_iterations = 0;

% Until the error range is less than tolerance,
% we continue to apply Newton's method.
while abs((p_current - p_last)/p_current) >= TOL
    
    % set pn-1 to the last value of pn
    p_last = p_current;
    
    % calculate f(p)
    fp = f(p_last);
    
    % calculate f'(p)
    dfp = df(p_last);
    
    % calculate f''(p)
    ddfp = ddf(p_last);
    
    % calculate pn using the modified Newton's method
    p_current = p_last - (fp*dfp)/(dfp*dfp - fp*ddfp);
    
    % increment how many iterations
    how_many_iterations = how_many_iterations + 1;
    
end