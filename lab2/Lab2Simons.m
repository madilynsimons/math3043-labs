%% Lab2Simons.m
%  @author Madilyn Simons 

%% Problem 1

fixedPointIterationA();
fixedPointIterationB();
fixedPointIterationC();
fixedPointIterationD();

fprintf('\nMethods in order from fastest convergence to slowest: ');
fprintf('B, D, A\n');
fprintf('NB: Method C does not converge to a sufficient approximation\n\n');

%% Problem 2

NewtonsMethod();

fprintf('\nThe Bisection Method takes 31 iterations to approximate 25^(1/3)\n');
fprintf('Newtons Method takes 9 iterations to approximate 25^(1/3)\n');
fprintf('Newtons method approximates 25^(1/3) %.f%% faster than the Bisection method\n\n', 100*(31-9)/31);

%% Problem 3

FallingObject();

%% Problem 4

MaxDrugConcentration();

%% Problem 5

NewtonsMethod2();