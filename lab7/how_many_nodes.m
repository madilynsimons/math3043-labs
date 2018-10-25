function n = how_many_nodes(fun, a, b, max_error)


n = 4;
k = (b - a) / 180.0;
error = max_error;

while error >= max_error
    
    % update n
   n = n + 1;
    
    % calculate given the new value of n
   h = (b - a) / n;
   
   % create a linespace in whic values are h numbers apart
   x = a:h:b;
   
   % find the 4 derivative of the function
   f = fun(x);
   df = diff(f);
   d2f = diff(df);
   d3f = diff(d2f);
   d4f = diff(d3f);
   
   % get the error bound
   error = k * h^4 * max(abs(d4f));

end

if mod(n, 2)
    n = n + 1;
end

end

