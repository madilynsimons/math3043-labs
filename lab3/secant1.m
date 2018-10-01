function [p, how_many_iterations] = secant1(p0, p1)

f = @(x) x.*x.*abs(sin(x)) - 4;

q0 = f(p0);
q1 = f(p1);

p = 1;

how_many_iterations = 0;

TOL = 10^(-6);

while abs((p - p1)/p) >= TOL
    
    p = p1 - q1 * (p1 - p0) / (q1 - q0);
    
    how_many_iterations = how_many_iterations + 1;
    
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
    
end

end

