test_comparison_Segment(
    make_segment(name="S1"),
    make_segment(name="S1"),
    true, 
    "Compare segments of the same")

test_comparison_Segment(
    make_segment(name="S1"),
    make_segment(name="S2"),
    false, 
    "Compare segments of different names")

test_comparison_Segment(
    make_segment(residues=[make_topologic_residue(name="R1")]),
    make_segment(residues=[make_topologic_residue(name="R2")]),
    false, 
    "Compare segments consist of different residues")

test_comparison_Segment(
    make_segment(name="S1",
        residues=[
            make_topologic_residue(name="R1"),
            make_topologic_residue(name="R2"),
        ]
    ), 
    make_segment(name="S2",residues=[make_topologic_residue(name="R1")]),
    false, 
    "Compare segments of different number of residues")


