% Comparing two 3-regular graphs on 6 vertices
n = 6;
G1 = zeros(n);
e1 = [1,2;1,3;1,6;2,3;2,5;3,4;4,5;4,6;5,6];
for j=1:size(e1,1)
    G1(e1(j,1),e1(j,2))=1;
end
G1 = G1 + G1';

G2 = zeros(n);
e2 = [1,2;1,4;1,6;2,3;2,5;3,4;4,5;3,6;5,6];
for j=1:size(e2,1)
    G2(e2(j,1),e2(j,2))=1;
end
G2 = G2 + G2';