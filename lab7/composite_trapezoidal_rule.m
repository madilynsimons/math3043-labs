function ret = composite_trapezoidal_rule(f, a, b, n)
% f    - function to find the integral of
% a, b - lower and upper x-values of integral
% n    - number of subintervals

h = (b - a) / n;

sum = 0;

for j=1:n-1
    x = a + j * h;
    sum = sum + f(x);
end

ret = (h/2) * (f(a) + 2 * sum + f(b));

end

