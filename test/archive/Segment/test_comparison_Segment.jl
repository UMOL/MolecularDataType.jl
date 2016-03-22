"""
A test for the comparison operator "==" between 
two objects of type Segment.

Arguments
----------
obj1:Segment
    An instance of type Segment.

obj2:Segment
    Another instance of type Segment.

key:Bool
    The answer key.

msg:AbstractString
    optional message to identify the nature of the test 
"""
function test_comparison_Segment(
    obj1::Segment,
    obj2::Segment,
    key::Bool,
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test ==() for type Segment\n\n")

    if msg != ""
        print_with_color(:blue, msg)
    end

    answer = (obj1 == obj2) 

    @test answer == key 

    print_with_color(:green, "\nVERIFIED! ==() for type Segment\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test_comparison_Segment_residues.jl")