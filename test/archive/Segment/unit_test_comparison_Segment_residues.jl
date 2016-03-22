test_comparison_Segment(
    make_segment(),
    make_segment(),
    true, 
    "Compare :residues that are the same")

test_comparison_Segment(
    make_segment(residues=Dict([(Symbol("1"), make_residue(index=1))])), 
    make_segment(residues=Dict([(Symbol("2"), make_residue(index=2))])), 
    false, 
    "Compare :residues that contain residues of different residue indices")

test_comparison_Segment(
    make_segment(residues=Dict([(Symbol("1"), make_residue(index=1))])), 
    make_segment(residues=Dict([
            (Symbol("1"), make_residue(index=1)),
            (Symbol("2"), make_residue(index=2)),
        ])), 
    false, 
    "Compare :residues that contain different number of residues")
