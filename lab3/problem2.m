function problem2()

% Use Newton's method to solve f(x) using p0 = 1
[ret, iterations] = newton2();

% print the results
fprintf('n:%d\t', iterations);
fprintf('p%d: %.10f\t', iterations, ret);
fprintf('|error|: %.10f\n', 10^-10);

% Use the modified Newton's method to solve f(x) using p0 = 1
[ret, iterations] = modNewton2();

% print the results
fprintf('n:%d\t', iterations);
fprintf('p%d: %.10f\t', iterations, ret);
fprintf('|error|: %.10f\n', 10^-10);
end