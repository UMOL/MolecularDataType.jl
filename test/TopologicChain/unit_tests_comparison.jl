test_comparison_TopologicChain(
    make_topologic_chain(name="C"),
    make_topologic_chain(name="C"),
    true, 
    "Compare chains with the same name")


test_comparison_TopologicChain(
    make_topologic_chain(name="A"),
    make_topologic_chain(name="C"),
    false, 
    "Compare chains with different names")

test_comparison_TopologicChain(
    make_topologic_chain(segments=[make_topologic_segment(name="A")]), 
    make_topologic_chain(segments=[make_topologic_segment(name="B")]), 
    false, 
    "Compare chains that contain segments of different names")

test_comparison_TopologicChain(
    make_topologic_chain(segments=[make_topologic_segment(name="A")]), 
    make_topologic_chain(segments=[
            make_topologic_segment(name="A"),
            make_topologic_segment(name="B"),
        ]
    ), 
    false, 
    "Compare chains with different number of segments")
