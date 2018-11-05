function ret = trapezoidal(a, b, f, K, n)
%  Approximate the solution of a Fredholm integral equation using
%  the Composite Trapezoidal rule, given a, b, f, K, and n

% Initialize and set x
% Initialize and set t
x = zeros(1, n+1);
t = zeros(1, n+1);
for i=1:n+1
    x(i) = a + (i-1)*((b-a)/n);
    t(i) = a + (i-1)*((b-a)/n);
end

% Set B to represent -f(x) for all x
B = zeros(n+1, 1);
for i=1:n+1
    B(i, 1) = -1 .* f(x(i));
end

% Calculate h
h = (b-a)/n;

% Initialize A
A = zeros(n+1, n+1);

% Calculate A using the Composite Trapezoidal Rule
% Let A represent the integral of K(x,t)*u(t) dt from a to b minus u(x)
for row=1:n+1
    A(row, 1) = (h / 2) * K(x(row), t(1));
    for col=2:n
        A(row, col) = h * K(x(row), t(col));
    end
    A(row, n+1) = (h / 2) * K(x(row), t(n+1));
    A(row, row) = A(row, row) - 1;
end

% return ret such that A(ret) = B
ret = A \ B;

end

