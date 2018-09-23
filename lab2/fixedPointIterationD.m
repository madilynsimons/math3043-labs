function fixedPointIterationD()
%   Summary of this function goes here
%   Detailed explanation goes here

how_many_iterations = 0;

p_last = 0;
p_current = 1;

TOL = 10^(-10);

while abs(p_current - p_last) >= TOL
    
    p_last = p_current;
    
    p_current = (21/p_last)^(1/2);
    
    how_many_iterations = how_many_iterations + 1;
end

fprintf("n: %d\t", how_many_iterations);
fprintf("p%d:  %.10f\t", how_many_iterations, p_current);
fprintf("|error|: %.10f\n", TOL);

end

