"""
A test for find_atoms_by_field()

Arguments
----------
atoms:Array{Atom,1}
    an array of atoms

field:Symbol 
    field name

answer_key:Dict{Symbol, Array{Atom,1}}
    answer key

msg=""::AbstractString
    optional test message 
"""
function test_find_atoms_by_field(
    atoms::Array{Atom,1},
    field::Symbol,
    answer_key::Dict{Symbol,Array{Atom,1}},
    msg::AbstractString="")

    println("----------------------------------------")
    print_with_color(:blue, "Test find_atoms_by_field()\n\n")

    if msg != ""
        print_with_color(:blue, "$(msg)\n")
    end

    answer = find_atoms_by_field(atoms, field)

    for k in keys(answer)
        for i = 1:length(answer[k])
            @test answer[k][i] == answer_key[k][i]
        end
    end


    println("----------------------------------------")
    print_with_color(:green, "VERIFIED! find_atoms_by_field()")

    return true
end

include("unit_test_1_find_atoms_by_segment.jl")
include("unit_test_2_find_atoms_by_segment.jl")
include("unit_test_3_find_atoms_by_segment.jl")

include("unit_test_1_find_atoms_by_residue.jl")
include("unit_test_2_find_atoms_by_residue.jl")
include("unit_test_3_find_atoms_by_residue.jl")
