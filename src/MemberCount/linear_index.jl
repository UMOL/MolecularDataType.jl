"""
Return a linear-index based on a
tuple-index for the input 
``MemberCount`` object.

Arguments
------------
obj::MemberCount
    input 

indexes::Tuple 
    tuple-index 
"""
function linear_index(obj::MemberCount, indexes::Tuple)
    function recursive_linear_index(obj::MemberCount, indexes::Tuple, index::Integer)
        children = obtain(obj, :children)
        if length(indexes) == 0 || length(children) == 0
            return 0

        elseif length(indexes) == 1
            for i = 1 : indexes[1]
                index = index + obtain(children[i], :count)
            end 
            return index 

        else
            for i = 1 : (indexes[1]-1)
                index = index + obtain(children[i], :count)
            end
            return recursive_linear_index(children[indexes[1]], indexes[2:end], index)

        end
    end
    return recursive_linear_index(obj, indexes, 0)
end