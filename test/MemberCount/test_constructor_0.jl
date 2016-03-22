"""
A test for constructor 0 for ``MemberCount``.

Arguments
-----------
count:Integer
    input

solution:MemberCount
    answer key
"""
function test_constructor_0_MemberCount(count, solution)
    println("----------------------------------")
    print_with_color(:blue, "Test MemberCount(count)\n\n")

    answer = MemberCount(count)

    @test answer == solution

    print_with_color(:green, "VERIFIED! MemberCount(count)\n\n")
    println("----------------------------------")

    return true 
end

test_constructor_0_MemberCount(7, MemberCount(7))
