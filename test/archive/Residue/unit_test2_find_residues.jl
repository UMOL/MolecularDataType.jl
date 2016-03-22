# test-2 for find_residues()
test_find_residues(
    [
        Atom(index=1,residue_id=1),
        Atom(index=2,residue_id=1),
        Atom(index=3,residue_id=2),
    ],
    Dict([
            (UInt(1), [
                        Atom(index=1,residue_id=1),
                        Atom(index=2,residue_id=1),
                      ]),
            (UInt(2), [Atom(index=3,residue_id=2)]),
    ]),
    "unit test 2"
    )