test_one_clone(
    make_molecular_system(coordinate=Array[[1., 0., 0]]),
    Dict([(:coordinate, Array[[2., 2., 2.]])]),
    make_molecular_system(coordinate=Array[[2., 2., 2.]]),
    "new coordinate")