"""
A getter function for objects of type TopologicResidue

Arguments
----------
obj:TopologicResidue
    an TopologicResidue object 

field:Symbol
    the requested field name
"""
function obtain(obj::TopologicResidue, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :atoms
        return obtain(obj._container, :members)

    elseif field == :atom_count
        return obtain(obj._container, :member_count, 1)

    elseif field == :residue_name
        return obtain(obj._container, :name)

    elseif field == :residue_id
        return obj.id

    elseif field == :identifier
        return [(:residue_id, obtain(obj, :residue_id)), (:residue_name, obtain(obj, :residue_name))]

    else
        return obtain(obj._container, field, args...)
    end
end