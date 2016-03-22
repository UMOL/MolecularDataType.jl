test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(name="SEG"), :name, "SEG")

test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(member_names=["M1"]), 
    :members, 
    [make_topologic_molecular_container(name="M1", level_count=0)])

test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(), 
    :member_count, 1, 1; msg="test 1")

test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(member_counts=[2]),
    :member_count, 2, 1; msg="test 2")

test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(),
    :member_count, 1, 1; msg="test 1")

test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(member_counts=[2]),
    :member_count, 2, 1; msg="test 2")

test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(level_count=2, member_counts=[3,4]),
    :member_count, 3, 1; msg="test 3")

test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(level_count=2, member_counts=[3,4]),
    :member_count, 12, 2; msg="test 4")

test_obtain_TopologicMolecularContainer(
    make_topologic_molecular_container(level_count=3, member_counts=[2,2,5], ),
    :member_count, 20, 3; msg="test 5")
