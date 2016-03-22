"""
A getter function for objects of type Residue

Arguments
----------
obj:Residue
    an Residue object 

field:Symbol
    the requested field name
"""
function obtain(obj::Residue, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :atoms
        return obtain(obj._topology, :members)

    elseif field == :atom_count
        return obtain(obj._topology, :member_count, 1)

    elseif field == :coordinate
        return obj._coordinate

    elseif field == :topology 
        return obj._topology
        
    else
        return obtain(obj._topology, field, args...)
    end
end