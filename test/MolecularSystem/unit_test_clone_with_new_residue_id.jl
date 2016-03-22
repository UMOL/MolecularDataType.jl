test_clone(
    make_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=1, name="R1",
                    atoms=[TopologicAtom(atom_name="CA")])
                ])
            ])
        ]),
    :fn_residue_id,
    (id)->id+9,
    make_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=10, name="R1",
                    atoms=[TopologicAtom(atom_name="CA")])
                ])
            ])
        ])
    ;msg="test single clone"
)