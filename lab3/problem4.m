function problem4()

% solve x = 5^(-x) using fixed-point iteration
[ret, iterations] = fixedPoint4();

% print the results
fprintf('n:%d\t', iterations);
fprintf('p%d: %.8f\t', iterations, ret);
fprintf('|error|: %.8f\n', 10^-8);

% solve x = 5^(-x) using Steppenson's method
[ret, iterations] = steffenson4();

% print results
fprintf('n:%d\t', iterations);
fprintf('p%d: %.8f\t', iterations, ret);
fprintf('|error|: %.8f\n', 10^-8);

end