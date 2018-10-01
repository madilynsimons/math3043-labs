function [p, how_many_iterations] = steffenson4()

f = @(x) 5^(-x);

how_many_iterations = 0;

TOL = 10^(-8);

p = 0.5;
p0 = 0;

while abs((p - p0)/p) >= TOL
    
    p0 = p;
    p1 = f(p0);
    p2 = f(p1);
    p = p0 - ((p1-p2)*(p1-p2))/(p2 - 2*p1 + p0);
    
    how_many_iterations = how_many_iterations + 1;

end

end