function MaxDrugConcentration()

how_many_iterations = 0;

TOL = 10^(-5);

t_last = 0;
t_current = 10;

A = exp(1) / 3;

f  = @(t)  A*t*exp(-t/3) - .25;
df = @(t) (-1/3)*A*t*exp(-t/3) + A*exp(-t/3);

while abs((t_current - t_last)/t_current) >= TOL
    
    t_last = t_current;
    
    t_current = t_last - f(t_last) / df(t_last);
    
    how_many_iterations = how_many_iterations + 1;
    
    fprintf("%f\n", t_current);
    
end

fprintf("n: %d\t", how_many_iterations);
fprintf("t%d:  %.10f\t", how_many_iterations, t_current);
fprintf("|error|: %.10f\n", TOL);

end

