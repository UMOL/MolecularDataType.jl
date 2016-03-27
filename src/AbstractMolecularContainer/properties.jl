"""
Return an array of tuples of property-value pairs
for objects of type ``AbstractMolecularContainer`` which
can be used to create new ``AbstractMolecularContainer`` objects.

Arguments
------------
obj:AbstractMolecularContainer
    input

include_members=false::Bool 
    keyword argument to determine whether to include the :members property in the output
"""
function properties(obj::AbstractMolecularContainer; include_members::Bool=true)
    all_properties = [(field, obtain(obj, field)) for field in features(obj)]
    if include_members 
        return all_properties
    else 
        return filter((a)->a[1] != :members, all_properties)
    end
end
