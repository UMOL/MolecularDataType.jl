test_synthesize(
    [
        make_residue(name="R1", id=1, segment="SEG", chain="C", system="S",
            atoms=[
                make_topologic_atom(atom_name="A1"),
                ],
            coordinate=Array[
                [0., 1., 0.],
            ]),
    ],
    1,
    [
        make_segment(name="SEG", chain="C", system="S",
            residues=[make_topologic_residue(name="R1", id=1,
            atoms=[
                make_topologic_atom(atom_name="A1"),
                ])],
            coordinate=Array[[0., 1., 0.]])
    ],
    "test 0: Residue->Segment, simple one atom test")

test_synthesize(
    [
        make_residue(name="R1", id=1, segment="SEG1", chain="C", system="S", coordinate=Array[[0., 1., 0.]]), 
        make_residue(name="R2", id=1, segment="SEG2", chain="C", system="S", coordinate=Array[[0., 1., 0.]]), 
        make_residue(name="R2", id=2, segment="SEG2", chain="C", system="S", coordinate=Array[[0., 1., 0.]]), 
        make_residue(name="R1", id=2, segment="SEG1", chain="C", system="S", coordinate=Array[[0., 1., 0.]]), 
    ],
    1,
    [
        make_segment(name="SEG1", chain="C", system="S",
            residues=[
                make_topologic_residue(name="R1",id=1),
                make_topologic_residue(name="R1",id=2)],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ]),
        make_segment(name="SEG2", chain="C", system="S",
            residues=[
                make_topologic_residue(name="R2",id=1),
                make_topologic_residue(name="R2",id=2)],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ])
    ],
    "test 1: Residue->Segment, allow members of the same segment to be scattered in the input array")
