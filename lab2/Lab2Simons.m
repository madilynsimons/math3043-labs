%% Lab2Simons.m
%  @author Madilyn Simons 

%% Problem 1
% Perform four different fixed-point
% iteration methods of computing 25^(1/3)

fixedPointIterationA();
fixedPointIterationB();
fixedPointIterationC();
fixedPointIterationD();

fprintf('\nMethods in order from fastest convergence to slowest: ');
fprintf('B, D, A\n');
fprintf('NB: Method C does not converge to a sufficient approximation\n\n');

%% Problem 2
% Use Newton's Method to find an approximation of
% 25^(1/3) correct to within 10^(-10).

NewtonsMethod();

fprintf('\nThe Bisection Method takes 31 iterations to approximate 25^(1/3)\n');
fprintf('Newtons Method takes 9 iterations to approximate 25^(1/3)\n');
fprintf('Newtons method approximates 25^(1/3) %.f%% faster than the Bisection method\n\n', 100*(31-9)/31);

%% Problem 3
% Use Newton's method to find the time, accurate to within 10^(-5) s
% that it takes for an object falling from 300 ft to hit the ground.

t = FallingObject();

fprintf('\nThe object takes %.5f seconds to hit the ground\n', t);

%% Problem 4
% Use Newton's method to calculate how much of a drug should be administered
% to a patient given the maximum safe concentration and equation for
% concentration of drug in the bloodstream, how long it takes to reach
% that concentration, and when to administer a second dose.

[hours, minutes] = MaxDrugConcentration();

fprintf('\n%f units of medicine should be injected to reach\n', exp(1)/3);
fprintf('the max safe concentration after %d hours.\n', 3);
fprintf('The second injection should be injected\n');
fprintf('%d hours and %d minutes later.\n', hours, minutes);

%% Problem 5
% Use Newton's method to approximate the zero of the function
% f(x) = x^2 - 2xe^(-x) + e^(-2x) to within 10^(-8)

x = NewtonsMethod2();
fprintf('\nx = %.8f\n', x);
