import Base.==

"""
Define the meaning of "==" operator for type FullMolecularContainerIterator 

Arguments 
----------
obj1:FullMolecularContainerIterator 
    An instance of type FullMolecularContainerIterator.

obj2:FullMolecularContainerIterator 
    Another instance of type FullMolecularContainerIterator.
"""
function ==(obj1::FullMolecularContainerIterator, obj2::FullMolecularContainerIterator)
    for field in fieldnames(obj1)
        value1 = getfield(obj1, field)
        value2 = getfield(obj2, field)

        if value1 != value2
            return false
        end

    end
    return true
end
