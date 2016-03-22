"""
Return the ``n``th member of 
a ``FullMolecularContainer`` object using tuple-index.
The output is also a ``FullMolecularContainer`` object.

Arguments
----------
obj:FullMolecularContainer
    input 

output_data_type:DataType
    the data type of the requested member

count_tree::MemberCount
    member count tree 

indexes:Tuple
    tuple indexes 
"""
function obtain_member(obj::FullMolecularContainer, output_data_type::DataType, count_tree::MemberCount, indexes::Tuple)
    index = linear_index(count_tree, indexes)
    if index < 1 || index > obtain(count_tree, :count)
        return output_data_type()
    end
    return output_data_type(;index=index,
        topology=obtain_member(obtain(obj, :topology), indexes),
        coordinate=obtain(obj, :coordinate)[index],
        obtain_identifier(obtain(obj, :topology), indexes)...)
end