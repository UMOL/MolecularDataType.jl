test_multiassort(
    [
        Atom(atom_name="A1", residue_name="R1", residue_id=1, segment_name="SEG1", chain_name="A", system_name="SYS"),
    ],
    [:residue_name, :residue_id, :segment_name, :chain_name, :system_name],
    Dict([(
        ((:residue_name, "R1"), (:residue_id, 1), (:segment_name, "SEG1"), (:chain_name, "A"), (:system_name, "SYS")), 
        [Atom(atom_name="A1", residue_name="R1", residue_id=1, segment_name="SEG1", chain_name="A", system_name="SYS")]
        )]),
    "test 1"
)