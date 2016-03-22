"""
A test for the comparison operator "==" between 
two objects of type Chain.

Arguments
----------
obj1:Chain
    An instance of type Chain.

obj2:Chain
    Another instance of type Chain.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_Chain(
    obj1::Chain,
    obj2::Chain,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type Chain\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type Chain\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_tests_comparison.jl")