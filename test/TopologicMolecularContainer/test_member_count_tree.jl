"""
A test for member_count_tree().

Arguments
------------
container:TopologicMolecularContainer
    input 

level_count:Integer
    number of levels

solution:MemberCount 
    answer key

msg="":AbstractString
    optional test message
"""
function test_member_count_tree(container::TopologicMolecularContainer,
    level_count::Integer, solution::MemberCount, msg="")
    println("-----------------------------------")
    print_with_color(:blue, "test member_count_tree()\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = member_count_tree(container, level_count)

    @test answer == solution

    print_with_color(:green, "VERIFIED! member_count_tree()\n\n")
    println("-----------------------------------")

    return true
end
test_member_count_tree(
    make_topologic_molecular_container(level_count=1, member_counts=[1]),
    1,
    MemberCount([MemberCount(1)]), "1 level; 1 member")
test_member_count_tree(
    make_topologic_molecular_container(level_count=1, member_counts=[2]),
    1,
    MemberCount([MemberCount(1),MemberCount(1)]), "1 level; 2 members")
test_member_count_tree(
    make_topologic_molecular_container(level_count=2, member_counts=[2,2]),
    2,
    MemberCount([
        MemberCount([MemberCount(1),MemberCount(1)]),
        MemberCount([MemberCount(1),MemberCount(1)]),
        ]), "2 levels; 2 members/level/container")