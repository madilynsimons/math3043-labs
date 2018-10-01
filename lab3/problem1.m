function problem1()

x = 0:0.01:4;
y = x.*x.*abs(sin(x)) - 4;

figure();
plot(x, y);

[ret, iterations] = secant1(3.6, 3.7);

fprintf('n:%d\t', iterations);
fprintf('p%d: %.6f\t', iterations, ret);
fprintf('|error|: %.6f\n', 10^-6);

[ret, iterations] = secant1(2.8, 2.9);

fprintf('n:%d\t', iterations);
fprintf('p%d: %.6f\t', iterations, ret);
fprintf('|error|: %.6f\n', 10^-6);

end

