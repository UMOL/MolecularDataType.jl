"""
A test for properties() for ``TopologicMolecularSystem``. 

Arguments
----------
obj:TopologicMolecularSystem
    input 

include_members:Bool
    whether to include the members of TopologicMolecularSystem

solution:Array
    answer key
"""
function test_properties(obj::TopologicMolecularSystem, include_members::Bool, solution::Array)
    println("---------------------------------------------")
    print_with_color(:blue, "Test properties() on TopologicMolecularSystem\n\n")

    answer = properties(obj, include_members=include_members)

    @test answer == solution

    print_with_color(:green, "VERIFIED! properties()\n\n")
    println("---------------------------------------------")

    return true
end

include("unit_tests_properties.jl")