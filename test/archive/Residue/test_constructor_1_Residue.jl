"""
A test for the constructor Residue(atoms, segment, system)

Arguments
----------
atoms:Array{Atom,1}
    an array of Atom objects

system:AbstractString
    name of molecular system where the Atom object is located

solution:Residue
    answer key 
"""
function test_constructor_1_Residue(
    atoms::Array{Atom,1},
    system::AbstractString,
    solution::Residue)

    println("------------------------------------")
    print_with_color(:blue, "Test constructor Residue(atoms; system=system)\n\n")

    answer = Residue(atoms; system=system)

    @test answer == solution 

    println("------------------------------------")
    print_with_color(:blue, "VERIFIED! Residue(atoms; system=system)\n\n")

    return true 
end 

include("unit_test_constructor_1_Residue.jl")