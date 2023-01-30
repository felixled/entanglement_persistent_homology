run javaplex/load_javaplex.m
import edu.stanford.math.plex4.*;

mode = 'state';
d = 2;
n = 4;

I = eye(d);
psi1 = zeros(d^n,1);
for j=1:d
    psi1 = psi1 + tensor({I(:,j),n})/sqrt(d);
end
% w = tensor(e0,{e1,n-1});
% psi2 = zeros(size(psi1));
% for j=1:n
%     psi2 = psi2 + sysexchange(w,[1,j],2*ones(1,n));
% end
% psi2 = psi2/norm(psi2);

% psi1 = randPsi(d^n);
psi2 = randPsi(d^n);

%%
[vertices1,simplices1,mx1] = compute_weights(psi1,mode,d,n);
[vertices2,simplices2,mx2] = compute_weights(psi2,mode,d,n);

%% 
options1.filename = 'barcodes1';
options2.filename = 'barcodes2';
intervals1 = compute_persistent_homology(vertices1,simplices1,mx1,n)
plot_barcodes(intervals1,options1)
intervals2 = compute_persistent_homology(vertices2,simplices2,mx2,n)
plot_barcodes(intervals2,options2)