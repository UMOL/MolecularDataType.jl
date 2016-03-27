"""
A getter function for objects of type ``CrystalSymmetry``.

Arguments
----------
obj:CrystalSymmetry
    an CrystalSymmetry object 

field:Symbol
    the requested field name
"""
function obtain(obj::CrystalSymmetry, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)
    else
        @debug print_with_color(:red, "ERROR HINT: field :$(field) not found in obtain() for CrystalSymmetry\n\n")
        return nothing
    end
end