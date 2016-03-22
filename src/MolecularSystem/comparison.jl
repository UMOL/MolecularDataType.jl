import Base.==

"""
Define the meaning of "==" operator for type ``MolecularSystem``. 

Arguments 
----------
obj1:MolecularSystem 
    An instance of type MolecularSystem.

obj2:MolecularSystem 
    Another instance of type MolecularSystem.
"""
function ==(obj1::MolecularSystem, obj2::MolecularSystem)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end

    end
    return true
end
