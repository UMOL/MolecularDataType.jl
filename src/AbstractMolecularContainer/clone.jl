"""
Make a deep copy of the source ``AbstractMolecularContainer`` object
with the option to change the identifiers.
The argument ``fn_array`` should have the same length as the 
number of hierarchical levels of the input container object.

Arguments
--------------
obj:AbstractMolecularContainer
    input 

fn_array:Array{Function,1}
    an array of functions that will transform the identifiers at each level
"""
function clone(obj::AbstractMolecularContainer, fn_array::Array{Function,1})
    if length(fn_array) == 0
        args = deepcopy(properties(obj; include_members=false))
    else
        transform = fn_array[1]
        args = transform(deepcopy(properties(obj; include_members=false)))
    end

    # update fn_array for transforming its members
    if length(fn_array) < 2
        fn_array = []
    else
        fn_array = fn_array[2:end]
    end

    input_data_type = typeof(obj)
    return input_data_type(;args..., (:members, [clone(item, fn_array) for item in obtain(obj, :members)]))
end