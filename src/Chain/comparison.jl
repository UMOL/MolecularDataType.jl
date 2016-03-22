import Base.==

"""
Define the meaning of "==" operator for type Chain 

Arguments 
----------
obj1:Chain 
    An instance of type Chain.

obj2:Chain 
    Another instance of type Chain.
"""
function ==(obj1::Chain, obj2::Chain)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end

    end
    
    return true
end
