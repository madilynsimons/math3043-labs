function [x, it] = gauss_seidel_sor(A, b, x0, w, TOL, n)
% Use the SOR method to solve a linear system
%
% Inputs:
%   A - coefficient matrix
%   b - constant terms
%   x0 - x(0)
%   w - omega
%   TOL - tolerance
%   n - number of unknowns
%
% Outputs:
%   x  - solution of the linear system
%   it - number of iterations used to find the solution

% represents x(k - 1)
XO = x0;

% represents x(k)
x  = x0;

% number of iterations
it = 1;

% repeat until the the stopping criteria is met
while(1)
    for i=1:n
        
        % calculate the sum of aij * xj from j = 1 to i-1
        % plus the sum of aij * XOj from j = i + 1 to n
        sum = 0;
        for j = 1:i-1
            sum = sum + A(i, j) * x(j);
        end
        for j = i+1:n
            sum = sum + A(i, j) * XO(j);
        end
        
        % calculate x(i)
        x(i) = (1-w) * XO(i) + (w/A(i, i)) * (b(i) - sum);
        
    end
    
    % return x if the error is within the tolerance
    if norm(x - XO, inf) < TOL
        return;
    end
    
    % update XO
    XO = x;
    
            
    % update number of iterations
    it = it + 1;
    
end


end

