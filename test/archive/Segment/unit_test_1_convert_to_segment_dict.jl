test_convert_to_segment_dict(
    Dict([
        (:SEG1, [Residue(segment="SEG1")] ),
        (:SEG2, [Residue(segment="SEG2")] )
    ]),
    "S1",
    Dict([
        (:SEG1, Segment([Residue(segment="SEG1")]; system="S1")),
        (:SEG2, Segment([Residue(segment="SEG2")]; system="S1"))
    ]),
    "test 1"
)