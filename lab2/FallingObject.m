function FallingObject()
%   Summary of this function goes here
%   Detailed explanation goes here

how_many_iterations = 0;

s0 = 300;
m = 0.25;
g = 32.17;
k = 0.1;

TOL = 10^(-5);

t_last = 0;
t_current = 1;

s  = @(t) s0 - (m*g/k)*t + ((m^2 * g)/(k^2))*(1-exp(-k*t/m));
ds = @(t) (-m*g)/k + ((m*g)/k)*exp((-k*t)/m);

while abs((t_current - t_last)/t_current) >= TOL
    
    t_last = t_current;
    
    t_current = t_last - s(t_last) / ds(t_last);
    
    how_many_iterations = how_many_iterations + 1;
    
end

fprintf("n: %d\t", how_many_iterations);
fprintf("t%d:  %.10f\t", how_many_iterations, t_current);
fprintf("|error|: %.10f\n", TOL);


end

