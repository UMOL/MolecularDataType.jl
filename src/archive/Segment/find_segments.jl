"""
Find all the segments within an array
of Atom objects
and return a dictionary of mapping between
segment name and an array of Atom objects.

Arguments
----------
atoms:Array{Atom,1}
    array of atoms
"""
function find_segments(atoms::Array{Atom,1})
    output = Dict{Symbol,Array{Atom,1}}()
    for atom in atoms
        segment_name = obtain(atom, :segment)
        dict_key = Symbol(segment_name)
        if !haskey(output, dict_key)
            output[dict_key] = [atom]
        else
            push!(output[dict_key], atom)
        end
    end
    return output
end
