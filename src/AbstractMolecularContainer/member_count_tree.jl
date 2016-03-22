"""
Build a member-count tree using ``MemberCount`` objects.
This is need for converting a linear index to a tuple index.
The hierarchy of the tree structure is contained in the output
``MemberCount`` object.

Arguments
-------------
container:AbstractMolecularContainer
    input container

tree_height:Integer 
    height of the member-count tree 
"""
function member_count_tree(container::AbstractMolecularContainer, tree_height::Integer)
    members = obtain(container, :members)
    if length(members) == 0 || tree_height == 0
        return MemberCount(1)
    else
        return MemberCount([member_count_tree(item, tree_height - 1) for item in members])
    end
end
