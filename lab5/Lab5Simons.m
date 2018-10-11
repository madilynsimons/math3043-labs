%% Lab5Simons.m
%  Madilyn Simons

%% Problem 1
%  Use divided differences to construct the interpolating polynomial

% number of given data points
i = 5;

% given x values
xi = [0.0 0.1 0.3 0.6 1.0];

% f(x) for all x
yi = [-6.00000 -5.89483 -5.65014 -5.17788 -4.28172];

% interpolating polynomial coefficients
coeffs = divided_difference(xi, yi, i);

a = coeffs(5);
b = coeffs(4);
c = coeffs(3);
d = coeffs(2);
e = coeffs(1);

x = -0.1:0.01:1.5;
f = a*x.^4 + b*x.^3 + c*x.^2 + d.*x + e;

figure(1);
plot(x, f, 'k');
hold on
scatter(xi, yi, 'r');
hold off

%% Problem 2

x = [0.0 0.1 0.3 0.6 1.0];
f = @(x) -6 +1.0517*x + 0.5725*x*x + 0.2150*x*x*x + 0.0630*x*x*x*x;
a = ones(1, 5);
for i=1:5
    a(i) = f(x(i));
end
disp(a);

%% Problem 3