# entanglement_persistent_homology [![arXiv](https://img.shields.io/badge/arXiv-2307.07492-blue.svg?style=flat)](https://arxiv.org/abs/2307.07492) [![forthebadge cc-sa](http://ForTheBadge.com/images/badges/cc-sa.svg)](https://creativecommons.org/licenses/by-sa/4.0)

This is a collection of MATLAB scripts to reproduce the results of the paper 

Gergory A. Hamilton, Felix Leditzky: "Probing multipartite entanglement through persistent homology", [arXiv:2307.07492](https://arxiv.org/abs/2307.07492).

It computes and compares the persistent homology induced by the linear entropy of two quantum states. There is a special version that directly computes the homology of graph states.

## Prerequisites
- Matlab R2022b or newer (the codes uses the `dictionary` function which was implemented in R2022b).
- Javaplex: http://appliedtopology.github.io/javaplex/
- function `TrX` from Toby Cubitt's _quantinf_ package: https://www.dr-qubit.org/matlab/TrX.m

## How to use this script

To work with graph states, run [`test_graph_barcodes.m`](test_graph_barcodes.m). At the beginning of the script you should call an external script that generates two graphs in variables `G1` and `G2`, respectively. Some examples of pairs of graphs are located in the script files starting with `g_`. The default version calls [`g_6vertices.m`](g_6vertices.m), which is the example shown in Fig. 2 of the paper.

To work with arbitrary states on `n` systems of local dimension `d`, run [`test_state_barcodes.m`](test_state_barcodes.m). Create the two states to compare in the variables `psi1` and `psi2`, respectively. The default version calls [`osterloh_siewert.m`](osterloh_siewert.m), which is the example shown in Fig. 3 of the paper.

## List of script files
- [`compute_entropies.m`](compute_entropies.m): Computes a vector of all subsystem entropies of a given state, either for a graph state or a generic state.
- [`compute_persistent_homology.m`](compute_persistent_homology.m): Computes the persistent homology of a pair of list of vertices and simplices using the Javaplex package.
- [`compute_weights.m`](compute_weights.m): Computes the weights of all vertices and simplices of a given state, either for a graph state or a generic state.
- [`deformed_total_correlation.m`](deformed_total_correlation.m): Computes the deformed total correlation functional from eq.(2) in the paper for a given subset `A` of the `n` qubits using the entropy function specified in [`compute_entropies.m`](compute_entropies.m).
- [`graph_state_marginal.m`](graph_state_marginal.m): Computes the eigenvalues of the marginal of a graph state.
- [`print_weights.m`](print_weights.m): Auxiliary function to print the weights of simplices.
- [`subset2string.m`](subset2string.m): Auxiliary function that converts a subset of {1,...,n} into the corresponding binary string.
- [`test_graph_barcodes.m`](test_graph_barcodes.m): Test script to compute and compare the persistent homology of two given graph states.
- [`test_state_barcodes.m`](test_state_barcodes.m): Test script to compute and compare the persistent homology of two given states.

## List of example files
- [`g_6vertices.m`](g_6vertices.m): Example file with two graphs on 6 qubits with n-tangle 1 (Fig. 2 in the paper).
- [`g_6vertices2.m`](g_6vertices2.m): Example file with two graphs on 6 qubits with n-tangle 1.
- [`g_6vertices_3regular.m`](g_6vertices_3regular.m): Example file with two graphs on 6 qubits with n-tangle 1.
- [`g_8vertices.m`](g_8vertices.m): Example file with two graphs on 8 qubits with n-tangle 1.
- [`g_petersen_star.m`](g_petersen_star.m`): Example file with the Petersen graph and a star graph on 10 qubits, each with n-tangle 1.
- [`osterloh_siewert.m`](osterloh_siewert.m): Example file with the 6-qubit states from Osterloh, Siewert (https://arxiv.org/abs/quant-ph/0506073) and a variation used in Fig. 3 of the paper.