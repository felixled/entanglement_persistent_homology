function entropies = compute_entropies(object,mode,d,n)
% We use the linear entropy (2-Tsallis entropy) in this example.
% Change this line to use a different entropy function.
linent = @(x) 1-sum(x.^2);
switch mode
    case 'graph'
        d = 2;
        G = object;
        n = size(G,1);
    case 'state'
        if (nargin<4)
            error('Both local dimension d and number n of qudits need to be supplied as function arguments.')
        end
        psi = object;
end

subsets = dec2bin(0:2^n-1)-'0';
N = 1:n;
entropies = dictionary;
for j=1:size(subsets,1)
    subset = subsets(j,:);
    A = N(subset==1);
    if isempty(A)
        entropies(num2str(subset)) = 0;
    else
        switch mode
            case 'graph'
                evals = graph_state_marginal(G,A);
                entropies(num2str(subset)) = linent(evals);
            case 'state'
                B = N;
                B(A) = [];
                evals = eig(TrX(psi,B,d*ones(1,n)));
                entropies(num2str(subset)) = linent(evals);
        end
    end
end
end