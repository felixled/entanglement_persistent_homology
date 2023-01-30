# entanglement_persistent_homology

This collection of MATLAB scripts computes and compares the persistent homology induced by the linear entropy of two quantum states. There is a special version that directly computes the homology of graph states.

## Prerequisites
- Matlab R2022b or newer (the codes uses the `dictionary` function which was implemented in R2022b).
- Javaplex: http://appliedtopology.github.io/javaplex/

## How to use this script

To use graph states, run [`test_graph_barcodes.m`](test_graph_barcodes.m). At the beginning of the script you should call an external script that generates two graphs in variables `G1` and `G2`, respectively. Some examples of pairs of graphs are located in the script files starting with `g_`.

To use arbitrary states on `n` systems of local dimension `d`, run [`test_state_barcodes.m`](test_state_barcodes.m). Create the two states to compare in the variables `psi1` and `psi2`, respectively.

## List of script files
- [`compute_functional.m`](compute_functional.m): Computes the entropy functional from eq.(2) in the paper draft for a given subset `A` of the `n` qubits.
- [`compute_graph_entropies.m`](compute_graph_entropies.m): 
