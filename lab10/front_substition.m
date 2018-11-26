function x=front_substition(A, b, n)

x=zeros(n, 1);
for j=1:n
    if (A(j,j)==0) break; end
    x(j)=b(j)/A(j,j);
    b(j:n)=b(j:n)-A(j:n,j)*x(j);
end

end