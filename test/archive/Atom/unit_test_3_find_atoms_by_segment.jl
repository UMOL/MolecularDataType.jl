test_find_atoms_by_field(
    [
        Atom(index=1, segment="S1"), 
        Atom(index=2, segment="S1"), 
        Atom(index=3, segment="S2"),
        Atom(index=4, segment="S2"),
    ],
    :segment,
    Dict([
            (:S1, [
                    Atom(index=1,segment="S1"),
                    Atom(index=2,segment="S1")
                  ]),
            (:S2, [
                    Atom(index=3,segment="S2"),
                    Atom(index=4,segment="S2"),
                  ])
        ]),
    "test a 4-atom system with 2 segments"
    )
