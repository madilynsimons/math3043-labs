function ret = error_norm2(A, b, x0)
% returns the infinity-infinity norm of A*x0 - b

ret = norm(A.*x0 - b, inf);

end

