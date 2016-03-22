test_obtain_Chain(
    make_chain(segments=[make_topologic_segment(name="S")]), 
    :segments, 
    [make_topologic_segment(name="S")])

test_obtain_Chain(
    make_chain(segments=[
        make_topologic_segment(name="S1"),
        make_topologic_segment(name="S2")
    ]), 
    :segments, 
    [make_topologic_segment(name="S1"), make_topologic_segment(name="S2")])