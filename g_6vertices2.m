n = 6;
g1 = [0,1,1;0,0,1;0,0,0];
g1 = g1 + g1';
G1 = blkdiag(g1,g1);
% plot(graph(G1))

G2 = [0,1,0,0,0,1;0,0,1,0,0,0;0,0,0,1,0,0;0,0,0,0,1,0;0,0,0,0,0,1;0,0,0,0,0,0];
G2 = G2 + G2';
% plot(graph(G2))