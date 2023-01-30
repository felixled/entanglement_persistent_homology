run javaplex/load_javaplex.m
import edu.stanford.math.plex4.*;
%%
g_6_vertices2
%%

[vertices1,simplices1,mx1] = compute_weights(G1);
[vertices2,simplices2,mx2] = compute_weights(G2);

graph1 = figure
plot(graph(G1))
title('Graph 1')
saveas(gcf,'graph1.png')
graph2 = figure
plot(graph(G2))
title('Graph 2')
saveas(gcf,'graph2.png')

options1.filename = 'barcodes1';
options2.filename = 'barcodes2';
intervals1 = compute_persistent_homology(vertices1,simplices1,mx1,n)
plot_barcodes(intervals1,options1)
intervals2 = compute_persistent_homology(vertices2,simplices2,mx2,n)
plot_barcodes(intervals2,options2)