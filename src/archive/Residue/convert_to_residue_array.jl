"""
Convert a dictionary of type ``Dict{Symbol, Array{Atom,1}}`` 
that 
maps residue_id to an array of atoms belonging to the residue,
to a residue array type ``Array{Residue,1}``.
Example: convert ``Dict(Symbol("1")=>[atom1, atom2])``
to ``[residue1]``.

Arguments
----------
atom_dict::Dict{Symbol,Array{Atom,1}}
    a dictionary that maps residue index (e.g., Symbol("1")) to a Atom object array 

system=""::AbstractString
    name of the molecular system where these residues are located 
"""
function convert_to_residue_array(
    atom_dict::Dict{Symbol, Array{Atom,1}};
    system::AbstractString="")

    return map( (args)-> Residue(args[1]; system=args[2]), 
        [(atom_dict[k], system) for k in keys(atom_dict)]
    )
end
