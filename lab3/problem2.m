function problem2()

[ret, iterations] = newton2();

fprintf('n:%d\t', iterations);
fprintf('p%d: %.10f\t', iterations, ret);
fprintf('|error|: %.10f\n', 10^-10);


[ret, iterations] = modNewton2();

fprintf('n:%d\t', iterations);
fprintf('p%d: %.10f\t', iterations, ret);
fprintf('|error|: %.10f\n', 10^-10);
end