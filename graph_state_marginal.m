function [evals,mx,gb] = graph_state_marginal(G,A)
n = size(G,1);
% graph state marginal formula (eq. (117) in https://arxiv.org/abs/quant-ph/0602096)
% only works if A is not the full system, so check this first and then apply.
if (length(A)==n)
    evals = zeros(2^n,1);
    evals(1) = 1;
else
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
end