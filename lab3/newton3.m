function [p_current, how_many_iterations] = newton3()

how_many_iterations = 0;

f = @(x) x*x*x - 12.42*x*x + 50.444*x - 66.552;
dfdx = @(x) 2*x*x - 24.84*x + 50.444;

p_last = 0;
p_current = 1;

TOL = 10^(-8);

while abs((p_current - p_last)/p_current) >= TOL
    
    p_last = p_current;
    
    p_current = p_last - (f(p_last) / dfdx(p_last));
    
    how_many_iterations = how_many_iterations + 1;
    
end

end