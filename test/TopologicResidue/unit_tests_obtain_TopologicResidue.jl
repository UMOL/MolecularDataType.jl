test_obtain_TopologicResidue(make_topologic_residue(id=1), :residue_id, 1)
test_obtain_TopologicResidue(make_topologic_residue(name="R1"), :residue_name, "R1")
test_obtain_TopologicResidue(make_topologic_residue(atoms=[TopologicAtom()]), :atoms, [TopologicAtom()])
test_obtain_TopologicResidue(make_topologic_residue(atoms=[TopologicAtom()]), :atom_count, 1)
test_obtain_TopologicResidue(make_topologic_residue(
        atoms=[
            TopologicAtom(), 
            TopologicAtom(), 
        ]
    ), 
    :atom_count, 
    2)
test_obtain_TopologicResidue(make_topologic_residue(name="R1",id=9), :identifier, 
    [(:residue_id, 9), (:residue_name, "R1")])
test_obtain_TopologicResidue(make_topologic_residue(id=1), :member_count_tree, member_count_tree(make_topologic_residue(id=1), 1), 1)
