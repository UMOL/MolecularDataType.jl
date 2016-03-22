"""
Constructor for type ``FullMolecularContainerIterator``.

Arguments
-----------
data_type:DataType
    output data type

count_tree:MemberCount 
    member-count tree 

molecule:FullMolecularContainer
    an object belonging to one of the subtypes of ``FullMolecularContainer``
"""
function FullMolecularContainerIterator(data_type::DataType, count_tree::MemberCount, molecule::FullMolecularContainer)
    return FullMolecularContainerIterator(data_type, obtain(count_tree, :count), count_tree, [molecule])
end

