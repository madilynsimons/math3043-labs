function ret = simpsons(a, b, f, K, n)
%  Approximate the solution of a Fredholm integral equation using
%  the Composite Simpson's rule

% Calculate h
h = (b-a)/n;

% Initialize and set x
% Initialize and set t
x = zeros(1, n+1);
t = zeros(1, n+1);
for i=1:n+1
    x(i) = a + (i-1)*h;
    t(i) = a + (i-1)*h;
end

% Set B to represent -f(x) for all x
B = zeros(n+1, 1);
for i=1:n+1
    B(i, 1) = -1 .* f(x(i));
end

% Initialize A
A = zeros(n+1, n+1);

% Calculate A using the Composite Trapezoidal Rule
% Let A represent the integral of K(x,t)*u(t) dt from a to b minus u(x)
for row=1:n+1
    A(row, 1) = (h / 3) * K(x(row), t(1));
    for col=2:n
        m = 0;
        if mod(col, 2) == 0
            m = 4;
        else
            m = 2;
        end
        A(row, col) = m * (h/3) * K(x(row), t(col));
    end
    A(row, n+1) = (h / 3) * K(x(row), t(n+1));
    A(row, row) = A(row, row) - 1;
end

ret = A \ B;

end

