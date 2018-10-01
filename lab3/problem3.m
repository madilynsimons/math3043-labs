function problem3()

x = 4:0.01:6;
y = x.*x.*x - 12.42.*x.*x + 50.444.*x - 66.552;

figure();
plot(x,y);

[ret, iterations] = newton3();

fprintf('n:%d\t', iterations);
fprintf('p%d: %.8f\t', iterations, ret);
fprintf('|error|: %.8f\n', 10^-8);


end