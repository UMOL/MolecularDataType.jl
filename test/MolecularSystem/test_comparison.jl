"""
A test for the comparison operator "==" between 
two objects of type MolecularSystem.

Arguments
----------
obj1:MolecularSystem
    An instance of type MolecularSystem.

obj2:MolecularSystem
    Another instance of type MolecularSystem.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_MolecularSystem(
    obj1::MolecularSystem,
    obj2::MolecularSystem,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type MolecularSystem\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type MolecularSystem\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_comparison_MolecularSystem_segments.jl")