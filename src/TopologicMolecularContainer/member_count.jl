"""
Recursively count the total number of members 
contained by **AbstractMolecularContainer** objects
at a user specified hierarchy level.

Arguments
----------
obj:AbstractMolecularContainer
    target container object 

which_level:Integer
    which hierarchy level 
"""
function member_count(obj::AbstractMolecularContainer, which_level::Integer)
    members = obtain(obj, :members)
    if which_level == 1
        return length(members)

    elseif which_level > 1
        if length(members) == 0
            return 0
        else 
            return sum([member_count(item, which_level-1) for item in members])
        end
        
    else 
        return 0
    end
end