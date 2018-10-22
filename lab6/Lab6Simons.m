%% Lab6Simons.m
%  Madilyn Simons

%% Problem 1

n = 4;
x = [0 1 2 3];
a = [1 exp(1) exp(2) exp(3)];

[a, b, c, d] = natural_cubic_spline(n, x, a);

x0 = 1:0.1:3;
true_ex = exp(x_axis);

x1 = 0:0.1:1;
y1 = polynomial(x1, a(1), b(1), c(1), d(1), 0);

x2 = 1:0.1:2;
y2 = polynomial(x2, a(2), b(2), c(2), d(2), 1);

x3 = 2:0.1:3;
y3 = polynomial(x3, a(3), b(3), c(3), d(3), 2);

hold on
plot(x0, true_ex, 'black');
plot(x1, y1, 'blue');
plot(x2, y2, 'blue');
plot(x3, y3, 'blue');
hold off


%% Problem 2

%% Problem 3