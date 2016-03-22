import Base.==

"""
Define the meaning of "==" operator for type TopologicChain 

Arguments 
----------
obj1:TopologicChain 
    An instance of type TopologicChain.

obj2:TopologicChain 
    Another instance of type TopologicChain.
"""
function ==(obj1::TopologicChain, obj2::TopologicChain)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end

    end
    
    return true
end
