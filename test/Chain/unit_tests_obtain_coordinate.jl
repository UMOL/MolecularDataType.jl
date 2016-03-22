test_obtain_Chain(
    make_chain(coordinate=Array[[1., 0., 0.]]),
    :coordinate, Array[[1., 0., 0.]], "coordinate")

test_obtain_Chain(
    make_chain(coordinate=Array[
        [1., 0., 0.],
        [1., 1., 0.],
        ]),
    :coordinate, 
    Array[
    [1., 0., 0.],
    [1., 1., 0.],
    ],
    "coordinate")