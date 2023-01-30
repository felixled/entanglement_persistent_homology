function str = subset2string(A,n)
str = zeros(1,n);
for j=1:length(A)
    str(A(j)) = 1;
end
end