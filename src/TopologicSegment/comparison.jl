import Base.==

"""
Define the meaning of "==" operator for type TopologicSegment 

Arguments 
----------
obj1:TopologicSegment 
    An instance of type TopologicSegment.

obj2:TopologicSegment 
    Another instance of type TopologicSegment.
"""
function ==(obj1::TopologicSegment, obj2::TopologicSegment)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end

    end
    
    return true
end
