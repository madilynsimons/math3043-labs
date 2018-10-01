function [p_current, how_many_iterations] = newton2()

how_many_iterations = 0;

f = @(x) x*x - 2*x*exp(-x) + exp(-2*x);
dfdx = @(x) 2*x +2*x*exp(-x) -2*exp(-x) -2*exp(-2*x);

p_last = 0;
p_current = 1;

TOL = 10^(-10);

while abs((p_current - p_last)/p_current) >= TOL
    
    p_last = p_current;
    
    p_current = p_last - (f(p_last) / dfdx(p_last));
    
    how_many_iterations = how_many_iterations + 1;
    
end

end