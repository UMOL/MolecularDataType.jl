include("obtain_coordinate.jl")

"""
A getter function for objects of type Residue

Arguments
----------
obj:Residue
    an Residue object 

field:Symbol
    the requested field name
"""
function obtain(obj::Residue, field::Symbol)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :atoms
        return getfield(obj, :_atoms)

    elseif field == :atom_count
        return size(getfield(obj, :_coordinate))[1]

    elseif field == :coordinate
        return obtain_coordinate(obj)

    else
        print_with_color(:red, "ERROR HINT: obtain() cannot find the requested field \"$(field)\"\n\n")
        return false
    end
end