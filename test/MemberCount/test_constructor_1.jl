"""
A test for constructor 1 for ``MemberCount``.

Arguments
-----------
children:Array{MemberCount,1}
    input

solution:MemberCount
    answer key
"""
function test_constructor_1_MemberCount(children, solution)
    println("----------------------------------")
    print_with_color(:blue, "Test MemberCount(children)\n\n")

    answer = MemberCount(children)

    @test answer == solution

    print_with_color(:green, "VERIFIED! MemberCount(children)\n\n")
    println("----------------------------------")

    return true 
end

test_constructor_1_MemberCount([MemberCount(1), MemberCount(2)], 
    MemberCount(3,[MemberCount(1), MemberCount(2)]))
