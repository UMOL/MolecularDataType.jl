"""
A getter function for objects of type TopologicChain

Arguments
----------
obj:TopologicChain
    an TopologicChain object 

field:Symbol
    the requested field name
"""
function obtain(obj::TopologicChain, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :chain_name
        return obtain(obj._container, :name)

    elseif field == :segments
        return obtain(obj._container, :members)

    elseif field == :segment_count
        return obtain(obj._container, :member_count, 1)

    elseif field == :residue_count
        return obtain(obj._container, :member_count, 2)

    elseif field == :atom_count
        return obtain(obj._container, :member_count, 3)

    elseif field == :identifier 
        return [(:chain_name, obtain(obj._container, :name))]

    else
        return obtain(obj._container, field, args...)
    end
end