"""
A test for properties() for ``TopologicAtom``. 

Arguments
----------
obj:TopologicAtom
    input 

include_members:Bool
    whether to include the members of TopologicAtom

solution:Array
    answer key
"""
function test_properties(obj::TopologicAtom, include_members::Bool, solution::Array)
    println("---------------------------------------------")
    print_with_color(:blue, "Test properties() on TopologicAtom\n\n")

    answer = properties(obj, include_members=include_members)

    @test answer == solution

    print_with_color(:green, "VERIFIED! properties()\n\n")
    println("---------------------------------------------")

    return true
end

include("unit_tests_properties.jl")