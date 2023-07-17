function [intervals] = compute_persistent_homology(vertices,simplices,mx,n)
import edu.stanford.math.plex4.*;
stream = api.Plex4.createExplicitSimplexStream(mx);
subsets = dec2bin(0:2^n-1)-'0';
N = 1:n;
for s=2:size(subsets,1)
    subset = subsets(s,:);
    A = N(subset==1);
    if length(A)==1
        stream.addVertex(A,vertices(num2str(A)));
    else
        stream.addElement(A,simplices(num2str(A)));
    end
end
stream.validateVerbose()
stream.finalizeStream();
persistence = api.Plex4.getModularSimplicialAlgorithm(n,2);
intervals = persistence.computeIntervals(stream);
end