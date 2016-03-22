"""
A test for the constructor Segment(residues, segment, system)

Arguments
----------
residues:Array{Residue,1}
    an array of Residue objects

system:AbstractString
    name of molecular system where the Residue object is located

solution:Segment
    answer key 
"""
function test_constructor_1_Segment(
    residues::Array{Residue,1},
    system::AbstractString,
    solution::Segment)

    println("------------------------------------")
    print_with_color(:blue, "Test constructor Segment(residues; system=system)\n\n")

    answer = Segment(residues; system=system)

    @test answer == solution 

    println("------------------------------------")
    print_with_color(:blue, "VERIFIED! Segment(residues; system=system)\n\n")

    return true 
end 

include("unit_test_constructor_1_Segment.jl")