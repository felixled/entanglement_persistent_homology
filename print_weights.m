function [] = print_weights(simplices)
S = length(simplices);
for j=1:S
    s = simplices{j}; 
    s1=s{1}; 
    s2 = s{2}; 
    disp(['Simplex: ',num2str(s1)])
    disp(['Weight: ',num2str(s2)])
end
end