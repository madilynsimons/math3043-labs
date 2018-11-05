%% Lab8Simons.m
%  Madilyn Simons

clc; clear;

%% Problem 1a
%  Approximate the solution of a Fredholm integral equation using
%  the Composite Trapezoidal rule

% Given values for a, b, f(x), K(x, t), and n
a = 0;
b = 1;
f = @(x) x.^2;
K = @(x, t) exp(abs(x - t));
n = 4;

% Solve for u(x)
u = trapezoidal(a, b, f, K, n);

% Print the results
for i=1:n+1
    fprintf('u(x%d) = %f\n', i-1, u(i)); 
end


%% Problem 1b
%  Approximate the solution of a Fredholm integral equation using
%  the Composite Simpson's rule

