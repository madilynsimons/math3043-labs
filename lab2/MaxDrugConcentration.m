function [hours, minutes] = MaxDrugConcentration()
% Use Newton's method to calculate when a certain drug should be administered
% to a patient given the equation for concentration of the drug in 
% the patient's bloodstream.

% Since the max safe concentration of the drug in the bloodstream is 
% 1 mg/mL, we calculate how much of the drug should be administered by
% finding the value of A when c(t) = 1 and when c'(t) = 0 (aka when the
% drug will be most concentrated in the patient's bloodstream).
% We can also use these equations to find the value of t (how long it
% will take for the drug to be most concentrated).  We then find out
% that the e/3 units of medicine must be administered to the patient
% so that the patient will have the maximum safe concentration of the
% drug in their bloodstream 3 hours after injection.

% Now, we use Newton's method to calculate when more of the drug ought
% to be administered to the patient once the concentration of the drug
% falls to 0.25 mg/mL.  This will be when c(t) = 0.25 or c(t) - .25 = 0.

% how many iterations it takes to calulate the value of t
how_many_iterations = 0;

% tolerance
TOL = 10^(-5);

% tn-1
t_last = 0;

% c(t) will equation c(t) = 0.25 for at least two values of since it first 
% increases to 0.25 and then decreases to 0.25.  Set tn to an initial guess
% of 10 so that the algorithm approximates c(t) to the value of t when the 
% concentration decreases to 0.25.
t_current = 10;

% The value of the initial dose of the drug
A = exp(1) / 3;

% The function for time c(t) - .25
f  = @(t)  A*t*exp(-t/3) - .25;

% The derivative of the function above
df = @(t) (-1/3)*A*t*exp(-t/3) + A*exp(-t/3);

% Until the error range is less than tolerance,
% we continue to apply Newton's method.
while abs((t_current - t_last)/t_current) >= TOL
    
    % set tn-1 to the last value of t
    t_last = t_current;
    
    % calculate tn = tn-1 - f(tn-1)/f'(tn-1)
    t_current = t_last - f(t_last) / df(t_last);
    
    % increment how_many_iterations
    how_many_iterations = how_many_iterations + 1;
    
end

% print the results
fprintf("n: %d\t", how_many_iterations);
fprintf("t%d:  %.10f\t", how_many_iterations, t_current);
fprintf("|error|: %.10f\n", TOL);

% return the time it takes for the concentration to fall down to .25 mg/ML
hours = floor(t_current);
minutes = round((t_current - hours)*60);

end

