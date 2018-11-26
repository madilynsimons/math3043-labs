function x=back_substition(A, b, n)

x=zeros(n, 1);
for j=n:-1:1
    if (A(j,j)==0) break; end
    x(j)=b(j)/A(j,j);
    b(1:j-1)=b(1:j-1)-A(1:j-1,j)*x(j);
end

end