"""
A test for obtain_member() using tuple-indexing.

Arguments
-----------
obj:TopologicMolecularContainer
    input 

indices:Tuple 
    indices

solution:TopologicMolecularContainer
    answer key

msg="":AbstractString
    optional test message
"""
function test_obtain_member_using_tuple_index(
    obj::TopologicMolecularContainer,
    indices::Tuple,
    solution::TopologicMolecularContainer,
    msg::AbstractString="")

    println("--------------------------------")
    print_with_color(:blue, "Test obtain_member_using_tuple_index()\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = obtain_member(obj,indices)

    @test answer == solution

    print_with_color(:green, "VERIFIED! obtain_member_using_tuple_index()\n\n")
    println("--------------------------------")

    return true 
end

include("unit_tests_obtain_member_using_tuple_index.jl")
