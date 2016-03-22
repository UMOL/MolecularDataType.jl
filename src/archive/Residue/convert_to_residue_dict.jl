"""
Convert a dictionary of type ``Dict{Symbol, Array{Atom,1}}``
that 
maps residue_id to an array of atoms belonging to the residue,
to a new dictionary of type ``Dict{Symbol, Residue}`` that
maps a residue_id to a Residue object.

Arguments
----------
atom_dict::Dict{Symbol,Array{Atom,1}}
    a dictionary that maps residue index (e.g., Symbol("1")) to a Atom object array 

system=""::AbstractString
    name of the molecular system where these residues are located 
"""
function convert_to_residue_dict(
    atom_dict::Dict{Symbol, Array{Atom,1}};
    system::AbstractString="")

    return Dict(
        map( (args)-> ( args[1], Residue(args[2]; system=args[3]) ), 
            [(k, atom_dict[k], system) for k in keys(atom_dict)]
        )
    )
end
