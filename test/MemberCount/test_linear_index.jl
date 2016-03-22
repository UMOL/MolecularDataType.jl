"""
A test for linear_index().

Arguments
-----------
obj:MemberCount
    input object

indices:Tuple 
    input 

solution:Integer
    answer key 

msg="":AbstractString
    optional test message
"""
function test_tuple_index(obj::MemberCount, indices,solution, msg="")
    println("-----------------------------------")
    print_with_color(:blue, "Test linear_index()\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = linear_index(obj, indices)

    @test answer == solution

    print_with_color(:green, "VERIFIED! linear_index()\n\n")
    println("-----------------------------------")
    
    return true 
end

test_tuple_index(MemberCount([MemberCount(1), MemberCount(1)]), (2,), 2, "test 1")
test_tuple_index(MemberCount([MemberCount(1), 
    MemberCount([MemberCount(1), MemberCount(1)])]), (2,1), 2, "test 2")
test_tuple_index(MemberCount([MemberCount([MemberCount(1),MemberCount(1)]), 
    MemberCount([MemberCount(1), MemberCount(1)])]), (1,2), 2, "test 3")
