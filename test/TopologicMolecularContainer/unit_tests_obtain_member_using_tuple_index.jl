test_obtain_member_using_tuple_index(
    make_topologic_molecular_container(level_count=1, member_counts=[2], member_names=["A", "B"]),
    (2,),
    make_topologic_molecular_container(level_count=0,name="B"),
    "test 1")

test_obtain_member_using_tuple_index(
    make_topologic_molecular_container(level_count=2, member_counts=[2,2]),
    (1,2),
    make_topologic_molecular_container(level_count=0,name="0-1-2"),
    "test 2")

test_obtain_member_using_tuple_index(
    make_topologic_molecular_container(level_count=2, member_counts=[2,2]),
    (2,1),
    make_topologic_molecular_container(level_count=0,name="0-2-1"),
    "test 3")

test_obtain_member_using_tuple_index(
    make_topologic_molecular_container(level_count=3, member_counts=[2,2,2]),
    (2,2,1),
    make_topologic_molecular_container(level_count=0,name="0-2-2-1"),
    "test 4")