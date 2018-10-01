function problem1()

% plot f(x) = x^2 |sinx| - 4

x = 0:0.01:4; % x ∈ [0, 4]
y = x.*x.*abs(sin(x)) - 4; % y = f(x)

% plot x and y
figure();
plot(x, y);

% Use the Secant method to solve f(x) using p0 = 3.6 and p1 = 3.7
[ret, iterations] = secant1(3.6, 3.7);

% print the results
fprintf('n:%d\t', iterations);
fprintf('p%d: %.6f\t', iterations, ret);
fprintf('|error|: %.6f\n', 10^-6);

% Use the Secant method to solve f(x) using p0 = 2.8 and p1 = 2.9
[ret, iterations] = secant1(2.8, 2.9);

% print the results
fprintf('n:%d\t', iterations);
fprintf('p%d: %.6f\t', iterations, ret);
fprintf('|error|: %.6f\n', 10^-6);

end

