run javaplex/load_javaplex.m
import edu.stanford.math.plex4.*;
%%
% either create two graphs G1 and G2 on the same number of vertices, or
% choose one of the following example files:
g_3_regular_6_vertices

mode = 'graph';
n = 6;
[G1,G2] = import_graphs();
%%

[vertices1,simplices1,mx1] = compute_weights(G1,mode);
[vertices2,simplices2,mx2] = compute_weights(G2,mode);

graph1 = figure;
plot(graph(G1))
title('Graph 1')
saveas(gcf,'graph1.png')
graph2 = figure;
plot(graph(G2))
title('Graph 2')
saveas(gcf,'graph2.png')

options1.filename = 'barcodes1';
options2.filename = 'barcodes2';
intervals1 = compute_persistent_homology(vertices1,simplices1,mx1,n)
plot_barcodes(intervals1,options1)
intervals2 = compute_persistent_homology(vertices2,simplices2,mx2,n)
plot_barcodes(intervals2,options2)