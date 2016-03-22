test_obtain_Segment(make_segment(name="R1"), :name, "R1")
test_obtain_Segment(make_segment(name="R1"), :segment_name, "R1")
test_obtain_Segment(make_segment(index=7), :index, 7)
test_obtain_Segment(make_segment(chain="C"), :chain_name, "C")
test_obtain_Segment(make_segment(system="SYS"), :system_name, "SYS")
test_obtain_Segment(make_segment(residues=[make_topologic_residue()]), :residues, [make_topologic_residue()])
test_obtain_Segment(make_segment(residues=[make_topologic_residue()]), :atom_count, 1)
test_obtain_Segment(make_segment(residues=[make_topologic_residue()]), :residue_count, 1)
test_obtain_Segment(make_segment(
        residues=[
            make_topologic_residue(), 
            make_topologic_residue(), 
        ]
    ), 
    :atom_count, 
    2)
test_obtain_Segment(make_segment(
        residues=[
            make_topologic_residue(), 
            make_topologic_residue(), 
        ]
    ), 
    :residue_count, 
    2)
test_obtain_Segment(make_segment(
    coordinate=Array[[1., 1., 1.], [2., 2., 2.]]),
    :coordinate, Array[[1., 1., 1.], [2., 2., 2.]])
test_obtain_Segment(make_segment(name="R1"), :topology, 
    make_topologic_segment(name="R1"))
