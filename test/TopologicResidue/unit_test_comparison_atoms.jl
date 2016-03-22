test_comparison_TopologicResidue(
    make_topologic_residue(id=1),
    make_topologic_residue(id=1),
    true, 
    "Compare :atoms that are the same")

test_comparison_TopologicResidue(
    make_topologic_residue(id=1),
    make_topologic_residue(id=2),
    false, 
    "Compare :atoms that contain atoms of different indices")

test_comparison_TopologicResidue(
    make_topologic_residue(id=1, atoms=[TopologicAtom(atom_name="H")]),
    make_topologic_residue(id=1, atoms=[TopologicAtom(atom_name="H1")]),
    false, 
    "Compare :atoms that contain atoms of different atom names")

test_comparison_TopologicResidue(
    make_topologic_residue(id=1,
        atoms=[
            TopologicAtom(atom_name="H"),
            TopologicAtom(atom_name="H2"),
        ]
    ), 
    make_topologic_residue(id=1,atoms=[TopologicAtom(atom_name="H")]),
    false, 
    "Compare :atoms that contain different number of atoms")


