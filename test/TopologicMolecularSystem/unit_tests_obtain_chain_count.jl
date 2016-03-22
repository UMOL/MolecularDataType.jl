test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[make_topologic_chain()]), 
    :chain_count, 1, "test 1")

test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[
        make_topologic_chain(),
        make_topologic_chain()
    ]), 
    :chain_count, 2, "test 2")