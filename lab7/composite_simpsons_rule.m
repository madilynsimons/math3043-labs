function ret = composite_simpsons_rule(f, a, b, n)
% f    - function to find the integral of
% a, b - end points of integral
% n    - number of subintervals

% calculate h
h = (b - a) / n;

sum0 = 0;
sum1= 0;

for i=2:n
    x = a + (i-1) * h;
    
    if(mod(i, 2))
        sum1 = sum1 + f(x);
    else
        sum0 = sum0 + f(x);
    end
    
end


ret = (h/3) * (f(a) + 2 * sum1 + 4 * sum0 + f(b));

end

