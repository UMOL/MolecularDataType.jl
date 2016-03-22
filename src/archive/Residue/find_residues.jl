"""
Find all the residues within an array of 
Atom objects
and return a dictionary of mapping between
segment name and an array of Atom objects.

Arguments
----------
atoms:Array{Atom,1}
    array of atoms
"""
function find_residues(atoms::Array{Atom,1})
    output = Dict{UInt,Array{Atom,1}}()
    for atom in atoms
        residue_id = obtain(atom, :residue_id)
        dict_key = residue_id
        if !haskey(output, dict_key)
            output[dict_key] = [atom]
        else
            push!(output[dict_key], atom)
        end
    end
    return output
end
