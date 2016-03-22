test_obtain_TopologicChain(
    make_topologic_chain(segments=[make_topologic_segment(name="S")]), 
    :segments, 
    [make_topologic_segment(name="S")])

test_obtain_TopologicChain(
    make_topologic_chain(segments=[
        make_topologic_segment(name="S1"),
        make_topologic_segment(name="S2")
    ]), 
    :segments, 
    [make_topologic_segment(name="S1"), make_topologic_segment(name="S2")])