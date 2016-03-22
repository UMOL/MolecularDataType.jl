test_member_count_tree(
    make_topologic_molecular_system(name="SYS", 
        chains=[make_topologic_chain(name="A",
            segments=[make_topologic_segment(name="SEG1",
                residues=[make_topologic_residue(id=1, name="R1",
                    atoms=[
                        TopologicAtom(atom_name="CA"),
                        ])
                ])
            ])
        ]),
    4,
    MemberCount([
        MemberCount([
            MemberCount([
                MemberCount([
                    MemberCount(1)
                    ])
                ])
            ])
        ]),
    "1 atom system"
)