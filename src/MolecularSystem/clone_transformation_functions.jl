"""
Create and array of clone transformation functions to be 
used by ``clone()``.

Arguments
----------
fn_residue_id:Function 
    a function to transform residue ID 
"""
function clone_transformation_functions(fn_residue_id::Function)
    identity = (property_array::Array)->property_array
    function transform_residue(property_array::Array)
        for i = 1:length(property_array)
            # example property_array [(:residue_id, 1)]
            if property_array[i][1] == :residue_id
                property_array[i] = (:residue_id, fn_residue_id(property_array[i][2]))
            end
        end
        return property_array
    end

    return [identity, identity, identity, transform_residue, identity]
end
