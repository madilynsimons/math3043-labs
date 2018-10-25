%% Lab7Simons.m
%  Madilyn Simons

%% Problem 1
%  Approximate the integral of a function once using the Composite
%  Trapezoidal rule and once using the Composite Simpson's rule.

% function to approximate the integral of
f = @(x) 1 ./ (x .* log(x));

% lowest end-point of integral
a = exp(1);

% upper end-point of integral
b = exp(1) + 2;

% number of subintervals to use
n = 8;

% approximate using Composite Trapezoidal Rule
t_approx = composite_trapezoidal_rule(f, a, b, n);

% approximate using Composite Simpson's rule
s_approx = composite_simpsons_rule(f, a, b, n);

% Print the results
fprintf('Approximation using Composite Trapezoidal Rule\n');
fprintf('%f\n\n', t_approx);

fprintf('Approximation using Composite Simpsons Rule\n');
fprintf('%f\n\n', s_approx);
