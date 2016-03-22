# test-2 for find_segments()
test_find_segments(
    [
        Atom(index=1,segment="SEG1"),
        Atom(index=2,segment="SEG1"),
        Atom(index=1,segment="SEG2"),
    ],
    Dict([
            (:SEG1, [
                        Atom(index=1,segment="SEG1"),
                        Atom(index=2,segment="SEG1"),
                    ]),
            (:SEG2, [Atom(index=1,segment="SEG2")]),
    ]),
    "unit test 2"
    )