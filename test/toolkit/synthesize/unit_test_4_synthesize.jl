test_synthesize(
    [
        make_chain(name="A", system="S1", coordinate=Array[[0., 1., 0.]]), 
        make_chain(name="A", system="S2", coordinate=Array[[0., 1., 0.]]), 
        make_chain(name="B", system="S2", coordinate=Array[[0., 1., 0.]]), 
        make_chain(name="B", system="S1", coordinate=Array[[0., 1., 0.]]), 
    ],
    1,
    [
        make_molecular_system(name="S1", 
            chains=[
                make_topologic_chain(name="A"),
                make_topologic_chain(name="B")],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ]),
        make_molecular_system(name="S2",
            chains=[
                make_topologic_chain(name="A"),
                make_topologic_chain(name="B")],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ])
    ],
    "test 1: chain->system, allow members from the same molecular system to be scattered in the input array")
