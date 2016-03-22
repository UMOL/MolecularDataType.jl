import Base.==

"""
Define the meaning of "==" operator for type TopologicMolecularSystem 

Arguments 
----------
obj1:TopologicMolecularSystem 
    An instance of type TopologicMolecularSystem.

obj2:TopologicMolecularSystem 
    Another instance of type TopologicMolecularSystem.
"""
function ==(obj1::TopologicMolecularSystem, obj2::TopologicMolecularSystem)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if field == :segments && !same_MolecularSystem_segments(value1,value2)
            return false

        else
            if value1 != value2
                return false
            end

        end
    end
    return true
end
