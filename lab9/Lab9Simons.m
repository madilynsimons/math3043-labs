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
x = PartialPivoting(n, A);

% print the results
for i=1:n
    fprintf('x(%d) = %f\n', i, x(i));
end

%% Problem 2
%  Implement Gaussian elimination with scaled partial pivoting to solve
%  the following linear system:
%