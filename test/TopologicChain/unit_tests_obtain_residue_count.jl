test_obtain_TopologicChain(
    make_topologic_chain(segments=[
        make_topologic_segment(residues=[make_topologic_residue()])
    ]),
    :residue_count, 1, "test 1")

test_obtain_TopologicChain(
    make_topologic_chain(segments=[
        make_topologic_segment(residues=[
            make_topologic_residue(), 
            make_topologic_residue()
        ])
    ]),
    :residue_count, 2, "test 2")

test_obtain_TopologicChain(
    make_topologic_chain(segments=[
        make_topologic_segment(residues=[make_topologic_residue()]),
        make_topologic_segment(residues=[make_topologic_residue()]),
    ]),
    :residue_count, 2, "test 3")