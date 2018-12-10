%% Lab12Simons.m
%  Madilyn Simons

clear; clc;

%% Problem 1
%  a) Use the Jacobi mehod to solve the linear system
%  b) Use the Gauss-Seidel method to solve the system

% number of unknowns / equations
n = 4;

% Coefficient matrix
A = [10 -1 2 0; ...
    -1 11 -1 3; ...
    2 -1 10 -4; ...
    0 3 -1 8];

% constant terms
b = [6; 25; -11; 15];

% x(0)
x0 = zeros(n, 1);

% tolerance
TOL = 10^-3;

% find the solution using the Jacobi method
j = jacobi(A, b, x0, TOL, n);

% find solution using the Gauss-Siedel method
g = gauss_siedel(A, b, x0, TOL, n);

% print the results
fprintf('Jacobi Approximation:\n');
print_array(j, n);

fprintf('\n');

fprintf('Gauss-Siedel Approximation:\n');
print_array(g, n);

fprintf('\n');

%% Problem 2
%  a) Use the Jacobi mehod to solve the linear system
%  b) Use the Gauss-Seidel method to solve the system

% number of unknowns / equations
n = 6;

% coefficient matrix
A = [4 -1 0 0 0 0; ...
    -1 4 -1 0 0 0; ...
    0 -1 4 0 0 0; ...
    0 0 0 4 -1 0; ...
    0 0 0 -1 4 -1; ...
    0 0 0 0 -1 4];

% constant terms
b = [0; 5; 0; 6; -2; 6];

% x(0)
x0 = zeros(1, n);

% tolderance
TOL = 10^-4;

% find the solution using the Jacobi method
j = jacobi(A, b, x0, TOL, n);

% find the solution using the Gauss-Siedel method
g = gauss_siedel(A, b, x0, TOL, n);

% print the results
fprintf('Jacobi Approximation:\n');
print_array(j, n);

fprintf('\n');

fprintf('Gauss-Siedel Approximation:\n');
print_array(g, n);

fprintf('\n');

%% Problem 3
%  a) Use the Jacobi mehod to solve the linear system
%  b) Use the Gauss-Seidel method to solve the system

% number of unknowns / equations
n = 80;

% initialize coefficient matrix
A = zeros(n);

% initialize constant terms
b = zeros(n, 1);

% x(0)
x0 = zeros(n, 1);

% tolerance
TOL = 10^-5;

% set values for coefficient matrix and constant terms
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

% find the solution using the Jacobi method
j = jacobi(A, b, x0, TOL, n);

% find the solution using the Gauss-Siedel method
g = gauss_siedel(A, b, x0, TOL, n);

% print the results
fprintf('Jacobi Approximation:\n');
print_array(j, n);

fprintf('\n');

fprintf('Gauss-Siedel Approximation:\n');
print_array(g, n);

fprintf('\n');

%% Problem 4
%  a) compute p(Tj) and p(Tg)
%  b) use the computed spectral radii to choose a method to solve the
%     linear system

% number of unknowns / equations
n = 3;

% tolerance
TOL = 10^-5;

% x(0)
x0 = zeros(n, 1);

% coefficient matrix
A = [2 -1 1; ...
    2 2 2; ...
    -1 -1 2];

% constant terms
b = [-1; 4; -5];

% diagonal matrix
D = [2 0 0; ...
    0 2 0; ...
    0 0 2];

% lower triangular matrix
L = [0 0 0; ...
    -2 0 0; ...
    1 1 0];

% upper triangular matrix
U = [0 1 -1; ...
    0 0 -2; ...
    0 0 0];

% solve for Tj and Tg
Tj = inv(D) * (L + U);
Tg = inv(D - L) * U;

% find the spectral radii of Tj and Tg
fprintf('p(Tj) = %.2f\n', max(abs(eig(Tj))));
fprintf('\n');
fprintf('p(Tg) = %.2f\n', max(abs(eig(Tg))));
fprintf('\n');

% Since p(Tg) < 1,
% use the Gauss-Siedel method to solve the system
g = gauss_siedel(A, b, x0, TOL, n);

% print the results
fprintf('Gauss-Siedel Approximation:\n');
print_array(g, n);

fprintf('\n');

%% Problem 5
%  a) compute p(Tj) and p(Tg)
%  b) use the computed spectral radii to choose a method to solve the
%     linear system

% number of unknowns / equations
n = 3;

% tolerance
TOL = 10^-5;

% x(0)
x0 = zeros(n, 1);

% coefficient matrix
A = [1 2 -2; ...
    1 1 1; ...
    2 2 1];

% constant terms
b = [7; 2; 5];

% diagonal matrix
D = [1 0 0; ...
    0 1 0; ...
    0 0 1];

% lower triangular matrix
L = [0 0 0; ...
    -1 0 0; ...
    -2 -2 0];

% upper triangular matrix
U = [0 -2 2; ...
    0 0 -1; ...
    0 0 0];

% solve for Tj and Tg
Tj = inv(D) * (L + U);
Tg = inv(D - L) * U;

% find the spectral radii of Tj and Tg
fprintf('p(Tj) = %.2f\n', max(abs(eig(Tj))));
fprintf('\n');
fprintf('p(Tg) = %.2f\n', max(abs(eig(Tg))));
fprintf('\n');

% Since p(Tj) < 1,
% use the Jacobi method to solve the system
j = jacobi(A, b, x0, TOL, n);

% print the results
fprintf('Jacobi Approximation:\n');
print_array(j, n);

fprintf('\n');

