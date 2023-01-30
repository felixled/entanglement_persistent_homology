% Comparing the Petersen graph to another 3-regular graph
n = 10;
G1 = zeros(n);
e1 = [1,2;1,5;1,6;2,3;2,7;3,4;3,8;4,5;4,9;5,10;6,8;6,9;7,9;7,10;8,10];
for j=1:size(e1,1)
    G1(e1(j,1),e1(j,2))=1;
end
G1 = G1 + G1';
% plot(graph(G1),'Layout','circle')

G2 = zeros(n);
e2 = [1,3;1,4;1,6;2,4;2,5;2,7;3,5;3,8;4,9;5,10;6,7;6,10;7,8;8,9;9,10];
for j=1:size(e2,1)
    G2(e2(j,1),e2(j,2))=1;
end
G2 = G2 + G2';
% figure
% plot(graph(G2),'Layout','circle')