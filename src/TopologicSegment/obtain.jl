"""
A getter function for objects of type TopologicSegment

Arguments
----------
obj:TopologicSegment
    an TopologicSegment object 

field:Symbol
    the requested field name
"""
function obtain(obj::TopologicSegment, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :residues
        return obtain(obj._container, :members)

    elseif field == :residue_count
        return obtain(obj._container, :member_count, 1)

    elseif field == :atom_count
        return obtain(obj._container, :member_count, 2)

    elseif field == :segment_name
        return obtain(obj._container, :name)

    elseif field == :identifier 
        return return [(:segment_name, obtain(obj, :name))]

    else
        return obtain(obj._container, field, args...)
    end
end