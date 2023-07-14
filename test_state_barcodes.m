run javaplex/load_javaplex.m
import edu.stanford.math.plex4.*;

mode = 'state';
d = 2;
n = 6;

osterloh_siewert

psi1 = chi4;
psi2 = chi5;

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