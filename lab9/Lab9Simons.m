%% Lab9Simons.m
%  Madilyn Simons


%% Problem 1
n=4;

A = [2 0 1 -1 6; 6 3 2 -1 15; 4 3 -2 3 3; -2 -5 2 -14 12];
a = [2 0 1 -1; 6 3 2 -1; 4 3 -2 3; -2 -5 2 -14];
b = [6; 15; 3 ;12];
disp(A);
ret = PartialPivoting(n, A);

%% Problem 2