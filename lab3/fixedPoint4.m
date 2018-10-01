function [p_current, how_many_iterations] = fixedPoint4()

f = @(x) 5^(-x);

how_many_iterations = 0;

p_last = 0;
p_current = 0.5;

TOL = 10^(-8);

while abs((p_current - p_last)/p_current) >= TOL
    
    p_last = p_current;
    
    p_current = f(p_last);
    
    how_many_iterations = how_many_iterations + 1;
    
end


end