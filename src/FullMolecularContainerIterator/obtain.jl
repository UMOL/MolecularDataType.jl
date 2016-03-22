"""
A getter function for type ``FullMolecularContainerIterator``.
See the definition of ``FullMolecularContainerIterator`` for 
available fields.

Arguments
----------
obj:FullMolecularContainerIterator
    input 

field:Symbol 
    target field name 
"""
function obtain(obj::FullMolecularContainerIterator, field::Symbol)
    if field in fieldnames(obj)
        return getfield(obj, field)
    elseif field == :molecule
        return obj._molecule[1]
    end
end

