function entropies = compute_state_entropies(psi,d,n)
linent = @(x) 1-sum(x.^2);
subsets = dec2bin(0:2^n-1)-'0';
N = 1:n;
entropies = dictionary;
for j=1:size(subsets,1)
    subset = subsets(j,:);
    A = N(subset==1);
    if isempty(A)
        entropies(num2str(subset)) = 0;
    elseif (length(A)==n)
        entropies(num2str(subset)) = 0;
    else
        B = N;
        B(A) = [];
        evals = eig(TrX(psi,B,d*ones(1,n)));
        entropies(num2str(subset)) = linent(evals);
    end
end
end