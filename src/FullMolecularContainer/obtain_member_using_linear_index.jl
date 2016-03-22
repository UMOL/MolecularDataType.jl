"""
Return the ``n``th member of 
a ``FullMolecularContainer`` object using linear index.
The output is also a ``FullMolecularContainer`` object.

Arguments
----------
obj:FullMolecularContainer
    input 

output_data_type:DataType
    the data type of the requested member

count_tree::MemberCount 
    member count tree 

index:Integer
    linear index 
"""
function obtain_member(obj::FullMolecularContainer, output_data_type::DataType, count_tree::MemberCount, index::Integer)
    return obtain_member(obj, output_data_type, count_tree, tuple_index(count_tree, index))
end