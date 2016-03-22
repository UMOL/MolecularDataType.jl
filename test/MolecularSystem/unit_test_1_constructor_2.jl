test_constructor_2_MolecularSystem(
    [Atom(atom_name="CA", residue_name="R1", residue_id=1, segment_name="SEG1", chain_name="A", system_name="SYS", coordinate=[1., 0., 1.])],
    make_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=1, name="R1",
                    atoms=[TopologicAtom(atom_name="CA")])
                ])
            ])
        ],
        coordinate=Array[[1., 0., 1.]])
)