test_obtain_TopologicSegment(
    make_topologic_segment(name="SEG"), :name, "SEG")

test_obtain_TopologicSegment(
    make_topologic_segment(name="SEG"), :segment_name, "SEG")

test_obtain_TopologicSegment(
    make_topologic_segment(residues=[make_topologic_residue(name="RES")]), 
    :residues, 
    [make_topologic_residue(name="RES")])

test_obtain_TopologicSegment(
    make_topologic_segment(residues=[make_topologic_residue()]), 
    :residue_count, 1, "test 1")

test_obtain_TopologicSegment(
    make_topologic_segment(residues=[
        make_topologic_residue(),
        make_topologic_residue()
    ]), 
    :residue_count, 2, "test 2")

test_obtain_TopologicSegment(
    make_topologic_segment(residues=[
        make_topologic_residue(atoms=[TopologicAtom()])
    ]),
    :atom_count, 1, "test 1")

test_obtain_TopologicSegment(
    make_topologic_segment(residues=[
        make_topologic_residue(atoms=[
            TopologicAtom(), 
            TopologicAtom()
        ])
    ]),
    :atom_count, 2, "test 2")

test_obtain_TopologicSegment(
    make_topologic_segment(residues=[
        make_topologic_residue(atoms=[TopologicAtom()]),
        make_topologic_residue(atoms=[TopologicAtom()]),
    ]),
    :atom_count, 2, "test 3")

test_obtain_TopologicSegment(
    make_topologic_segment(name="SEG"), :identifier, [(:segment_name, "SEG")])
