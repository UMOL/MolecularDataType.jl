test_properties(TopologicSegment(
    segment_name="SEG1",
    members=[TopologicAtom(atom_name="A")]),
    true,
    [
        (:segment_name, "SEG1"),
        (:members, [TopologicAtom(atom_name="A")])
    ]
)

test_properties(TopologicSegment(
    segment_name="SEG1",
    members=[TopologicAtom(atom_name="A")]),
    false,
    [
        (:segment_name, "SEG1"),
    ]
)