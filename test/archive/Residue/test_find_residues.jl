"""
A test for find_residues().

Arguments
----------
atoms:Array{Atom,1}
    array of atoms

key:Dict{UInt,Array{Atom,1}}
    answer key

msg=""::AbstractString
    test message (optional)
"""
function test_find_residues(
    atoms::Array{Atom,1},
    key::Dict{UInt,Array{Atom,1}},
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test find_residues()\n\n")
    print_with_color(:blue, "$(msg)\n")

    answer = find_residues(atoms)

    @test same_dict_of_arrays(answer, key)

    print_with_color(:green, "\nVERIFIED! find_residues()\n")
    println("----------------------------------------\n\n")

    return true
end

include("unit_test1_find_residues.jl")
include("unit_test2_find_residues.jl")
include("unit_test3_find_residues.jl")
    