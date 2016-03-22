test_obtain_MolecularSystem(
    make_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=1, name="R1",
                    atoms=[TopologicAtom(atom_name="A1"), TopologicAtom(atom_name="A2")])
                ])
            ])
        ],
        coordinate=Array[[1., 0., 1.], [2., 0., 2.]]),
    :atom, 
    Atom(atom_name="A2", residue_name="R1", residue_id=1, 
        segment_name="SEG1", chain_name="A", system_name="SYS", 
        coordinate=[2., 0., 2.]), 
    2)

test_obtain_MolecularSystem(
    make_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=1, name="R1",
                    atoms=[TopologicAtom(atom_name="A1"), TopologicAtom(atom_name="A2")])
                ])
            ])
        ],
        coordinate=Array[[1., 0., 1.], [2., 0., 2.]]),
    :atom, 
    Atom(atom_name="A2", residue_name="R1", residue_id=1, 
        segment_name="SEG1", chain_name="A", system_name="SYS", 
        coordinate=[2., 0., 2.]), 
    (1,1,1,2))
