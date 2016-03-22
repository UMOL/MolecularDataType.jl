test_convert_to_residue_dict(
    Dict([
        (:R1, [Atom(index=1, residue="R1"), Atom(index=2, residue="R1")] ),
        (:R2, [Atom(index=1, residue="R2"), Atom(index=2, residue="R2")] )
    ]),
    "S1",
    Dict([
        (:R1, Residue([Atom(index=1, residue="R1"), Atom(index=2, residue="R1")]; system="S1")),
        (:R2, Residue([Atom(index=1, residue="R2"), Atom(index=2, residue="R2")]; system="S1"))
    ]),
    "test 2"
)