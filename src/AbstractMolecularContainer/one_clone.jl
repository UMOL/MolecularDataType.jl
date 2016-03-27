"""
Return a single copy of the original object
with optional modification of certain properties.

Arguments
----------
obj:AbstractMolecularContainer
    template object

new_property_dict=Dict():Dict{Symbol, Any}
    (optional) a dictionary of new properties 
"""
function one_clone(obj::AbstractMolecularContainer, new_property_dict::Dict=Dict())
    function transform(property_tuple::Tuple, new_property_dict::Dict)
        key = property_tuple[1]
        if haskey(new_property_dict, key)
            return (key, new_property_dict[key])
        else
            return property_tuple
        end
    end

    input_data_type = typeof(obj)

    return input_data_type(;[transform(item, new_property_dict) for item in deepcopy(properties(obj))]...)
end