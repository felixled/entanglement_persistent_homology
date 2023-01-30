function [vertices,simplices,mx] = compute_weights(G)
n = size(G,1);
N = 1:n;
subsets = dec2bin(0:2^n-1)-'0';
S = size(subsets,1);
vertices = dictionary;
simplices = dictionary;
mx = 0;
entropies = compute_graph_entropies(G);
for j=2:S
    subset = subsets(j,:);
    A = N(subset==1);
    x = compute_functional(entropies,A,n);
    if (x > mx)
        mx = x;
    end
    if length(A)==1
        vertices(num2str(A)) = x;
    else
        simplices(num2str(A)) = x;
    end
end
end