test_convert_to_segment_dict(
    Dict([
        (:SEG1, 
            [
                Residue(index=1,segment="SEG1"),
                Residue(index=2,segment="SEG1"),
            ] 
        ),
        (:SEG2, 
            [
                Residue(index=1,segment="SEG2"),
                Residue(index=2,segment="SEG2"),
            ] 
        )
    ]),
    "S1",
    Dict([
        (:SEG1, Segment(
            [
                Residue(index=1,segment="SEG1"),
                Residue(index=2,segment="SEG1"),
            ] ; system="S1")),
        (:SEG2, Segment(
            [
                Residue(index=1,segment="SEG2"),
                Residue(index=2,segment="SEG2"),
            ]; system="S1"))
    ]),
    "test 2"
)