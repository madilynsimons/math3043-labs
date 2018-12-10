%% Lab13Simons.m
%  Madilyn Simons

clc; clear;

%%  Problem 1a) Use the SOR method to solve a linear system

% number of unknowns / equations
n = 6;

% omega
w = [1 1.05 1.1 1.5];

% x(0)
x0 = zeros(n, 1);

% tolerance
TOL = 10^-6;

% coefficient matrix
A = [4 -1 0 0 0 0; ...
    -1 4 -1 0 0 0; ...
    0 -1 4 0 0 0; ...
    0 0 0 4 -1 0; ...
    0 0 0 -1 4 -1; ...
    0 0 0 0 -1 4];

% constant terms
b = [0; 5; 0; 6; -2; 6];

% solution to system
g = zeros(n, 4);

% how many iterations it takes
it = zeros(n, 1);

for i=1:4
    
    % use the SOR method to solve the system
    [g(:, i), it(i)]= gauss_seidel_sor(A, b, x0, w(i), TOL, n);
    
    % print the results
    fprintf('omega: %.2f\t iterations: %d\n', w(i), it(i));
    
end

fprintf('\n');

%% Problem 1b) Find the optimal choice for omega

% diagonal matrix
D = [4 0 0 0 0 0; ...
    0 4 0 0 0 0; ...
    0 0 4 0 0 0; ...
    0 0 0 4 0 0; ...
    0 0 0 0 4 0; ...
    0 0 0 0 0 4];

% lower triangular matrix
L = [0 0 0 0 0 0; ...
    1 0 0 0 0 0; ...
    0 1 0 0 0 0; ...
    0 0 0 0 0 0; ...
    0 0 0 1 0 0; ...
    0 0 0 0 1 0];

% upper triangular matrix
U = [0 1 0 0 0 0; ...
    0 0 1 0 0 0; ...
    0 0 0 0 0 0; ...
    0 0 0 0 1 0; ...
    0 0 0 0 0 1; ...
    0 0 0 0 0 0];

% spectral radius
p = @(Ao) max(abs(eig(Ao)));

% calculate Tj
Tj = inv(D) * (L + U);

% calculate optimal choice for omega
w_optimal = 2 / (1 + sqrt(1-(p(Tj))^2));

% print the results
fprintf('The optimal value for omega is %.5f\n', w_optimal);
fprintf('This value is closer to 1.05 than it is to any of the other \n');
fprintf('given values of omega.  Also, of all the given values of\n');
fprintf('omega, 1.05 took the least amount of iterations to solve the\n');
fprintf('system.\n');
