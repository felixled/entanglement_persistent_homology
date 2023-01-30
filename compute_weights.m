function [vertices,simplices,mx] = compute_weights(object,mode,d,n)
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
N = 1:n;
subsets = dec2bin(0:2^n-1)-'0';
S = size(subsets,1);
vertices = dictionary;
simplices = dictionary;
mx = 0;
switch mode
    case 'graph'
        entropies = compute_entropies(G,'graph');
    case 'state'
        entropies = compute_entropies(psi,'state',d,n);
end

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