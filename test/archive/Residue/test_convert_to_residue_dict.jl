"""
A test for convert_to_residue_dict(atom_dict, system_name).

Arguments
----------
atom_dict:Dict{Symbol, Array{Atom,1}}
    a dictionary of residues 

system_name:AbstractString
    name of molecular system 

solution:Dict{Symbol,Residue}
    answer key

msg=""::AbstractString
    optional test message
"""
function test_convert_to_residue_dict(
    atom_dict::Dict{Symbol, Array{Atom,1}},
    system_name::AbstractString,
    solution::Dict{Symbol,Residue},
    msg::AbstractString="")

    println("--------------------------------")
    print_with_color(:blue, "Test convert_to_residue_dict(atom_dict, system_name)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end
    
    answer = convert_to_residue_dict(atom_dict; system=system_name)

    @test answer == solution

    println("--------------------------------")
    print_with_color(:blue, "VERIFIED! convert_to_residue_dict(atom_dict, system_name)\n\n")

    return true
end

include("unit_test_1_convert_to_residue_dict.jl")
# include("unit_test_2_convert_to_residue_dict.jl")
