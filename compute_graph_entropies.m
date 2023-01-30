function entropies = compute_graph_entropies(G)
linent = @(x) 1-sum(x.^2);
n = size(G,1);
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
        evals = sort(graph_state_marginal(G,A));
        entropies(num2str(subset)) = linent(evals);
    end
end
end