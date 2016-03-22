"""
Return the hierarchical tuple-index from a
given linear-index input.

Arguments
----------
obj:MemberCount
    input object 

index:Integer
    linear index 
"""
function tuple_index(obj::MemberCount, index::Integer)

    function recursive_tuple_index(obj::MemberCount, index::Integer, index_accumulator::Tuple)
        children = obtain(obj, :children)
        if length(children) == 0
            return index_accumulator
        end

        for i = 1:length(children)
            count = obtain(children[i], :count)
            if  index <= count
                return recursive_tuple_index(children[i], index, tuple(index_accumulator..., i))
            else
                index = index - count 
            end 
        end
    end

    return recursive_tuple_index(obj, index, tuple())
end