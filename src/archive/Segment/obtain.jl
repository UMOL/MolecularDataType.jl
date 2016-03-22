"""
A getter function for objects of type Segment

Arguments
----------
obj:Segment
    an Segment object 

field:Symbol
    the requested field name
"""
function obtain(obj::Segment, field::Symbol)
    if field in fieldnames(obj)
        return getfield(obj, field)
    else
        print_with_color(:red, "ERROR HINT: obtain() cannot find the requested field \"$(field)\"\n\n")
        return false
    end
end