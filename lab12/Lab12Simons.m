%% Lab12Simons.m
%  Madilyn Simons

%% Problem 1

n = 4;

A = [10 -1 2 0; ...
    -1 11 -1 3; ...
    2 -1 10 -4; ...
    0 3 -1 8];

b = [6; 25; -11; 15];

x0 = zeros(1, n);

TOL = 10^-3;

j = jacobi(A, b, x0, TOL, n);
g = gauss_siedel(A, b, x0, TOL, n);

fprintf('Jacobi approximation:\n');
disp(j);

fprintf('Gauss-Seidel approximation:\n');
disp(g);

%% Problem 2

%% Problem 3

%% Problem 4

%% Problem 5