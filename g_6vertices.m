n = 6;
% handle bar graph
G1 = zeros(n);
G1(1,2)=1; G1(2,3)=1; G1(2,5)=1; G1(4,5)=1; G1(5,6)= 1; G1=G1+G1';
% star graph (GHZ state)
G2 = zeros(n);
G2(1,5)=1; G2(2,5)=1;G2(3,5)=1;G2(4,5)=1;G2(5,6)=1; G2=G2+G2';