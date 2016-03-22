test_obtain_Chain(
    make_chain(),
    :atom_count, 1, "test 1")

test_obtain_Chain(
    make_chain(segments=[
        make_topologic_segment(residues=[
            make_topologic_residue(), 
            make_topologic_residue()
        ])
    ]),
    :atom_count, 2, "test 2")

test_obtain_Chain(
    make_chain(segments=[
        make_topologic_segment(residues=[make_topologic_residue()]),
        make_topologic_segment(residues=[make_topologic_residue()]),
    ]),
    :atom_count, 2, "test 3")

test_obtain_Chain(
    make_chain(segments=[
        make_topologic_segment(residues=[make_topologic_residue()]),
        make_topologic_segment(residues=[make_topologic_residue(
            atoms=[TopologicAtom(), TopologicAtom()])]),
    ]),
    :atom_count, 3, "test 4")