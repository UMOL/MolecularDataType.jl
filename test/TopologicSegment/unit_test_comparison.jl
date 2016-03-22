test_comparison_TopologicSegment(
    make_topologic_segment(),
    make_topologic_segment(),
    true, 
    "Compare :residues that are the same")

test_comparison_TopologicSegment(
    make_topologic_segment(residues=[make_topologic_residue(id=1)]), 
    make_topologic_segment(residues=[make_topologic_residue(id=2)]), 
    false, 
    "Compare :residues that contain residues of different residue indices")

test_comparison_TopologicSegment(
    make_topologic_segment(residues=[make_topologic_residue(id=1)]), 
    make_topologic_segment(residues=[
            make_topologic_residue(id=1),
            make_topologic_residue(id=2),
        ]
    ), 
    false, 
    "Compare :residues that contain different number of residues")
