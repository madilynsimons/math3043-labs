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
fprintf('l 1:\t%f\n', ans_1b);

% Problem 1c
ans_1c = norm2(x);
fprintf('l 2:\t%f\n', ans_1c);

% Problem 1d
ans_1d = normp(x, 3);
fprintf('l 3:\t%f\n', ans_1d);

fprintf('\nProblem2:\n');

% Problem 2a
ans_2a = norm(x, inf);
fprintf('l inf:\t%f\n', ans_2a);

% Problem 2b
ans_2b = norm(x, 1);
fprintf('l 1:\t%f\n', ans_2b);

% Problem 2c
ans_2c = norm(x, 2);
fprintf('l 2:\t%f\n', ans_2c);

% Problem 2d
ans_2d = norm(x, 3);
fprintf('l 3:\t%f\n', ans_2d);

%% Problem 3

%% Problem 4

%% Problem 5