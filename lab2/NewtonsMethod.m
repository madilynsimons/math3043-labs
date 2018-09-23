function NewtonsMethod()
%   Summary of this function goes here
%   Detailed explanation goes here

how_many_iterations = 0;

f  = @(x) x^3 - 25;
dfdx = @(x) 3*x^2;

p_last = 0;
p_current = 1;

TOL = 10^(-10);

while abs((p_current - p_last)/p_current) >= TOL
    
    p_last = p_current;
    
    p_current = p_last - (f(p_last) / dfdx(p_last));
    
    how_many_iterations = how_many_iterations + 1;
    
end

fprintf("n: %d\t", how_many_iterations);
fprintf("p%d: %.10f\t", how_many_iterations, p_current);
fprintf("|error|: %.10f\n", TOL);

end

