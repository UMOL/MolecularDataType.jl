"""
A test for the comparison operator "==" between 
two objects of type TopologicMolecularSystem.

Arguments
----------
obj1:TopologicMolecularSystem
    An instance of type TopologicMolecularSystem.

obj2:TopologicMolecularSystem
    Another instance of type TopologicMolecularSystem.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_TopologicMolecularSystem(
    obj1::TopologicMolecularSystem,
    obj2::TopologicMolecularSystem,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type TopologicMolecularSystem\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type TopologicMolecularSystem\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_tests_comparison.jl")