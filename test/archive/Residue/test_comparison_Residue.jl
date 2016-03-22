"""
A test for the comparison operator "==" between 
two objects of type Residue.

Arguments
----------
obj1:Residue
    An instance of type Residue.

obj2:Residue
    Another instance of type Residue.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_Residue(
    obj1::Residue,
    obj2::Residue,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type Residue\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type Residue\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_comparison_Residue_atoms.jl")