test_move!(
     make_molecular_system(name="SYS1", 
            chains=[make_topologic_chain(name="A",
                segments=[make_topologic_segment(name="SEG1",
                    residues=[make_topologic_residue(id=1, name="R1",
                        atoms=[
                            TopologicAtom(atom_name="A1"),
                            TopologicAtom(atom_name="A2"),
                            ])
                    ])
                ])
            ],
            coordinate=Array[[1., 1., 1.], [2., 2., 2.]]
    ),
    (array)->3*array,
    make_molecular_system(name="SYS1", 
            chains=[make_topologic_chain(name="A",
                segments=[make_topologic_segment(name="SEG1",
                    residues=[make_topologic_residue(id=1, name="R1",
                        atoms=[
                            TopologicAtom(atom_name="A1"),
                            TopologicAtom(atom_name="A2"),
                            ])
                    ])
                ])
            ],
            coordinate=Array[[3., 3., 3.], [6., 6., 6.]]
    ),
)