n = 8;
% two star graphs on 4 vertices each, n-tangle = 1
g1 = [0,1,1,1;0,0,0,0;0,0,0,0;0,0,0,0];
g1 = g1 + g1';
G1 = blkdiag(g1,g1);

% 5-regular graph on 8 vertices with n-tangle = 1
G2 = zeros(n);
e2 = [1,2;1,3;1,5;1,7;1,8;2,3;2,4;2,6;2,8;3,4;3,5;3,7;4,5;4,6;4,8;5,6;5,7;6,7;6,8;7,8];
for j=1:size(e2,1)
    G2(e2(j,1),e2(j,2))=1;
end
G2 = G2 + G2';