"""
A test for the comparison operator "==" between 
two objects of type TopologicChain.

Arguments
----------
obj1:TopologicChain
    An instance of type TopologicChain.

obj2:TopologicChain
    Another instance of type TopologicChain.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_TopologicChain(
    obj1::TopologicChain,
    obj2::TopologicChain,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type TopologicChain\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type TopologicChain\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_tests_comparison.jl")