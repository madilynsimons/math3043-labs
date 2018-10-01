function problem4()

[ret, iterations] = fixedPoint4();

fprintf('n:%d\t', iterations);
fprintf('p%d: %.8f\t', iterations, ret);
fprintf('|error|: %.8f\n', 10^-8);

[ret, iterations] = steffenson4();

fprintf('n:%d\t', iterations);
fprintf('p%d: %.8f\t', iterations, ret);
fprintf('|error|: %.8f\n', 10^-8);

end