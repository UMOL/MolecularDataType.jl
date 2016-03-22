import Base.==

"""
Define the meaning of "==" operator for type TopologicResidue 

Arguments 
----------
obj1:TopologicResidue 
    An instance of type TopologicResidue.

obj2:TopologicResidue 
    Another instance of type TopologicResidue.
"""
function ==(obj1::TopologicResidue, obj2::TopologicResidue)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end
    end
    return true
end
