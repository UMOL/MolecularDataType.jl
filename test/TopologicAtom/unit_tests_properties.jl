test_properties(TopologicAtom(
    atom_name="A",
    atom_type="AT",
    alt_location=' ',
    insertion=' ',
    occupancy=1.,
    beta=1.,
    element="C",
    charge=1),
    true,
    [
        (:atom_name, "A"),
        (:atom_type, "AT"),
        (:alt_location, ' '),
        (:insertion, ' '),
        (:occupancy, 1.),
        (:beta, 1.),
        (:element, "C"),
        (:charge, 1),
        (:members, [])
    ]
)

test_properties(TopologicAtom(
    atom_name="A",
    atom_type="AT",
    alt_location=' ',
    insertion=' ',
    occupancy=1.,
    beta=1.,
    element="C",
    charge=1),
    false,
    [
        (:atom_name, "A"),
        (:atom_type, "AT"),
        (:alt_location, ' '),
        (:insertion, ' '),
        (:occupancy, 1.),
        (:beta, 1.),
        (:element, "C"),
        (:charge, 1),
    ]
)