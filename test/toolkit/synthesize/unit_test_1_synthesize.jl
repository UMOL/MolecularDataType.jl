test_synthesize(
    [
        make_atom(atom_name="A1",residue_name="R1", residue_id=1, segment_name="SEG", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
    ],
    1,
    [
        make_residue(name="R1", id=1, segment="SEG", chain="C", system="S",
            atoms=[
                TopologicAtom(atom_name="A1"),
                ],
            coordinate=Array[
                [0., 1., 0.],
            ]),
    ],
    "test 0: simple one atom test")

test_synthesize(
    [
        make_atom(atom_name="A1",residue_name="R1", residue_id=1, segment_name="SEG", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A3",residue_name="R2", residue_id=2, segment_name="SEG", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A4",residue_name="R2", residue_id=2, segment_name="SEG", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A2",residue_name="R1", residue_id=1, segment_name="SEG", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
    ],
    1,
    [
        make_residue(name="R1", id=1, segment="SEG", chain="C", system="S",
            atoms=[
                TopologicAtom(atom_name="A1"),
                TopologicAtom(atom_name="A2")],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ]),
        make_residue(name="R2", id=2, segment="SEG", chain="C", system="S",
            atoms=[
                TopologicAtom(atom_name="A3"),
                TopologicAtom(atom_name="A4")],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ])
    ],
    "test 1: allow members of the same residue_name to be scattered in the input atom array")

test_synthesize(
    [
        make_atom(atom_name="A1",residue_name="R1", residue_id=1, segment_name="S1", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A3",residue_name="R2", residue_id=2, segment_name="S1", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A4",residue_name="R2", residue_id=2, segment_name="S1", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A2",residue_name="R1", residue_id=1, segment_name="S2", chain_name="C", system_name="S", coordinate=[0., 1., 0.]), 
    ],
    1,
    [
        make_residue(name="R1", id=1, segment="S1", chain="C", system="S",
            atoms=[TopologicAtom(atom_name="A1")],
            coordinate=Array[
                [0., 1., 0.],
            ]),
        make_residue(name="R2", id=2, segment="S1", chain="C", system="S",
            atoms=[
                TopologicAtom(atom_name="A3"),
                TopologicAtom(atom_name="A4")],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ]),
        make_residue(name="R1", id=1, segment="S2", chain="C", system="S",
            atoms=[TopologicAtom(atom_name="A2")],
            coordinate=Array[
                [0., 1., 0.],
            ]),
    ],
    "test 2: preserve the order of residues in different segments")