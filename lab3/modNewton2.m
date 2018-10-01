function [p_current, how_many_iterations] = modNewton2()

f = @(x) x*x - 2*x*exp(-x) + exp(-2*x);
df = @(x) 2*x +2*x*exp(-x) -2*exp(-x) -2*exp(-2*x);
ddf = @(x) 2 + 2*x*exp(-x) +4*exp(-x) + 4*exp(-2*x);

p_last = 0;
p_current = 1;

TOL = 10^(-10);

how_many_iterations = 0;

while abs((p_current - p_last)/p_current) >= TOL
    
    p_last = p_current;
    
    fp = f(p_last);
    dfp = df(p_last);
    ddfp = ddf(p_last);
    
    p_current = p_last - (fp*dfp)/(dfp*dfp - fp*ddfp);
    
    how_many_iterations = how_many_iterations + 1;
    

end