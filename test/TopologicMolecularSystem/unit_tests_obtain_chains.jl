test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[make_topologic_chain(name="S")]), 
    :chains, 
    [make_topologic_chain(name="S")])

test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[
        make_topologic_chain(name="S1"),
        make_topologic_chain(name="S2")
    ]), 
    :chains, 
    [make_topologic_chain(name="S1"), make_topologic_chain(name="S2")])