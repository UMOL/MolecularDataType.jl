test_convert_to_residue_dict(
    Dict([
        (:R1, [Atom(residue="R1")] ),
        (:R2, [Atom(residue="R2")] )
    ]),
    "S1",
    [
        Residue([Atom(residue="R1")]; system="S1"),
        Residue([Atom(residue="R2")]; system="S1")
    ],
    "test 1"
)