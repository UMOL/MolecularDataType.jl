"""
Test obtain_identifier() using 
tuple index for ``TopologicMolecularSystem`` object.

Arguments
---------------
obj:TopologicMolecularSystem
    input 

indices:Tuple
    input indices

solution:Array
    answer key

msg="":AbstractString
    optional test message
"""
function test_obtain_identifier_MolecularSystem(obj::TopologicMolecularSystem,
    indices::Tuple, solution::Array, msg::AbstractString="")
    println("------------------------------------")
    print_with_color(:blue, "Test obtain_identifier(obj::TopologicMolecularSystem, indices) using tuple index\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end

    answer = obtain_identifier(obj,indices)

    @test answer == solution

    print_with_color(:green, "VERIFIED! obtain_identifier(obj::TopologicMolecularSystem, indices) using tuple index\n\n")
    println("------------------------------------")

    return true
end

include("unit_tests_obtain_identifier_using_tuple_index.jl")