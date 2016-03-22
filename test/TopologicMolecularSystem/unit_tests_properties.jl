test_properties(make_topologic_molecular_system(
    name="SYS1",
    crystal_symmetry=CrystalSymmetry(lattice="P"),
    chains=[make_topologic_chain(name="A")]),
    true,
    [
        (:system_name, "SYS1"),
        (:crystal_symmetry, CrystalSymmetry(lattice="P")),
        (:members, [make_topologic_chain(name="A")])
    ]
)

test_properties(make_topologic_molecular_system(
    name="SYS1",
    crystal_symmetry=CrystalSymmetry(lattice="P"),
    chains=[make_topologic_chain(name="A")]),
    false,
    [
        (:system_name, "SYS1"),
        (:crystal_symmetry, CrystalSymmetry(lattice="P")),
    ]
)