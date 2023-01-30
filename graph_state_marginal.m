function [evals,mx,gb] = graph_state_marginal(G,A)
n = size(G,1);
B = 1:n;
B(A) = [];
b = length(B);
a = length(A);
strB = (dec2bin(0:2^b-1)-'0')';
Gab = G(A,B);
gb = mod(Gab*strB,2);
strA = dec2bin(0:2^a-1)-'0';
evals = zeros(2^a,1);
for j=1:2^a
    evals(j) = nnz(ismember(gb',strA(j,:),'rows'));
end
evals = evals/2^b;
end