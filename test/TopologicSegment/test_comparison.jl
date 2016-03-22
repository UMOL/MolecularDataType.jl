"""
A test for the comparison operator "==" between 
two objects of type TopologicSegment.

Arguments
----------
obj1:TopologicSegment
    An instance of type TopologicSegment.

obj2:TopologicSegment
    Another instance of type TopologicSegment.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_TopologicSegment(
    obj1::TopologicSegment,
    obj2::TopologicSegment,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type TopologicSegment\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type TopologicSegment\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_comparison.jl")