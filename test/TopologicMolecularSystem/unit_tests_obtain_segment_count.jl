test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[make_topologic_chain()]), 
    :segment_count, 1, "test 1")

test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[
        make_topologic_chain(),
        make_topologic_chain()
    ]), 
    :segment_count, 2, "test 2")

test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[
        make_topologic_chain(segments=[
            make_topologic_segment(),
            make_topologic_segment()
        ]),
        make_topologic_chain(),
    ]), 
    :segment_count, 3, "test 3")