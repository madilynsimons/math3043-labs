function ret = error_norm2(A, b, x0)

ret = norm(A.*x0 - b, inf);

end

