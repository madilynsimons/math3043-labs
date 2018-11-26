%% Lab10Simons.m
%  Madilyn Simons

clc; clear;

%% Problem 1

% n is a random integer between 4 and 6 (inclusive)
n = randi([4 6]);

% A is an n x n matrix of random numbers between 0 and 1 (exclusive)
A = rand(n);

% If the determinant of A isn't 0, then A is nonsingular
if det(A) ~= 0
    
    % create an augmented matrix represent [A | I]
    aug_A = horzcat(A, eye(n));
    
    % find the reduced row echelon form of [A | I] 
    % the will represent [ I | A^-1 ]
    rref_aug_A = rref(aug_A);
    
    % extract A^-1 from [ I | A^-1 ]
    inv_A = rref_aug_A(1:n, n+1:2*n);
    
    % print the results
    fprintf('A\n');
    disp(A);
    
    fprintf('Inverse of A\n');
    disp(inv_A);
    
else
    % print the results
    fprintf('A is singular\n');
end


%% Problem 2

%% Problem 3

%% Problem 4