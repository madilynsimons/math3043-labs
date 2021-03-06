function x = jacobi(A, b, x0, TOL, n)
% Use the Jacobi method to solve a linear system
%
% Inputs:
%   A - coefficient matrix
%   b - constant terms
%   x0 - x(0)
%   TOL - tolerance
%   n - number of unknowns
%
% Outputs:
%   x - solution of the linear system

% represents x(k - 1)
XO = x0;

% represents x(k)
x  = x0;

% repeat until the the stopping criteria is met
while(1)

    for i = 1:n
        
     % calculate the sum of aij * XOj from j = 1 to n
     % such that i does not equal j
     sum = 0;
     for j=1:n
         if j ~= i
            sum = sum + A(i, j) * XO(j);
         end
     end
        
     % calculate x(i)
     x(i) = (1/A(i, i)) * (b(i) - sum);
        
    end
    
    % return if the error is within the tolerance
    if norm(x - XO, inf) < TOL
     return;
    end
    
    % update XO
    XO = x;

end

end

