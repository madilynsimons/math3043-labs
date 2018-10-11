function f = divided_difference(x, y, n)
% inputs:
%  x - array of distinct numbers for function f
%  y - array of values f(x) for all elements of x
%  n - size of array x
%
% outputs:
% f - array of values f[x0, x1, ... , xi] for i = 0, 1, 2, ..., n

% initialize F
% F is a that will hold values for Newton's Divided Difference
F = ones(n, n);

% set Fi to y(i) for i=1,2,3,...,n
for i=0:n
    F(i, n) = y(i);
end

% apply Newton's divided difference
for i=2:n
    for j=2:i
        numerator = F(i, j-1) - F(i-1, j-1);
        denominator = x(i) - x(i-j);
        F(i, j) = numerator/denominator;
    end
end

% initialize f
f = ones(1, n);

% set f to F(i, i)
for i=1:n
    f(i) = F(i, i);
end

end

