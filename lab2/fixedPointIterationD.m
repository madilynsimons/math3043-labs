function fixedPointIterationD()
% Use the following fixed-point iteration method to compute 21^(1/3)
% pn = (21/pn-1)^(1/2)

% how many iterations it takes to compute 21^(1/3) using this method
how_many_iterations = 0;

% pn-1
p_last = 0;

% pn
p_current = 1;

% tolerance
TOL = 10^(-10);

% Until the error range is less than tolerance,
% we continue to apply this fixed-point iteration method.
while abs(p_current - p_last) >= TOL
    
    % set pn-1 to the last value of pn
    p_last = p_current;
    
    % calculate pn using the fixed-point iteration method
    p_current = (21/p_last)^(1/2);
    
    % increment how_many_iterations
    how_many_iterations = how_many_iterations + 1;
end

% print the results
fprintf("n: %d\t", how_many_iterations);
fprintf("p%d:  %.10f\t", how_many_iterations, p_current);
fprintf("|error|: %.10f\n", TOL);

end

