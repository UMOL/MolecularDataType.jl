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
function obtain(obj::TopologicAtom, field::Symbol)
    if field in fieldnames(obj)
        return getfield(obj, field)
    else
        print_with_color(:red, "ERROR HINT: obtain() cannot find the requested field \"$(field)\"\n\n")
        return false
    end
end