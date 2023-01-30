% Comparing two 3-regular graphs on 6 vertices
n = 6;
G1 = zeros(n);
e1 = [1,3;2,4;3,4;3,5;4,6];
for j=1:size(e1,1)
    G1(e1(j,1),e1(j,2))=1;
end
G1 = G1 + G1';
% plot(graph(G1))

G2 = zeros(n);
e2 = [1,2;1,3;1,4;1,4;1,5;1,6];
for j=1:size(e2,1)
    G2(e2(j,1),e2(j,2))=1;
end
G2 = G2 + G2';
% plot(graph(G2))