function res = deformed_total_correlation(entropies,A,n)
A_string = subset2string(A,n);
res = -entropies(num2str(A_string));
for j=1:length(A)
    str = subset2string(A(j),n);
%     [str,entropies(num2str(str))]
    res = res + entropies(num2str(str));
end
end