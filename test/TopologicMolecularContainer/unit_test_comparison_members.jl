test_comparison_TopologicMolecularContainer(
    make_topologic_molecular_container(),
    make_topologic_molecular_container(),
    true, 
    "Compare :members that are the same")

test_comparison_TopologicMolecularContainer(
    make_topologic_molecular_container(member_names=["A"]), 
    make_topologic_molecular_container(member_names=["B"]), 
    false, 
    "Compare :members that contain members of different names")

test_comparison_TopologicMolecularContainer(
    make_topologic_molecular_container(member_counts=[1]), 
    make_topologic_molecular_container(member_counts=[2]),
    false, 
    "Compare :members that contain different number of members")
