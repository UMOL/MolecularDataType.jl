import Base.==

"""
Define the meaning of "==" operator for type TopologicMolecularContainer 

Arguments 
----------
obj1:TopologicMolecularContainer 
    An instance of type TopologicMolecularContainer.

obj2:TopologicMolecularContainer 
    Another instance of type TopologicMolecularContainer.
"""
function ==(obj1::TopologicMolecularContainer, obj2::TopologicMolecularContainer)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end

    end
    
    return true
end
