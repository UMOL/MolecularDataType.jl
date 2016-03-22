test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(),
    :atom_count, 1, "test 1")

test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[
        make_topologic_chain(segments=[
            make_topologic_segment(), 
            make_topologic_segment()
        ])
    ]),
    :atom_count, 2, "test 2")

test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[
        make_topologic_chain(segments=[make_topologic_segment()]),
        make_topologic_chain(segments=[make_topologic_segment()]),
    ]),
    :atom_count, 2, "test 3")

test_obtain_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[
        make_topologic_chain(segments=[make_topologic_segment()]),
        make_topologic_chain(segments=[make_topologic_segment(
            residues=[make_topologic_residue(), make_topologic_residue()])]),
    ]),
    :atom_count, 3, "test 4")