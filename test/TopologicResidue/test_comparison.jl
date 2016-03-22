"""
A test for the comparison operator "==" between 
two objects of type TopologicResidue.

Arguments
----------
obj1:TopologicResidue
    An instance of type TopologicResidue.

obj2:TopologicResidue
    Another instance of type TopologicResidue.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_TopologicResidue(
    obj1::TopologicResidue,
    obj2::TopologicResidue,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type TopologicResidue\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type TopologicResidue\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_comparison_atoms.jl")