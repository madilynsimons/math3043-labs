%% Lab7Simons.m
%  Madilyn Simons

%% Problem 1

f = @(x) 1 / (x * log(x));
a = exp(1);
b = exp(1) + 2;
n = 8;

trapezoidal_approx = composite_trapezoidal_rule(f, a, b, n);
simpson_approx = composite_simpsons_rule(f, a, b, n);



%%
f = @(x) (1 ./ (x .* log(x)));
a = exp(1);
b = exp(1) + 2;
x = integral(f, a, b);

disp(x);