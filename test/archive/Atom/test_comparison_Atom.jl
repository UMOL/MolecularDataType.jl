"""
A test for the comparison operator "==" between 
two objects of type Atom.

Arguments
----------
obj1:Atom
    An instance of type Atom.

obj2:Atom
    Another instance of type Atom.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_Atom(
    obj1::Atom,
    obj2::Atom,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type Atom\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type Atom\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_comparison_Atom_index.jl")