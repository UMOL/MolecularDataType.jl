"""
A test for the comparison operator "==" between 
two objects of type TopologicMolecularContainer.

Arguments
----------
obj1:TopologicMolecularContainer
    An instance of type TopologicMolecularContainer.

obj2:TopologicMolecularContainer
    Another instance of type TopologicMolecularContainer.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_TopologicMolecularContainer(
    obj1::TopologicMolecularContainer,
    obj2::TopologicMolecularContainer,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type TopologicMolecularContainer\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type TopologicMolecularContainer\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_comparison_members.jl")