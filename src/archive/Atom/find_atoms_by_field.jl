"""
Find all the Atom objects belonging to each field
and return a tuple of tuples, ((:field_name, (atom1, ...)),...)

Arguments
----------
atoms:Array{Atom,1}
    an array of Atom objects
"""
function find_atoms_by_field(atoms::Array{Atom,1}, field::Symbol)
    output = Dict{Symbol, Array{Atom,1}}()

    for atom in atoms
        #= developer's note:
            use the value of the requested field to distinguish 
            different atoms, e.g., atom index
        =#
        key = Symbol(string(obtain(atom, field)))

        if key in keys(output)
            push!(output[key], atom)
        else
            output[key] = [atom]
        end

    end
    
    return output
end