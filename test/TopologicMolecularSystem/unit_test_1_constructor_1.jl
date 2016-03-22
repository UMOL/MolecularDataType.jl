test_constructor_1_TopologicMolecularSystem(
    [Atom(atom_name="CA", residue="RES", residue_id=7, segment="SEG", chain="C", system="S")],
    make_topologic_molecular_system(name="S",
        chains=[make_topologic_chain(name="C", 
            segments=[make_topologic_segment(name="SEG",
                residues=[make_topologic_residue(name="RES",id=7,
                    atoms=[TopologicAtom(name="CA", residue="RES", residue_id=7, segment="SEG", chain="C", system="S")
                    ])
                ])
            ])
        ])
)
