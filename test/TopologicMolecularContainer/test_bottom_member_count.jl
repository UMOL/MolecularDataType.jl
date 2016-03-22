"""
A test for bottom_member_count().

Arguments
------------
container:TopologicMolecularContainer
    input container 

solution:Integer
    answer key

msg="":AbstractString
    option test message
"""
function test_bottom_member_count(container, solution, msg="")
    println("-----------------------------------------")
    print_with_color(:blue, "Test bottom_member_count()\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = bottom_member_count(container)

    @test answer == solution

    print_with_color(:green, "VERIFIED! bottom_member_count()\n\n")
    println("-----------------------------------------")

    return true
end

test_bottom_member_count(make_topologic_molecular_container(level_count=1),1, "test 1")
test_bottom_member_count(make_topologic_molecular_container(level_count=2, member_counts=[2,3]),6, "test 2")