test_find_atoms_by_field(
    [
        Atom(index=1, residue="R1"), 
        Atom(index=2, residue="R1"), 
        Atom(index=3, residue="R2"),
        Atom(index=4, residue="R2"),
    ],
    :residue,
    Dict([
            (:R1, [
                    Atom(index=1,residue="R1"),
                    Atom(index=2,residue="R1")
                  ]),
            (:R2, [
                    Atom(index=3,residue="R2"),
                    Atom(index=4,residue="R2"),
                  ])
        ]),
    "test a 4-atom system with 2 residues"
    )
