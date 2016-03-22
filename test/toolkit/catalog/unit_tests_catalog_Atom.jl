test_catalog_Atom(
    [
        make_atom(atom_name="A1"),
        make_atom(atom_name="A1"),
        make_atom(atom_name="A2"),
        make_atom(atom_name="A2"),
        make_atom(atom_name="A2"),
    ],
    :atom_name,
    [(:atom_name, "A1"), (:atom_name, "A2")],
    "catalog atom names")

test_catalog_Atom(
    [
        make_atom(residue_name="R1"),
        make_atom(residue_name="R1"),
        make_atom(residue_name="R2"),
        make_atom(residue_name="R2"),
        make_atom(residue_name="R2"),
    ],
    :residue_name,
    [(:residue_name, "R1"), (:residue_name, "R2")],
    "catalog residue names")

test_catalog_Atom(
    [
        make_atom(residue_id=2),
        make_atom(residue_id=1),
        make_atom(residue_id=2),
        make_atom(residue_id=1),
        make_atom(residue_id=2),
    ],
    :residue_id,
    [(:residue_id, 2), (:residue_id, 1)],
    "catalog residue_id")