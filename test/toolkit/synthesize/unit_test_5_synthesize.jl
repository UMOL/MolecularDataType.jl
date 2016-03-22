test_synthesize(
    [
        make_atom(atom_name="A1",residue_name="R1", residue_id=1, segment_name="SEG1", chain_name="A", system_name="S1", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A3",residue_name="R1", residue_id=1, segment_name="SEG1", chain_name="A", system_name="S2", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A4",residue_name="R2", residue_id=2, segment_name="SEG2", chain_name="B", system_name="S2", coordinate=[0., 1., 0.]), 
        make_atom(atom_name="A2",residue_name="R2", residue_id=2, segment_name="SEG2", chain_name="B", system_name="S1", coordinate=[0., 1., 0.]), 
    ],
    4,
    [
        make_molecular_system(name="S1", 
            chains=[
                make_topologic_chain(name="A", 
                    segments=[make_topologic_segment(name="SEG1",
                            residues=[make_topologic_residue(name="R1",id=1,
                                atoms=[
                                    make_topologic_atom(atom_name="A1"), 
                                ])
                            ]),
                    ]),
                make_topologic_chain(name="B",
                    segments=[make_topologic_segment(name="SEG2",
                            residues=[make_topologic_residue(name="R2",id=2,
                                atoms=[
                                    make_topologic_atom(atom_name="A2"), 
                                ])
                            ]),
                    ])
            ],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ]),
         make_molecular_system(name="S2", 
            chains=[
                make_topologic_chain(name="A", 
                    segments=[make_topologic_segment(name="SEG1",
                            residues=[make_topologic_residue(name="R1",id=1,
                                atoms=[
                                    make_topologic_atom(atom_name="A3"), 
                                ])
                            ]),
                    ]),
                make_topologic_chain(name="B",
                    segments=[make_topologic_segment(name="SEG2",
                            residues=[make_topologic_residue(name="R2",id=2,
                                atoms=[
                                    make_topologic_atom(atom_name="A4"), 
                                ])
                            ]),
                    ])
            ],
            coordinate=Array[
                [0., 1., 0.],
                [0., 1., 0.],
            ]),
        
    ],
    "test 1: make_atom->make_molecular_system in one step")
