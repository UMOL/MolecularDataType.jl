"""
Clone ``AbstractMolecularContainer`` objects in batch.

Arguments
----------
obj:AbstractMolecularContainer
    input 

fn_array:Array{Function,1}
    an array of functions that will transform the identifiers at each level

count:Integer
    number of clones
"""
function clone(obj::AbstractMolecularContainer, fn_array::Array{Function,1}, count::Integer)
    function recursive_clone(obj::AbstractMolecularContainer, fn_array::Array{Function,1}, count::Integer, accumulator::Array)
        if count < 1
            return []
        elseif count == 1
            return vcat(accumulator, clone(obj, fn_array))
        else
            new_clone = clone(obj, fn_array)
            return recursive_clone(new_clone, fn_array, count - 1, vcat(accumulator, new_clone))
        end
    end

    return recursive_clone(obj, fn_array, count, [])
end
