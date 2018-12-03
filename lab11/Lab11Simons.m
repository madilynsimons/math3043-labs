%% Lab11Simons.m
%  Madilyn Simons

clc; clear;

%% Problems 1 and 2

% Generate an r-dimensional column vector whose entries are random
% real numbers between -5 and 5 for an integer r between 15 and 25.
r = randi([15 25]);
x = rand(r, 1) .* 10 - 5;

fprintf('Problem 1:\n');

% Problem 1a
ans_1a = norminf(x);
fprintf('l inf:\t%f\n', ans_1a);

% Problem 1b
ans_1b = norm1(x);
fprintf('norm 1:\t%f\n', ans_1b);

% Problem 1c
ans_1c = norm2(x);
fprintf('norm 2:\t%f\n', ans_1c);

% Problem 1d
ans_1d = normp(x, 3);
fprintf('norm 3:\t%f\n', ans_1d);

fprintf('\nProblem2:\n');

% Problem 2a
ans_2a = norm(x, inf);
fprintf('norm inf:\t%f\n', ans_2a);

% Problem 2b
ans_2b = norm(x, 1);
fprintf('norm 1:\t%f\n', ans_2b);

% Problem 2c
ans_2c = norm(x, 2);
fprintf('norm 2:\t%f\n', ans_2c);

% Problem 2d
ans_2d = norm(x, 3);
fprintf('norm 3:\t%f\n', ans_2d);

%% Problem 3a

% actual solution
x  = [1/7 -1/6];

% approximate solution
x0 = [0.142 -0.166];

% given A, b
A = [1/2 1/3; 1/3 1/4];
b = [1/63; 1/168];

% find the infinity norms of the error
ans_3a1 = error_norm1(x, x0);
ans_3a2 = error_norm2(A, b, x0);

% print the results
fprintf('|x - x0| = %f\n', ans_3a1);
fprintf('|Ax0 - b| = %f\n', ans_3a2);

%% Problem 3b

% actual solution
x  = [1.827586 0.6551724 1.965517];

% approximate solution
x0 = [1.8 0.64 1.9];

% given A, b
A = [0.04 0.01 -0.01; 0.2 0.5 -0.2; 1 2 4];
b = [0.06 0.3 11];

% find the infinity norms of the error
ans_3b1 = error_norm1(x, x0);
ans_3b2 = error_norm2(A, b, x0);

% print the results
fprintf('|x - x0| = %f\n', ans_3b1);
fprintf('|Ax0 - b| = %f\n', ans_3b2);

%% Problem 4

% solutions by hand
fprintf('Eigenvalues by hand:\n');
disp([1; 2]);
fprintf('Eigenvectors by hand:\n');
disp([1 0; 0 1]);

% solutions by MATLAB
[V, D] = eig([1 0; 0 2]);
fprintf('Eigenvalues by MATLAB\n');
disp(D);
fprintf('Eigenvectors by MATLAB\n');
disp(V);

%% Problem 5

% solutions by hand
fprintf('Eigenvalues by hand:\n');
disp([-1; 1]);
fprintf('Eigenvectors by hand:\n');
disp([-1 1; 1 1]);

% solutions by MATLAB
fprintf('Computer:\n');
[V, D] = eig([0 1; 1 0]);
fprintf('Eigenvalues by MATLAB\n');
disp(D);
fprintf('Eigenvectors by MATLAB\n');
disp(V);
