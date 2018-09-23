function NewtonsMethod2()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

how_many_iterations = 0;

TOL = 10^(-8);

p_last = 0;
p_current = 1;

f  = @(x) x^2 -2*x*exp(-x) + exp(-2*x);
df = @(x) 2*x -2*exp(-x);

while abs((p_current - p_last)/p_current) >= TOL
    
    p_last = p_current;
    
    p_current = p_last - f(p_last) / df(p_last);
    
    how_many_iterations = how_many_iterations + 1;
    
end

fprintf("n: %d\t", how_many_iterations);
fprintf("p%d:  %.10f\t", how_many_iterations, p_current);
fprintf("|error|: %.10f\n", TOL);

end

