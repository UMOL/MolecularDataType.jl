"""
A getter function for objects of type ``Atom``.
It also provides information not physically stored in the ``Atom`` object
by standardized by the design of ``Atom``.

Arguments
----------
obj:Atom
    an Atom object 

field:Symbol
    the requested field name
"""
function obtain(obj::Atom, field::Symbol)
    if field == :coordinate
        return getfield(obj, :_coordinate)

    elseif field == :coordinate_data_type
        return AbstractFloat

    elseif field == :dimension_count
        return 3

    elseif field == :topology 
        return getfield(obj, :_topology)

    else
        return obtain(obj._topology, field)
    end
end
