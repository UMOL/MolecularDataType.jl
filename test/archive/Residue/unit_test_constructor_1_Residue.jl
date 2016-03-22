test_constructor_1_Residue(
    [
        Atom(index=1, residue="R1", residue_id=1, segment="S1"),
        Atom(index=2, residue="R1", residue_id=1, segment="S1"), 
    ],
    "SYS1",
    Residue(index=1, name="R1", segment="S1", system="SYS1",
        atoms=Dict([
            (Symbol("1"), Atom(index=1, residue="R1", residue_id=1, segment="S1") ),
            (Symbol("2"), Atom(index=2, residue="R1", residue_id=1, segment="S1") ),
        ])
    )
)
