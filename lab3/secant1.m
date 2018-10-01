function [ret, iterations] = secant1(p0, p1)

x0 = p0;
x1 = p1;

TOL = 10^-6;

f = @(x) x.*x.*abs(sin(x)) - 4;

iterations = 0;

while abs((x1 - x0)/x1) >= TOL
    x2 = (x0 .* f(x1) - x1 .* f(x0)) / (f(x1) - f(x0));
    
    x0 = x1;
    x1 = x2;
    
    iterations = iterations + 1;
    
end

ret = x2;

end

