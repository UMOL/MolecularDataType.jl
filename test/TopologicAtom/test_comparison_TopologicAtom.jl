"""
A test for the comparison operator "==" between 
two objects of type TopologicAtom.

Arguments
----------
obj1:TopologicAtom
    An instance of type TopologicAtom.

obj2:TopologicAtom
    Another instance of type TopologicAtom.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_TopologicAtom(
    obj1::TopologicAtom,
    obj2::TopologicAtom,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type TopologicAtom\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type TopologicAtom\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_comparison_TopologicAtom_index.jl")