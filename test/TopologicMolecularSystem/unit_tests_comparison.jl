test_comparison_TopologicMolecularSystem(
    make_topologic_molecular_system(name="C"),
    make_topologic_molecular_system(name="C"),
    true, 
    "Compare molecular_systems with the same name")


test_comparison_TopologicMolecularSystem(
    make_topologic_molecular_system(name="A"),
    make_topologic_molecular_system(name="C"),
    false, 
    "Compare molecular_systems with the different names")

test_comparison_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[make_topologic_chain(name="A")]), 
    make_topologic_molecular_system(chains=[make_topologic_chain(name="B")]), 
    false, 
    "Compare molecular_systems that contain chains of different names")

test_comparison_TopologicMolecularSystem(
    make_topologic_molecular_system(chains=[make_topologic_chain(name="A")]), 
    make_topologic_molecular_system(chains=[
            make_topologic_chain(name="A"),
            make_topologic_chain(name="B"),
        ]
    ), 
    false, 
    "Compare molecular_systems with different number of chains")
