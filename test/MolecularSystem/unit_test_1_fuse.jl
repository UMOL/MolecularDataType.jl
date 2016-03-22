test_fuse(
    [
        make_molecular_system(name="SYS1", 
            chains=[make_topologic_chain(name="A",
                segments=[make_topologic_segment(name="SEG1",
                    residues=[make_topologic_residue(id=1, name="R1",
                        atoms=[TopologicAtom(atom_name="A1")])
                    ])
                ])
            ],
            coordinate=Array[[1., 0., 1.]]
        ),
        make_molecular_system(name="SYS2", 
            chains=[make_topologic_chain(name="B",
                segments=[make_topologic_segment(name="SEG1",
                    residues=[make_topologic_residue(id=1, name="R1",
                        atoms=[TopologicAtom(atom_name="A2")])
                    ])
                ])
            ],
            coordinate=Array[[2., 0., 2.]]
        ),
    ],
    "NEW",
    make_molecular_system(name="NEW", 
        chains=[
            make_topologic_chain(name="A",
                segments=[make_topologic_segment(name="SEG1",
                    residues=[make_topologic_residue(id=1, name="R1",
                        atoms=[TopologicAtom(atom_name="A1")])
                    ])
                ]),
            make_topologic_chain(name="B",
                segments=[make_topologic_segment(name="SEG1",
                    residues=[make_topologic_residue(id=1, name="R1",
                        atoms=[TopologicAtom(atom_name="A2")])
                    ])
                ])
        ],
        coordinate=Array[[1., 0., 1.], [2., 0., 2.]]
    ),
    "merge 2 molecular systems"
)