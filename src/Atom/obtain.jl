"""
A getter function for objects of type ``Atom``.
It also provides information not physically stored in the ``Atom`` object
by standardized by the design of ``Atom``.

Arguments
----------
obj:Atom
    a Atom object 

field:Symbol
    the requested field name
"""
function obtain(obj::Atom, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)
        
    elseif field == :coordinate
        return obj._coordinate

    else
        return obtain(obj.topology, field, args...)
    end
end
