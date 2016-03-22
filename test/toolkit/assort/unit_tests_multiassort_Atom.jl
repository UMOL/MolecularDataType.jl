test_multiassort_Atom(
    [
        make_atom(residue_name="R1", residue_id=1, segment_name="S1", chain_name="A"),
        make_atom(residue_name="R1", residue_id=2, segment_name="S1", chain_name="A"),
        make_atom(residue_name="R1", residue_id=1, segment_name="S2", chain_name="A"),
        make_atom(residue_name="R1", residue_id=1, segment_name="S1", chain_name="B"),
        make_atom(residue_name="R1", residue_id=1, segment_name="S1", chain_name="A"),
    ],
    [:residue_id, :residue_name, :segment_name, :chain_name],
    Dict([
        (((:residue_id, 1), (:residue_name, "R1"), (:segment_name, "S1"), (:chain_name, "A")),
            [
                make_atom(residue_name="R1", residue_id=1, segment_name="S1", chain_name="A"),
                make_atom(residue_name="R1", residue_id=1, segment_name="S1", chain_name="A"),
            ]),
        (((:residue_id, 2), (:residue_name, "R1"), (:segment_name, "S1"), (:chain_name, "A")),[
                make_atom(residue_name="R1", residue_id=2, segment_name="S1", chain_name="A"),
            ]),
        (((:residue_id, 1), (:residue_name, "R1"), (:segment_name, "S2"), (:chain_name, "A")),[
                make_atom(residue_name="R1", residue_id=1, segment_name="S2", chain_name="A")
            ]),
        (((:residue_id, 1), (:residue_name, "R1"), (:segment_name, "S1"), (:chain_name, "B")),[
                make_atom(residue_name="R1", residue_id=1, segment_name="S1", chain_name="B"),
            ])
    ]),
    "assort by 4 different fields")
