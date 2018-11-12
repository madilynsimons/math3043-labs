%% Lab9Simons.m
%  Madilyn Simons

clc; clear;

%% Problem 1
%  Implement Gaussian elimination with partial pivoting to solve the
%  following linear system:
%   2x1        +  x3  -   x4 =  6
%   6x1 + 3x2  + 2x3  -   x4 = 15
%   4x1 + 3x2  - 2x3  +  3x4 =  3
%  -2x1 - 6x2  + 2x3  - 14x4 = 12

% the number of equations / unknowns
n=4;

% the linear system represented by an augmented matrix
A = [ 2  0  1  -1  6; ...
      6  3  2  -1 15; ...
      4  3 -2   3  3; ...
     -2 -6  2 -14 12];

% use Gaussian elimination with partial pivoting to solve the linear system
x_approx = PartialPivoting(n, A);

% true solution
A = [ 2  0  1  -1; ...
      6  3  2  -1; ...
      4  3 -2   3; ...
     -2 -6  2 -14];
 
 b = [6; 15; 3; 12];
 
 x = A\b;

% print the results
fprintf('Approximation of x using Partial Pivoting\n');
for i=1:n
    fprintf('x(%d) = %f\n', i, x_approx(i));
    fprintf('error: %f\n\n', x(i) - x_approx(i));
end


 

%% Problem 2
%  Implement Gaussian elimination with scaled partial pivoting to solve
%  the following linear system:
%   pix1 +pi2x2 -  x3 +   x4 = 0
%   ex1 -   x2 +   x3 +  2x4 = 1
%    x1 +   x2 -pi3x3 +   x4 = 2
%   -x1 -   x2 +   x3 -pi5x4 = 3

% the number of equations / unknowns
n = 4;

% the linear system represented by an augmented matrix
A = [ pi     sqrt(2)       -1      1  0; ...
      exp(1)     -1        1       2  1; ...
      1           1  -sqrt(3)      1  2; ...
     -1          -1        1 -sqrt(5) 3];

% use Gaussian elimination with scaled partial pivoting to solve the linear
% system
x_approx = ScaledPartialPivoting(n, A);

% true solution
A = [ pi     sqrt(2)       -1      1; ...
      exp(1)     -1        1       2; ...
      1           1  -sqrt(3)      1; ...
     -1          -1        1 -sqrt(5)];
 
 b = [0; 1; 2; 3];
 
 x = A\b;


% print the results
fprintf('Approximation of x using Scaled Partial Pivoting\n');
for i=1:n
    fprintf('x(%d) = %f\n', i, x_approx(i));
    fprintf('error: %f\n\n', x(i) - x_approx(i));
end