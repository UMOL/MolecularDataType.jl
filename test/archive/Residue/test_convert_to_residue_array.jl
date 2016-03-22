"""
A test for convert_to_residue_array(atom_dict, system_name).

Arguments
----------
atom_dict:Dict{Symbol, Array{Atom,1}}
    a dictionary of residues 

system_name:AbstractString
    name of molecular system 

solution:Array{Residue,1}
    answer key

msg=""::AbstractString
    optional test message
"""
function test_convert_to_residue_dict(
    atom_dict::Dict{Symbol, Array{Atom,1}},
    system_name::AbstractString,
    solution::Array{Residue,1},
    msg::AbstractString="")

    println("--------------------------------")
    print_with_color(:blue, "Test convert_to_residue_array(atom_dict, system_name)\n\n")
    if msg != ""
        print_with_color(:blue, "$(msg)\n\n")
    end
    
    answer = convert_to_residue_array(atom_dict; system=system_name)

    for i = 1:length(solution)
        @test answer[i] == solution[i]
    end

    println("--------------------------------")
    print_with_color(:blue, "VERIFIED! convert_to_residue_array(atom_dict, system_name)\n\n")

    return true
end

include("unit_test_1_convert_to_residue_array.jl")
# include("unit_test_2_convert_to_residue_array.jl")
