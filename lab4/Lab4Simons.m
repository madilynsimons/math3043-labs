%% Lab4Simons.m
%  Lab by Madilyn Simons

%% Problem 1
% Approximate f(0.8), f(1.2), and f(1.7) using Neville's method

% Given x and f(x) values
x = [0.5 0.7 1.0 1.3 1.5 1.6 2.0];
y = [1.772454 1.298055 1 0.897471 0.886227 0.893515 1];

% Values of x to approximate f(x)
val = [0.8 1.2 1.7];

% Approximate f(x) for each val and print the results
for i = 1:3
    ret = neville(val(i), x, y, 7);
    fprintf('f(%.1f) = %.6f\n', val(i), ret);
end

%% Problem 2
% Use Neville's method to approximate f(4.9) using N nodes of data
% generated from f(x) = 1 / (1+x^2);

% number of nodes for each approximation
N = [11 21 41 81 121 161];

% function used to generate data
f = @(x) 1 / (1 + x*x);

% Generate n number of nodes for each value of N and approximate
% f(4.9) using the nodes and Neville's method.  Then print the results.
for i = 1:6
    ret = neville_nodes(4.9, f, N(i));
    fprintf('N: %d\tApproximation: %.6f\n', N(i), ret);
end

%% Problem 3
% Use Neville's method to approximate f(4.9) using  N Chebyshev nodes

% Number of nodes for each approximation
N = [11 21 41 81 121 161];

% function used to generate data
f = @(x) 1 / (1 + x*x);

% Generate n Chebyshev nodes for each value of N and approximate f(4.9)
% using the nodes and Neville's method.  Then print the results.
for i = 1:6
    ret = chebyshev(4.9, f, N(i));
    fprintf('N: %d\tApproximation: %.6f\n', N(i), ret);
end

%% Problem 4
% Use Inverse Interpolation to approximate x - e^-x = 0.

% x value to approximate x - e^-x = 0 given p = f^-1(0)
val = 0;

% Given x and e^-x values
x = [0.3 0.4 0.5 0.6 0.7];
y = [0.740818 0.670320 0.606531 0.548812 0.496585];

% Use Neville's method to construct and interpolating polynomial and 
% approximate p = f^-1(0)
p = neville(val, x, y, 5);

fprintf('p = %.6f\n', p);
