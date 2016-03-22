test_constructor_1_Segment(
    [
        Residue(index=1, name="R1", segment="S1"),
        Residue(index=2, name="R1", segment="S1"), 
    ],
    "SYS1",
    Segment(name="S1", system="SYS1",
        residues=Dict([
            (Symbol("1"), Residue(index=1, name="R1", segment="S1") ),
            (Symbol("2"), Residue(index=2, name="R1", segment="S1") ),
        ])
    )
)
