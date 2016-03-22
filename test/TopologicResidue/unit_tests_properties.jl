test_properties(TopologicResidue(
    residue_id=10,
    residue_name="RES1",
    members=[TopologicAtom(atom_name="A")]),
    true,
    [
        (:residue_id, 10),
        (:residue_name, "RES1"),
        (:members, [TopologicAtom(atom_name="A")])
    ]
)

test_properties(TopologicResidue(
    residue_id=10,
    residue_name="RES1",
    members=[TopologicAtom(atom_name="A")]),
    false,
    [
        (:residue_id, 10),
        (:residue_name, "RES1"),
    ]
)