%% Lab12Simons.m
%  Madilyn Simons

clear; clc;

%% Problem 1

n = 4;

A = [10 -1 2 0; ...
    -1 11 -1 3; ...
    2 -1 10 -4; ...
    0 3 -1 8];

b = [6; 25; -11; 15];

x0 = zeros(n, 1);

TOL = 10^-3;

j = jacobi(A, b, x0, TOL, n);
g = gauss_siedel(A, b, x0, TOL, n);

fprintf('Jacobi Approximation:\n');
print_array(j, n);

fprintf('\n');

fprintf('Gauss-Siedel Approximation:\n');
print_array(g, n);

fprintf('\n');

%% Problem 2

n = 6;

A = [4 -1 0 0 0 0; ...
    -1 4 -1 0 0 0; ...
    0 -1 4 0 0 0; ...
    0 0 0 4 -1 0; ...
    0 0 0 -1 4 -1; ...
    0 0 0 0 -1 4];

b = [0; 5; 0; 6; -2; 6];

x0 = zeros(1, n);

TOL = 10^-4;

j = jacobi(A, b, x0, TOL, n);
g = gauss_siedel(A, b, x0, TOL, n);

fprintf('Jacobi Approximation:\n');
print_array(j, n);

fprintf('\n');

fprintf('Gauss-Siedel Approximation:\n');
print_array(g, n);

fprintf('\n');

%% Problem 3

n = 80;
A = zeros(n);
b = zeros(n, 1);
x0 = zeros(n, 1);
TOL = 10^-5;

for i=1:n
    for j=1:n
      if j == i
         A(i, j) = 2 * i;
     elseif j == i + 2 & i >= 1 & (i <= 78)
         A(i, j) = 0.5 * i;
     elseif j == i - 2 & i >= 3 & i <= 80
         A(i, j) = 0.5 * i;
     elseif j == i + 4 & i >= 1 & i <= 76
         A(i, j) = 0.25 * i;
     elseif j == i - 4 & i >= 5 & i <= 80
         A(i, j) = 0.25 * i;
     else
         A(i, j) = 0;
     end
    end
    
    b(i) = pi;
end

j = jacobi(A, b, x0, TOL, n);
g = gauss_siedel(A, b, x0, TOL, n);

fprintf('Jacobi Approximation:\n');
print_array(j, n);

fprintf('\n');

fprintf('Gauss-Siedel Approximation:\n');
print_array(g, n);

fprintf('\n');

%% Problem 4

n = 3;
TOL = 10^-5;
x0 = zeros(n, 1);

A = [2 -1 1; ...
    2 2 2; ...
    -1 -1 2];

b = [-1; 4; -5];

D = [2 0 0; ...
    0 2 0; ...
    0 0 2];

L = [0 0 0; ...
    -2 0 0; ...
    1 1 0];

U = [0 1 -1; ...
    0 0 -2; ...
    0 0 0];

Tj = inv(D) * (L + U);
Tg = inv(D - L) * U;

fprintf('p(Tj) = %.2f\n', max(abs(eig(Tj))));
fprintf('\n');
fprintf('p(Tg) = %.2f\n', max(abs(eig(Tg))));
fprintf('\n');

g = gauss_siedel(A, b, x0, TOL, n);

fprintf('Gauss-Siedel Approximation:\n');
print_array(g, n);

fprintf('\n');

%% Problem 5

n = 3;
TOL = 10^-5;
x0 = zeros(n, 1);

A = [1 2 -2; ...
    1 1 1; ...
    2 2 1];

b = [7; 2; 5];

D = [1 0 0; ...
    0 1 0; ...
    0 0 1];

L = [0 0 0; ...
    -1 0 0; ...
    -2 -2 0];

U = [0 -2 2; ...
    0 0 -1; ...
    0 0 0];

Tj = inv(D) * (L + U);
Tg = inv(D - L) * U;

fprintf('p(Tj) = %.2f\n', max(abs(eig(Tj))));
fprintf('\n');
fprintf('p(Tg) = %.2f\n', max(abs(eig(Tg))));
fprintf('\n');

j = jacobi(A, b, x0, TOL, n);

fprintf('Jacobi Approximation:\n');
print_array(j, n);

fprintf('\n');

