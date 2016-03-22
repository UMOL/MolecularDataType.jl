test_obtain_TopologicChain(
    make_topologic_chain(segments=[make_topologic_segment()]), 
    :segment_count, 1, "test 1")

test_obtain_TopologicChain(
    make_topologic_chain(segments=[
        make_topologic_segment(),
        make_topologic_segment()
    ]), 
    :segment_count, 2, "test 2")