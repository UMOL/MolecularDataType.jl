import Base.==

"""
Define the meaning of "==" operator for type ``MemberCount`` 

Arguments 
----------
obj1:MemberCount 
    An instance of type MemberCount.

obj2:MemberCount 
    Another instance of type MemberCount.
"""
function ==(obj1::MemberCount, obj2::MemberCount)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end

    end
    return true
end
