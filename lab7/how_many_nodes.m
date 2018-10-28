function n = how_many_nodes(fun, a, b, max_error)

n = 4;
k = (b - a) / 180.0;
error = max_error;

while error >= max_error
    
    % update n
   n = n + 2;
    
    % calculate given the new value of n
   h = (b - a) / n;
   
   % create a linespace in whic values are h numbers apart
   x = a:h:b;
   
   % find the 4 derivative of the function
   f = fun(x);
   
   d = diff(x);
   diff_x = d(1);
   
   df = diff(f) ./ diff_x;
   d2f = diff(df) ./ diff_x;
   d3f = diff(d2f) ./ diff_x;
   d4f = diff(d3f) ./ diff_x;
   
   % get the error bound
   error = k * h^4 * max(abs(d4f));

end

end

