test_comparison_MolecularSystem(
    make_molecular_system(name="A"),
    make_molecular_system(name="A"),
    true, 
    "Compare molecular systems with the same")

test_comparison_MolecularSystem(
    make_molecular_system(name="A"),
    make_molecular_system(name="B"),
    false, 
    "Compare molecular systems with different names")

test_comparison_MolecularSystem(
    make_molecular_system(chains=[make_topologic_chain(name="A")]),
    make_molecular_system(chains=[make_topologic_chain(name="B")]),
    false, 
    "Compare molecular systems with chains of different names")

test_comparison_MolecularSystem(
    make_molecular_system(chains=[make_topologic_chain(name="A")]),
    make_molecular_system(chains=[
            make_topologic_chain(name="A"),
            make_topologic_chain(name="B")
    ]),
    false, 
    "Compare molecular systems with different number of chains")