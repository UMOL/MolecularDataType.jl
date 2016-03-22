"""
A test for tuple_index().

Arguments
-----------
obj:MemberCount
    input object

index:Integer
    input 

solution:Tuple
    answer key 

msg="":AbstractString
    optional test message
"""
function test_tuple_index(obj::MemberCount, index,solution, msg="")
    println("-----------------------------------")
    print_with_color(:blue, "Test tuple_index()\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = tuple_index(obj, index)

    @test answer == solution

    print_with_color(:green, "VERIFIED! tuple_index()\n\n")
    println("-----------------------------------")
    
    return true 
end

test_tuple_index(MemberCount([MemberCount(2), MemberCount(3)]), 3, (2,), "test 1")
test_tuple_index(MemberCount([MemberCount(2), 
    MemberCount([MemberCount(3), MemberCount(5)])]), 4, (2,1), "test 2")
test_tuple_index(MemberCount([MemberCount([MemberCount(3),MemberCount(2)]), 
    MemberCount([MemberCount(3), MemberCount(5)])]), 4, (1,2), "test 3")
