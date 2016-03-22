test_obtain_Residue(make_residue(id=1), :residue_id, 1)
test_obtain_Residue(make_residue(id=1), :id, 1)
test_obtain_Residue(make_residue(index=7), :index, 7)
test_obtain_Residue(make_residue(name="R1"), :residue_name, "R1")
test_obtain_Residue(make_residue(name="R1"), :name, "R1")
test_obtain_Residue(make_residue(segment="SEG1"), :segment_name, "SEG1")
test_obtain_Residue(make_residue(chain="C"), :chain_name, "C")
test_obtain_Residue(make_residue(system="SYS"), :system_name, "SYS")
test_obtain_Residue(make_residue(atoms=[TopologicAtom()]), :atoms, [TopologicAtom()])
test_obtain_Residue(make_residue(atoms=[TopologicAtom()]), :atom_count, 1)
test_obtain_Residue(make_residue(
        atoms=[
            TopologicAtom(), 
            TopologicAtom(), 
        ]
    ), 
    :atom_count, 
    2)
test_obtain_Residue(make_residue(
    coordinate=Array[[1., 1., 1.], [2., 2., 2.]]),
    :coordinate, Array[[1., 1., 1.], [2., 2., 2.]])
test_obtain_Residue(make_residue(id=1,name="R1"),
    :topology, make_topologic_residue(id=1,name="R1"))