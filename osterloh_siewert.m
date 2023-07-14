% paper: osterloh, siewiert, entanglement monotones and maximally entangled
% states in multipartite qubit systems
% https://arxiv.org/abs/quant-ph/0506073

e0 = [1;0]; e1=[0;1];

W4 = tensor(e1,e0,e0,e0) + tensor(e0,e1,e0,e0)+tensor(e0,e0,e1,e0)+tensor(e0,e0,e0,e1);
W6 = tensor(e1,{e0,5})+tensor(e0,e1,{e0,4})+tensor({e0,2},e1,{e0,3})...
    + tensor({e0,3},e1,{e0,2}) + tensor({e0,4},e1,e0) + tensor({e0,5},e1);
w6 = W6/norm(W6);

xi2 = 1/sqrt(2)*(tensor({e0,6})+tensor({e1,6}));
xi4 = 1/2*(tensor({e1,6})+tensor({e1,4},{e0,2})+tensor({e0,4},e1,e0)+tensor({e0,5},e1));
xi5 = 1/sqrt(6)*(sqrt(2)*tensor({e1,6})+tensor({e1,3},{e0,3})+tensor({e0,3},e1,e0,e0)...
    +tensor({e0,4},e1,e0)+tensor({e0,5},e1));
xi6 = 1/(2*sqrt(2))*(sqrt(3)*tensor({e1,6})+tensor({e1,2},{e0,4})+tensor({e0,2},W4));
xi7 = 1/(2*sqrt(2))*(sqrt(3)*tensor({e1,6})+W6);

A = diag([4/3,3/4]);
B = A;

chi4 = tensor(A,{eye(2),5})*xi4;
chi4 = chi4/norm(chi4);

chi5 = tensor(B,{eye(2),5})*xi5;
chi5 = chi5/norm(chi5);