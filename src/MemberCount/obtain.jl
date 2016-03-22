"""
A getter function for objects of type ``MemberCount``.

Arguments
----------
obj:MemberCount
    an MemberCount object 

field:Symbol
    the requested field name
"""
function obtain(obj::MemberCount, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)
    elseif field == :children
        return obj._children
    else 
        print_with_color(:red, "ERROR HINT: MemberCount object has no field \":$(field)\"\n\n")
        return nothing
    end
end