"""
A getter function for objects of type ``TopologicAtom``.
It also provides information not physically stored in the ``TopologicAtom`` object
by standardized by the design of ``TopologicAtom``.

Arguments
----------
obj:TopologicAtom
    a TopologicAtom object 

field:Symbol
    the requested field name
"""
function obtain(obj::TopologicAtom, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :atom_name
        return obtain(obj._container, :name)

    elseif field == :identifier 
        return []

    elseif field == :member_count_tree
        return obtain(obj._container, :member_count_tree, 1)
        
    else
        return obtain(obj._container, field, args...)
    end
end