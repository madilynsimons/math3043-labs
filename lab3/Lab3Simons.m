%% Lab3Simons.m
%  author: Madilyn Simons

%% Problem 1

% Use the Secant method to find the smallest positive zero of
% f(x) = x^2 |sinx| - 4 accurate to within 10^-6.
problem1();

% There are at 2 values of x such that f(x) = 0.
% When we use p0 = 3.6 and p1 = 3.7, the Secant method computes the
% zero on the interval (3, 4).  When we use p0 = 2.8 and p1 = 2.9,
% the Secant method computes the zero on the interval (2, 3).

%% Problem 2

% Use Newton's method to approximate the zero of the function 
% f(x) = x^2 - 2e^(-x)x + e^(-2x) accurate to within 10^(-8).
problem2();

% Newton's method converges relatively slowly.  However, the modified 
% Newton's method converges a bit faster than the original Newton's method.

% The modified Newton's method takes 22 iterations to approximate a
% solution for f(x).  That is 5 fewer iterations than the original Newton's
% method.

%% Problem 3

% % Use Newton's method to approximate the zeros of the function 
% f(x) = x^3 -12.42x^2 + 50.444x - 66.552 for x ∈ [4, 6] accurate to
% within 10^(-8).
problem3();

%  When using Newton's method to approximate f(x), we usually get about 4.7
%  for a couple of different initial guesses, and it almost always takes a
%  very long time to converge.  4.72 is also a solution, but it is
%  difficult to approximate to this value unless the initial guess is 4.72.
%
%  The values of f'(x) at the zeroes are both about -22.

%% Problem 4

% Use fixed-point iteration and Steffenson's method to solve x = 5^(-x).
problem4();

%  Fixed-point iteration takes a much longer time than Steffenson's method
%  to approximate a solution to x = 5^(-x).  Fixed-point iteration takes 59
%  iterations, which is 40 more iterations than Steffenson's method.