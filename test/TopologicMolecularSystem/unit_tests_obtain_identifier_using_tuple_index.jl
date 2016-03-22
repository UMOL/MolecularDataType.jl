test_obtain_identifier_MolecularSystem(
    make_topologic_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=1, name="R1",
                    atoms=[TopologicAtom(atom_name="CA")])
                ])
            ])
        ]),
    (1,1,1,1),
    [(:system_name, "SYS"),(:chain_name, "A"),(:segment_name, "SEG1"),(:residue_id,1),(:residue_name,"R1")],
    "test 1")

test_obtain_identifier_MolecularSystem(
    make_topologic_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=1, name="R1",
                    atoms=[TopologicAtom(atom_name="CA")])
                ])
            ])
        ]),
    (1,1),
    [(:system_name, "SYS"),(:chain_name, "A"),(:segment_name, "SEG1")],
    "test 2")

test_obtain_identifier_MolecularSystem(
    make_topologic_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[
                make_topologic_residue(id=1, name="R1",
                    atoms=[TopologicAtom(atom_name="CA")]),
                make_topologic_residue(id=2, name="R2",
                    atoms=[TopologicAtom(atom_name="CA")]),
                ])
            ])
        ]),
    (1,1,2,1),
    [(:system_name, "SYS"),(:chain_name, "A"),(:segment_name, "SEG1"),(:residue_id,2),(:residue_name, "R2")],
    "test 3")