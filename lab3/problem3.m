function problem3()

% x ∈ [4, 6]
x = 4:0.01:6;

% y = f(x)
y = x.*x.*x - 12.42.*x.*x + 50.444.*x - 66.552;

% plot f(x)
figure();
plot(x,y);

% approximate zero using Newton's method with an inital guess of 4.6
[ret, iterations] = newton3(4.6);

% print results
fprintf('n:%d\t', iterations);
fprintf('p%d: %.8f\t', iterations, ret);
fprintf('|error|: %.8f\n', 10^-8);

% approximate zero using Newton's method with an initial guess of 4.72
[ret, iterations] = newton3(4.72);

% print the results
fprintf('n:%d\t', iterations);
fprintf('p%d: %.8f\t', iterations, ret);
fprintf('|error|: %.8f\n', 10^-8);

end