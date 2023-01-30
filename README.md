# entanglement_persistent_homology

This collection of MATLAB scripts computes the persistent homology induced by the linear entropy of either graph states or arbitrary states.

To use graph states, run [`test_graph_barcodes.m`](test_graph_barcodes.m). At the beginning of the script you should call an external script that generates two graphs in variables `G1` and `G2`, respectively. Some examples of pairs of graphs are located in the script files starting with `g_`.

To use arbitrary states on `n` systems of local dimension `d`, run [`test_state_barcodes.m`](test_state_barcodes.m). Create the two states to compare in the variables `psi1` and `psi2`, respectively.
