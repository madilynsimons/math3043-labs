%% Lab9Simons.m
%  Madilyn Simons


%% Problem 1
n=3;

A = ones(n, n);

for i=1:n
    for j=1:n
        A(i, j) = floor(rand()*10);
    end
end

A = [2 0 7 ; 5 6 6; 7 8 6];

ret = PartialPivoting(n, A);

%% Problem 2