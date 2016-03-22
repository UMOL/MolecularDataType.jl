"""
A test for obtain() for ``MemberCount``.

Arguments
------------
obj:MemberCount
    input 

field:Symbol 
    target field name 

solution:Any 
    answer key


"""
function test_obtain_MemberCount(obj::MemberCount, field, solution)
    println("-------------------------------")
    print_with_color(:blue, "Test obtain(obj::MemberCount, :$(field))\n\n")

    answer = obtain(obj, field)

    @test answer == solution

    print_with_color(:green, "VERIFIED! obtain(obj::MemberCount, :$(field))\n\n")
    println("-------------------------------")

    return true
end

test_obtain_MemberCount(MemberCount([MemberCount(1), MemberCount(2)]), :count, 3)
test_obtain_MemberCount(MemberCount([MemberCount(1), MemberCount(2)]), :children, 
    [MemberCount(1), MemberCount(2)])
