%% Lab4Simons.m
%  Lab by Madilyn Simons

%% Problem 1

x = [0.5 0.7 1.0 1.3 1.5 1.6 2.0];
y = [1.772454 1.298055 1 0.897471 0.886227 0.893515 1];

input = [0.8 1.2 1.7];

for i = 1:3
    ret = neville(input(i), x, y, 7);
    fprintf('f(%.1f) = %.6f\n', input(i), ret);
end