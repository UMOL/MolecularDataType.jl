test_constructor_0_FullMolecularContainerIterator(
    Atom,
    member_count_tree(
        make_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=1, name="R1",
                    atoms=[TopologicAtom(atom_name="A1"), TopologicAtom(atom_name="A2")])
                ])
            ])
        ],
        coordinate=Array[[1., 0., 1.], [2., 0., 2.]]),
        4
    ),
    make_molecular_system(name="SYS", 
    chains=[make_topologic_chain(name="A",
        segments=[make_topologic_segment(name="SEG1",
            residues=[make_topologic_residue(id=1, name="R1",
                atoms=[TopologicAtom(atom_name="A1"), TopologicAtom(atom_name="A2")])
            ])
        ])
    ],
    coordinate=Array[[1., 0., 1.], [2., 0., 2.]]),
    FullMolecularContainerIterator(Atom, 2, 
        member_count_tree(
            make_molecular_system(name="SYS", 
            chains=[make_topologic_chain(name="A",
                segments=[make_topologic_segment(name="SEG1",
                    residues=[make_topologic_residue(id=1, name="R1",
                        atoms=[TopologicAtom(atom_name="A1"), TopologicAtom(atom_name="A2")])
                    ])
                ])
            ],
            coordinate=Array[[1., 0., 1.], [2., 0., 2.]]),
            4
        ),
        [make_molecular_system(name="SYS", 
            chains=[make_topologic_chain(name="A",
                segments=[make_topologic_segment(name="SEG1",
                    residues=[make_topologic_residue(id=1, name="R1",
                        atoms=[TopologicAtom(atom_name="A1"), TopologicAtom(atom_name="A2")])
                    ])
                ])
            ],
            coordinate=Array[[1., 0., 1.], [2., 0., 2.]])
        ]
    )
)
