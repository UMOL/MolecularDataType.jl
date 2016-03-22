test_synthesize(
    [
        make_segment(name="R1", chain="A", system="S", coordinate=Array[[0., 1., 0.]]), 
        make_segment(name="R1", chain="B", system="S", coordinate=Array[[0., 1., 0.]]), 
        make_segment(name="R2", chain="B", system="S", coordinate=Array[[0., 1., 0.]]), 
        make_segment(name="R2", chain="A", system="S", coordinate=Array[[0., 1., 0.]]), 
    ],
    1,
    [
        make_chain(name="A", system="S",
            segments=[
                make_topologic_segment(name="R1"),
                make_topologic_segment(name="R2")],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ]),
        make_chain(name="B", system="S",
            segments=[
                make_topologic_segment(name="R1"),
                make_topologic_segment(name="R2")],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ])
    ],
    "test 1: Segment->Chain, allow members from the same chain to be scattered in the input array")
